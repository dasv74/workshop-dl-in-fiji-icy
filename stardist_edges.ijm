name = "test-sparse-image";
run("Close All");


open("data/nuclei-lhorane/" + name + ".tif");
rename("input");

n = nImages;
run("DeepImageJ StarDist", "model=[StarDist Fluorescence Nuclei Segmentation] prob_thresh=[0.479] min_percentile=[1.0] max_percentile=[99.8]");
while (nImages == n) wait(100);


run("Duplicate...", "title=output");
/** Workaround bug of axis orientation **/
run("Rotate 90 Degrees Right");
run("Flip Horizontally");

run("Find Edges");
setThreshold(1.0000, 1000000000000000000000000000000.0000);
selectImage("input");
run("Add Image...", "image=output x=0 y=0 opacity=70 zero");
selectImage("output");
close;
selectImage("input_mask.tif");
close;
rename(name);
