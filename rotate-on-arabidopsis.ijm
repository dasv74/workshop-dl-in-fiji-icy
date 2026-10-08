run("32-bit");
rename("orig");
origID = getImageID();

outDir = "/Users/dsage/Desktop/ara/";

for (angle = 0; angle <= 359; angle+=1) {

	// rotated copy of the original, bicubic
	selectImage(origID);
	run("Duplicate...", "title=rot");
	run("Rotate... ", "angle=" + angle + " grid=1 interpolation=Bicubic");

	// run DeepImageJ and wait for its output window
	n = nImages;
	run("DeepImageJ Run", "model_path=[laid-back-lobster]");
	while (nImages == n) wait(100);
	selectImage(nImages);             // newest image = DeepImageJ output

	// rotate back, bicubic, in 32-bit
	run("32-bit");
	run("Rotate... ", "angle=" + (-angle) + " grid=1 interpolation=Bicubic");

	// convert and save
	run("8-bit");
	saveAs("PNG", outDir + "arabidopsis-" + angle + ".png");
	close();                          // close the saved output

	selectWindow("rot");
	close();                          // close the rotated input copy
}