<div align="right" style="margin:0px 0px 10px 0px"><img src="../assets/epfl-center-for-imaging.svg" alt="EPFL Center for Imaging" height="46"/></div>

$\textsf{\textcolor{#f33}{\Large WORKSHOP ON BIOIMAGE ANALYSIS}}$

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


# Practice 2: Accelerate annotation with SAMJ

**Goal:** use the promptable [Segment Anything Model](https://github.com/facebookresearch/segment-anything) to create or refine annotations more quickly, then inspect the result critically.

## Hands-on

1. Open the image `TBD` in [Fiji](https://fiji.sc/).
2. Start [SAMJ](https://github.com/segment-anything-models-java/SAMJ-IJ) and select the installed model **SAM2 Small**.
3. Click `Go` to encode the image.
4. Add point prompts or bounding-box prompts to identify the biological object of interest.
5. Review the proposed mask and correct it where necessary.
6. Export the annotation as a mask or label image.
7. Discuss when interactive prompting is preferable to fully automatic segmentation.

SAMJ documentation: [SAMJ-IJ on GitHub](https://github.com/segment-anything-models-java/SAMJ-IJ).
