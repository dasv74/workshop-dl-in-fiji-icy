<div align="right" style="margin:0px 0px 10px 0px"><img src="../assets/epfl-center-for-imaging.svg" alt="EPFL Center for Imaging" height="46"/></div>

<p align="left" style="clear:both; padding:2px; margin:0px; font-size:1.5em; font-weight:300; color:#f33; border-bottom:1px solid #CCC">WORKSHOP ON BIOIMAGE ANALYSIS</p>

# [Our Old Friends in the Age of AI](../)

**[Daniel Sage](mailto:daniel.sage@epfl.ch)**
[Center for Imaging](https://imaging.epfl.ch) and Biomedical Imaging Group
École Polytechnique Fédérale de Lausanne ([EPFL](https://imaging.epfl.ch/)), Switzerland<br/>
**Carlos García-López-de-Haro**
[Universidad Carlos III de Madrid](https://www.uc3m.es/), Spain
Bioimage Analysis Unit, [Institut Pasteur](https://research.pasteur.fr/en/team/bioimage-analysis/), France



<p align="right" style="text-align:right; padding:0.8px; margin:0px; font-size:0.8em; color:#888; border-top:1px solid #CCC">OCTOBER 2026 | SPAOM | VIC | SPAIN</p>


# Demonstration: Fine-tune a YOLO detector

This is an instructor-led demonstration rather than a required participant exercise.

## What we will show

1. Prepare a small annotated biological-image dataset, for example with [SAMJ](https://github.com/segment-anything-models-java/SAMJ-IJ).
2. Split images and labels into training and validation sets.
3. Start from a pretrained [YOLO](https://docs.ultralytics.com/) model.
4. Fine-tune the detector on the biological objects in the dataset.
5. Inspect predictions, false positives, and missed objects.
6. Discuss dataset size, annotation quality, overfitting, and responsible use of automated detection.

## Material

- `dataset/` — example images and labels will be added here.
- `notebooks/` — training notebook will be added here.
- `Demo-YOLO-fine-tuning.pdf` — demonstration notes will be added here.

The live demonstration may be shortened if training time or network conditions make it impractical. The emphasis is on the workflow and its limitations, not on producing a benchmark model during the 75-minute workshop.

## Reference

- I. Cunha *et al.*, “[Machine Learning in Microscopy — Insights, Opportunities and Challenges](https://doi.org/10.1242/jcs.262095),” *Journal of Cell Science* **137**, 2024.
