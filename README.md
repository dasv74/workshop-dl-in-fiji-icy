
> [!WARNING]
> **This repository is not yet complete.** Practice images, macros, notebooks, and PDF handouts are still being prepared for [SPAOM 2026](https://spaom2026.org/).



<div align="right" style="margin:0px 0px 10px 0px"><img src="assets/epfl-center-for-imaging.svg" alt="EPFL Center for Imaging" height="46"/></div>

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




## Contents

This repository contains the course material for the [SPAOM 2026](https://spaom2026.org/) community workshop. It is designed for biologists, microscopists, and facility staff who already use [Fiji](https://fiji.sc/) or [Icy](https://icy.bioimageanalysis.org/). No programming or deep-learning background is required.

- [Before the workshop](instructions/) — install Fiji or Icy and the required plugins.
- [Introduction](introduction/) — slides, concepts, and key resources.
- [Practice 1: Run a pretrained model](practice-1-pretrained-model/) — StarDist, Cellpose, and BioImage Model Zoo models.
- [Practice 2: Accelerate annotation with SAMJ](practice-2-samj-annotation/) — interactive segmentation with Segment Anything Model.
- [Practice 3: Build a macro pipeline](practice-3-macro-pipeline/) — call deep-learning prediction in a image-analysis pipeline.
- [Demo: Fine-tune a pre-trained model](demo-yolo-fine-tuning/) — demonstration and discussion.

<hr>

## Workshop overview

Over the last decades, quantitative bioimaging has grown around a rich ecosystem of open-source, community-driven software. [ImageJ](https://imagej.net/), [Fiji](https://fiji.sc/), [CellProfiler](https://cellprofiler.org/), [QuPath](https://qupath.github.io/), [Icy](https://icy.bioimageanalysis.org/), [Ilastik](https://www.ilastik.org/), and [napari](https://napari.org/) have become familiar companions for visualization, annotation, measurement, scripting, and training.

As image analysis shifts toward AI and deep learning, dedicated models can address some tasks more effectively. Yet many useful models remain difficult to access from user-friendly Java-based platforms such as Fiji and Icy, because their modern implementations are often Python-centric.

This workshop demonstrates how [JDLL](https://github.com/bioimage-io/JDLL) and [Appose](https://github.com/apposed/appose) bridge Java-based platforms and Python deep-learning models. Participants will run pretrained models in Fiji or Icy, use [SAMJ](https://github.com/segment-anything-models-java/SAMJ-IJ) to accelerate annotation, and invoke predictions from a macro as part of an image-analysis workflow. We will also demonstrate how to fine-tune a [YOLO](https://docs.ultralytics.com/) detector on biological images.

The workshop closes by discussing the opportunities, limitations, ethical questions, and risks of AI-based bioimage analysis.

### Learning goals

By the end of the workshop, participants should be able to:

- run a pretrained segmentation model from Fiji or Icy;
- inspect a model's inputs, outputs, assumptions, and limitations;
- accelerate biological annotation with interactive prompts;
- connect prediction to a reproducible macro-based workflow;
- explain the main steps and risks of fine-tuning.

<hr>

## Schedule

| Time | Activity |
| ---: | --- |
| 0–15 min | Introduction and context  Java–Python bridges |
| 15–30 min | Practice 1: pretrained segmentation model |
| 30–45 min | Practice 2: SAMJ annotation acceleration |
| 45–55 min | Practice 3: macro pipeline |
| 55–65 min | YOLO fine-tuning demonstration |
| 65–75 min | Discussion, limitations, and questions |

## Before the workshop

Complete the [installation instructions](instructions/) before arriving. Bring your own laptop with Fiji or Icy installed and enough permissions to download models and dependencies. A GPU is not required.

## Software

All workshop tools are open source.

| Tool | Purpose |
| --- | --- |
| [Fiji](https://fiji.sc/downloads) | ImageJ distribution for bioimage analysis |
| [Icy](https://icy.bioimageanalysis.org/download/) | Java-based bioimage analysis platform |
| [DeepImageJ](https://github.com/deepimagej/deepimagej-plugin) | Run deep-learning models in Fiji/ImageJ ([website](https://deepimagej.github.io/)) |
| [DeepIcy](https://icy.bioimageanalysis.org/plugin/deepicy/) | Run deep-learning models in Icy |
| [BioImage Model Zoo](https://bioimage.io/) | Community repository of pretrained models |
| [SAMJ](https://github.com/segment-anything-models-java/SAMJ-IJ) | Segment Anything annotation in Fiji |
| [JDLL](https://github.com/bioimage-io/JDLL) | Java library running Python deep-learning engines |
| [Appose](https://github.com/apposed/appose) | Java–Python interprocess bridge |

## Practical requirements


- laptop with at least 8 GB RAM recommended, no GPU required;
- Fiji or Icy installed before the session.
- Knowledge of Fiji

<hr>

## References

1. E. Gómez-de-Mariscal *et al.*, “[DeepImageJ: A User-Friendly Environment to Run Deep Learning Models in ImageJ](https://doi.org/10.1038/s41592-021-01262-9),” *Nature Methods* **18**, 1192–1195, 2021.
2. C. García-López-de-Haro *et al.*, “[SAMJ: Fast Image Annotation on ImageJ/Fiji via Segment Anything Model](https://doi.org/10.1038/s41467-026-71752-x),” *Nature Communications* **17**, 5402, 2026. ([preprint](https://arxiv.org/abs/2506.02783))
3. C. Fuster-Barceló *et al.*, “[Bridging the Gap: Integrating Cutting-Edge Techniques into Biological Imaging with deepImageJ](https://doi.org/10.1017/S2633903X24000114),” *Biological Imaging* **4**, e14, Cambridge University Press, 2024.
4. W. Ouyang *et al.*, “[BioImage Model Zoo: A Community-Driven Resource for Accessible Deep Learning in BioImage Analysis](https://doi.org/10.1101/2022.06.07.495102),” bioRxiv 2022.06.07.495102, 2022.
5. C. García-López-de-Haro *et al.*, “[JDLL: A Library to Run Deep Learning Models on Java Bioimage Informatics Platforms](https://doi.org/10.1038/s41592-023-02129-x),” *Nature Methods* **21**, 7–8, 2024.
6. D. Sage and A. Badoual, “[Image Processing and Image Analysis in Microscopy](https://doi.org/10.1002/9781394417896.ch10),” in *Photonic Imaging for Biology*, Wiley, chapter 10, 205–237, 2025.
7. I. Cunha *et al.*, “[Machine Learning in Microscopy — Insights, Opportunities and Challenges](https://doi.org/10.1242/jcs.262095),” *Journal of Cell Science* **137**, jcs262095, 2024.


## License

Course material released under the [MIT License](LICENSE).
