library(devtools)
library(oro.nifti)
library(oro.dicom)
mrdir <- "./data/"
brainImage <- readNIfTI(file.path(mrdir,"SUBJ0001-01-MPRAGE.nii.gz"),reorient = FALSE)
mask1 <- readNIfTI(file.path(mrdir,"SUBJ0001-01-MPRAGE_mask_1.nii.gz"),reorient = FALSE)
mask2 <- readNIfTI(file.path(mrdir,"SUBJ0001-01-MPRAGE_mask_2.nii.gz"),reorient = FALSE)
mask3 <- readNIfTI(file.path(mrdir,"SUBJ0001-01-MPRAGE_mask_3.nii.gz"),reorient = FALSE)

masked1 <- brainImage*mask1
masked2 <- brainImage*mask2
masked3 <- brainImage*mask3

col1 = wes_palette( name="IsleofDogs2",50, type = "continuous")
bg1 = "#ead3bfff"
coord1 = c(83,49,135)

col2 = wes_palette( name="GrandBudapest2",50, type = "continuous")
bg2 = "#e6a0c4ff"
coord2 = c(83,121,136)

col3 = wes_palette( name="Moonrise3",50, type = "continuous")
bg3 = "#87d3e2ff"
coord3 = c(83,195,137)

screenList <- list(brainImage,mask1,masked1,brainImage,mask2,masked2,brainImage,mask3,masked3)
colorList <- list(col1,col2,col3)
bgList <- list(bg1,bg2,bg3)
coordList <- list(coord1,coord2,coord3)

for (screenNum in 1:9){
  png(sprintf("./exports/screen%s.png", screenNum))
  orthographic(screenList[[screenNum]], xyz=coordList[[ceiling((screenNum)/3)]], col = colorList[[ceiling((screenNum)/3)]],crosshairs = FALSE, bg = bgList[[ceiling((screenNum)/3)]])
  dev.off()
}
system("convert -delay 100 -loop 0 ./exports/screen*.png ./exports/output.gif")