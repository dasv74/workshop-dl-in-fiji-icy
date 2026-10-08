run("32-bit");
rename("res_500");
run("Duplicate...", " ");
rename("res_501");

for (i = 502; i <= 1000; i++) {
	selectWindow("res_" + (i-1));
	n = nImages;
	run("DeepImageJ Run", "model_path=[laid-back-lobster]");
	while (nImages == n) wait(100);   // wait until the output window appears
	selectImage(nImages);             // newest image = DeepImageJ output
	run("8-bit");
	saveAs("PNG", "/Users/dsage/Desktop/ara/arabidopsis-"+ i +".png");
	rename("res_" + i);
	selectWindow("res_" + (i-2));
	close;
}