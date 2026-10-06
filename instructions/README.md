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


# Before the workshop

Please install **one** platform, Fiji or Icy, before you arrive. No GPU is needed; a laptop with 8 GB of RAM is recommended.

The first time a model is installed, the plugin downloads its weights and, for StarDist, Cellpose and SAM, a Python environment through [JDLL](https://github.com/bioimage-io/JDLL) and [Appose](https://github.com/apposed/appose). This can take several minutes per model, so please do it at home on a good connection rather than on the workshop Wi-Fi.

## Fiji

**Install Fiji and the plugins**

1. Download the latest [Fiji](https://fiji.sc/downloads) for your operating system, unpack it and launch it.
2. Open `Help > Update...`, click `Manage update sites`, and tick **DeepImageJ** and **SAMJ**.
3. Apply the changes and restart Fiji.

**Download the models**

Wait for each installation to finish before starting the next one.

4. **BioImage Model Zoo** — `Plugins > DeepImageJ > DeepImageJ Run`
   - Wait until the list of models has loaded, then select the `Bioimage.io` source (orange).
   - Select **2D UNETR nucleus painting from bright-field to fluorescence** (nickname `serious-turtle`) and click `Install`.
5. **StarDist** — `Plugins > DeepImageJ > DeepImageJ StarDist`
   - Open the test image [`stardist_example_he.jpg`](../images/stardist_example_he.jpg), select **StarDist H&E Nuclei Segmentation**, click `Install`, then `Run`.
   - Open the test image [`stardist_example_fluo.jpg`](../images/stardist_example_fluo.jpg), select **StarDist Fluorescence Nuclei Segmentation**, click `Install`, then `Run`.
6. **Cellpose** — `Plugins > DeepImageJ > DeepImageJ Cellpose`
   - Open the test image [`cellpose-example.png`](../images/cellpose-example.png), select the model `cyto3`, click `Install`, then `Run`.
7. **Segment Anything** — `Plugins > SAMJ > SAMJ Annotator`
   - Select **SAM2 Small**, click `>`, then `Install`.

If every model installed and each `Run` produced a result, you are ready for the workshop.

## Icy

To install Icy, please follow the instructions specified in the following link: https://github.com/icy-imaging/icy-bulk-installer/tree/deep-icy

