# breyn
An aestetic outcome showed up during my neuroimage processing in R exercises.

Source nifti file from ["Introduction to Neurohacking In R" course](https://www.coursera.org/learn/neurohacking). Source mask files are created with [FSLeyes software](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FSLeyes). Gif is created with "convert" command line tool from [image magic](http://www.imagemagick.org/script/convert.php). For lovely colors [wesanderson color palettes](https://github.com/karthik/wesanderson) are used. 

Running main.r file will result a set of .png files and an output gif at export directory.

Nifti files are created from Dicom files coming from MRI.

<img src="https://user-images.githubusercontent.com/3127881/80032597-13f60b80-84f4-11ea-8d13-0eff5b42523e.png" alt="alt text" width="300">

Masks are created manually with FSLeyes on example nifti file.

<img src="https://user-images.githubusercontent.com/3127881/80032175-77336e00-84f3-11ea-926f-7cd764b83fbb.png" alt="alt text" width="500">

Then those binary mask files are multiplied with real images with same Voxel locations.

<img src="https://user-images.githubusercontent.com/3127881/80033294-2290f280-84f5-11ea-8151-880369309a55.png" alt="alt text" width="300">

With all masks are colored, the result is:

![output](https://user-images.githubusercontent.com/3127881/80033484-7dc2e500-84f5-11ea-910c-ecb360ccaf6e.gif)
