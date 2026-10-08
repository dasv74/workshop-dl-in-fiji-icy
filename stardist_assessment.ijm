name = "test-sparse";
run("Close All");
open("data/nuclei-lhorane/" + name + "-image.tif");
rename("input");

n = nImages;
run("DeepImageJ StarDist", "model=[StarDist Fluorescence Nuclei Segmentation] prob_thresh=[0.479] min_percentile=[1.0] max_percentile=[99.8]");
while (nImages == n) wait(100);


run("Duplicate...", "title=output");
/** Workaround bug of axis orientation **/
run("Rotate 90 Degrees Right");
run("Flip Horizontally");

setAutoThreshold("Default dark no-reset");
setThreshold(1.0000, 1000000000000000000000000000000.0000);
setOption("BlackBackground", false);
run("Convert to Mask");
run("Grays");


open("data/nuclei-lhorane/" + name + "-labels.tif");
rename("mask");
setAutoThreshold("Default dark no-reset");
setThreshold(1.0000, 1000000000000000000000000000000.0000);
setOption("BlackBackground", false);
run("Convert to Mask");
run("Grays");

run("Merge Channels...", "c1=output c2=mask create keep");

imageCalculator("AND create", "mask","output");
rename("intersection");
getStatistics(area, mean);
intersection = round(mean / 255 * getWidth() * getHeight());

imageCalculator("OR create", "mask","output");
rename("union");
getStatistics(area, mean);
union = round(mean /255 * getWidth() * getHeight());

iou = intersection / union;
print("Intersection (TP) " + intersection + " px");
print("Union: " + union + " px");
print("Global IoU = " + d2s(iou, 4));