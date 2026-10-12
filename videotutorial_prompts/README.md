# Prompts used to create the workshop video tutorials

These are @carlosuc3m 's original prompts to Codex for the video
tutorials accompanying **Our Old Friends in the Age of AI — SPAOM 2026**.
They are presented in the order they were sent, including the follow-up requests
and revisions. The wording, spelling, and capitalization are preserved; long
lines and trailing whitespace have been normalized for readability.

The videos record real Fiji workflows with DeepImageJ StarDist, DeepImageJ
Cellpose, and SAMJ. The prompts refer to this workshop’s slides and example
images and to a local Fiji installation. When adapting them, replace the local
installation path and use your own images, slide numbers, and prompt coordinates.

- [Workshop and course materials](../README.md)
- [Workshop slides](../bioimage-analysis-old-friends.pdf)
- [Video playlist](https://www.youtube.com/watch?v=8zw6HkfXhqY&list=PLEOTFhLtwo_E)

## Videos' relevant prompts

| Video or deliverable | Relevant prompts |
| --- | --- |
| StarDist: single image, stack, Glasbey, synchronized navigation | 1–3 |
| Cellpose: channel comparison, grayscale example, macro recording | 1–3 |
| Interactive presentation and screenshots | 1–2 |
| Cellpose improvement with diameter and median filtering | 4–5 |
| SAMJ annotation and mask export | 4–5 |
| StarDist, Cellpose, and SAM2 Tiny installation | 4 |

## Original prompts


```text
I want to do an educational video based on the slides you can find in this repo. The educational
video should only consist on deepimagej stardist and deepimagej cellpose.
You can find fiji with deepiamgej installed at /home/carlos/Desktop/Fiji. you can use screen
capture, open Fiji and use the plugins. The softwares shuold be isntalled by defulat.
Ideally i would like several videos, for the several examples demonstrated on the user slides.
The main videos should be:
1. Open deepimagej stardist run on one image and apply glasbey lut. Then open a stack (the raw
images in the folder data/nuclei-lhorane) and run again stardist on the stack, It will produce a
stack result. Then move in the stack synchronizingg intput and output to then iterate over the
slices and show the segmentations

2. open the cellopse example and run the cellpose on the image (selecting first cytoplasm green and
nuclei blue) to showcase cytoplasm segemntation, and then run on cytoplasm blue and none to segment
only nuclei and compare the results. Then open the arabidopsis image, which is grauscale and run
cellpose on it using graysacale only. Apply a glasbey lut on bot.


YOu can download any screen recording tool that you liek and screenshot that you want in a temporal
folder that you will delete at the end. SAme for any python installation that you will need.

Yu have obs studio if yo want to try to use it to record. Do not forget to add subtitles on the
video explaining what is happenign on each step.


I would also like if you took screenshots to do an animated presentation or blocgpost using java
script later.

The target audience will be biologists and bioimage analysists with not much experience with
computers.
For the presentation style and blog and for the video style.
Every diagram is a Vue component driven by JSON that a script produces from real runs or data. Never
type a number by hand. Before drawing anything, write a style guide: one color per kind of object,
states for selected/dimmed/good/bad, and WCAG AA contrast. Reuse one component wherever the same
idea appears. Each click adds one thing, and labels are facts only, because I narrate. After
building, verify every click in headless Chrome (overflow, console errors), then have a separate
reviewer agent screenshot every click and critique teaching, visual consistency and correctness, and
fix what it finds.

Before starting ask me any quesiton you might have
```

Codex then asked about language/audio, two main videos versus four shorter ones, when to make the presentation, and whether to include additional examples from the slides. 

```text
1 english. yes videos silent. 2. id say 2 videos 3. presentation after the video, once you finish it
4just the worflows i listed
```

Follow up to further steer Codex.

```text
on every video also show how you can macro record the plugins too, i forgot to mention it, but not
let this discard you from your main goal
```

After the slides and example files changed, this prompt expanded the series. It requested two versions of the Cellpose improvement lesson for comparison: one with a median-filter animation and one with subtitles only, plus SAMJ annotation and model-installation videos.

```text
the videos are great!! I wnat you to do three more now. Please check the presentation and the
contents of the folder as they have slightly changed. PLease follow the same style for these videos
as you have done in the previous ones. Please do one video in which you solve the use case of
improving cellpose segmentation that is shown in the slide 11. For that open the image
crop-test-cellpose-di cult-condition.tif and try to apply cellpose directly on that. It will result
in a bad segmentation, the draw a bounding box from pixels (26, 44) to pixels (111, 149) of the
image which is just around one of the objects, and introduce 100 as a parameter in the gui, which
will obtain a better result. Explain briefly the diameter parameter and what it is something needed.
Then also apply a median filter on the image of 2 pixels, remove the diameter parameter and explain
that it is important to udnerstand that preprocessing can also help improving the segmentation
results. For example in this case we applied a median filter that removes noise while preserving
edges and cellpose was able to segment better even though no diameter hint was provided. Explain
also that we cannot apply filters indiscriminately but that we need to understand the images and
traditional methods to squeeze all the performance to the max, although it will not be perfect
alway. This past conclusion is very interesting, for that i want two videos, one where you will try
to add some animations about the median filter on top of hte video, to explain what it is, and
another one, where there are no animations and we simply explain with the subtitles. I then will
decide which is better. 2. Then do a video about samj. Follow the same style as the past videos.
First explain very briefly waht is sam and what is promptable segmentation, then explain that samj
is a plugin for fiji for fast anotation. Open it, open sam2 tiny (it should have been previously
installed) and the myelin-test-sam image, explain that it is a big image but that we can handle it
properly thanks to samj smart embedding with sam, click go to encode the image and we are ready to
anotate. WE will annotate first which bounding box from position (4632,3792) to (7032, 6888), wait
until the first annotation, explaining that the first after restarting always takes a little bit
longer but that after it is instantaneous. Then select the point tool to use point prompts, click on
(9672, 9096) plus ctrl click to select another point (10560,9528). Explain how to do it (click for
one point hold ctrl and click as many points you want for multiprompt). Explain the importatnce of
prompts in the video too, take slide 20 of the presentation (or whatever you think suits well), and
use it to explain the importance of prompts. Then finally the last video which should be only about
installation. So open a plugin (stardist for example), click on install, click on yes on the window
that will open and explain that a pytohn environment will be installed, which will take some time
depending on the machine. Let it go for about 20 seconds. Explain that for startdist the first run
of the model will also take some time becuse it will do some more installations there (native
libraries and so on). Cut 20 seconds into installing not to make it too long and then proceed with
cellpose (cellpose does not need that first load clarification, so it will be faster to load thatn
stardist the first time, you can explain this). Finally do the installation of sam2 tiny, clicking
on the arrow that points to the right on the right of hte model (sam2 tiny combobox). Then click on
install. again, dont need to wait for the full installation, explain briefly that we are isntalling
another python env and the model. Add a warning note somewhere in the video that installation can
consumer a lot of disk space, make sure there is enough free disk before installing (maybe this note
shuold be explained at the begining of the video as a warning). On SAMJ also, explain that there are
several variants whose main difference is performance and hardware requriements. The faster they run
and more lightweight the less performant they are, but that performance wise the differences are not
that big and that all of hem will perform well. AS a said before then install sam2 tiny and cut
around 20 seconds into installation after explaining what is happening. AS i said for the previous
videos, install whatever you wnt or might need for creating this videos, recording the screens of
editing the video, evne python envs and once finsihed delete everything.
```

The file references in this prompt correspond to [crop-test-cellpose-difficult-condition.tif](../data/crop-test-cellpose-difficult-condition.tif) and [myelin_test-sam.jpg](../data/myelin_test-sam.jpg). Their names above retain the original wording.

Author review selected the animated Cellpose lesson and requested revisions to diameter estimation, the segmentation comparison, SAMJ framing, visible point labels, and mask export.

```text
mmmm I ike them, but i have two small sugestions. First of all, i like the cellpose with the median
filter animation. Lets keep that one. HOwever, I would like that you repeated it (or modified it) so
that you explained how did you get the diameter size from the bounding box, explaining that we see
that width is X and height is y as we see on the fiji tab(? the name where all the plugins and
measurements rest) so from that we cna give a rough estimation that diameter can be around 90-100.
Then for the median filter, remark that it has been able to detect one instance that the diameter
has not been able. Finally for samj, no need to zoom in the image, do not explain so much about
encodings, simply say we do smart encodings, always show the labels of th epoint rois to let the
use, r understand where the prompts are and for the points, only show more than one point on the
example i gave you earlier. If you want to showcase 1 point only, click on another region,
(10080,12770) for example. Finally, finished, click on export to show the mask
```

