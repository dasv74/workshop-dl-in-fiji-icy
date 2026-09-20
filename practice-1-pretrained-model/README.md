<div align="right" style="margin:0px 0px 10px 0px"><img src="../assets/epfl-center-for-imaging.svg" alt="EPFL Center for Imaging" height="46"/></div>

$\Large{\textsf{\textcolor{#f33}{WORKSHOP ON BIOIMAGE ANALYSIS}}}$

<hr>

# Our Old Friends in the Age of AI

**[Daniel Sage](mailto:daniel.sage@epfl.ch)**
[Center for Imaging](https://imaging.epfl.ch) and Biomedical Imaging Group
École Polytechnique Fédérale de Lausanne ([EPFL](https://imaging.epfl.ch/)), Switzerland<br/>
**[Carlos García-López-de-Haro](mailto:carlogar@ing.uc3m.es)**
[Universidad Carlos III de Madrid](https://www.uc3m.es/), Spain
Bioimage Analysis Unit, [Institut Pasteur](https://research.pasteur.fr/en/team/bioimage-analysis/), France



<hr>

<p align="right" style="text-align:right; padding:0.8px; margin:0px; font-size:0.8em; color:#888"><sub>OCTOBER 2026 | SPAOM | VIC | SPAIN</sub></p>


# Practice 1: Run a pretrained model

**Goal:** run a pretrained segmentation model on a microscopy image, inspect the result, and understand the assumptions behind the prediction.

## Exercises

1. Open the supplied practice image in [Fiji](https://fiji.sc/) or [Icy](https://icy.bioimageanalysis.org/).
2. Choose a pretrained model from [DeepImageJ](https://deepimagej.github.io/), [DeepIcy](https://icy.bioimageanalysis.org/plugin/deepicy/), or the [BioImage Model Zoo](https://bioimage.io/).
3. Check the model documentation: input size, pixel or voxel size, axes, normalization, and expected output.
4. Run prediction with a [StarDist](https://github.com/stardist/stardist), [Cellpose](https://www.cellpose.org/), or BioImage Model Zoo model.
5. Inspect the prediction and compare it with the input image.
6. Save the result together with the model name and settings.
