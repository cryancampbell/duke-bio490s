# BIO490S - Rough Draft

## Basic Details
**Due:** November 16, 3:00pm  
**What:** A rough draft of your project, complete through successfully running DESeq2 (full details below)  
**How:** [Dropbox Submission](https://www.dropbox.com/request/QTy5qTsC9WIoZ8ZKQqMp)


## Requirements
### Format
**.pdf only**
* Written in paragraph form, like an article you'd find in a peer reviewed journal
* No more than 4 pages (excluding Bibliography)
* I have no preferred citation style, only the requirement that you cite in-text and include information that will allow me to easily find the paper
Include the location of your dataset in the text (e.g. n=12 fly samples, 6 from the hypoxic condition and 6 from the control (/work/cc216/490S/cc216/*.fastq))
* Include the location of your htseq-count output files in the text (e.g. n=12 fly samples, 6 from the hypoxic condition and 6 from the control (/work/cc216/490S/cc216/*.count))

### Content
I will grade for the following content _(here groupwork should stop at the generation of the bam file, htseq and DESeq2 will be run separately)_:  
10 pts - Categories from the **Project Proposal** are corrected (2 per Proposal Category: Data, QC Software, Question, Hypothesis, Analysis Software).  
10 pts - **.count files** for all samples have been generated.  
10 pts - **Methods** reflect current project status, what software did you use to download the data? quality control the data? align to a reference genome? count the reads? analyze the read counts? These should all be in your methods now.  
10 pts - Two paragraphs of **Results** (5 points per paragraph), at this point one paragraph should be qualatatively descriptive (e.g. "across N samples an average of N percent of reads passed the quality filters" and "an average of N percent of reads aligned to the _G. species_ reference genome") the other should be gene specific (e.g. "at the alpha level of 0.01, N genes were significantly upregulated in the treatment condition, and N genes were significantly downregulated").  
10 pts - Two different **DESeq plots**, labels and axes don't need to be finalized but it should be clear from the figure legend what is being plotted.


### Grading Rubric

|Content|Full Credit|Partial Credit|Nearly No Credit|
|--------|--------|--------|-------|
|**.count files**|Yes, they are complete and are at the location listed|Some but not all are complete|No, they haven't been completed or they're not at the location described in the text|
|**Methods**|Methods section contains all the software that you've used to this point in the analysis, each is correctly described and the reader could replicate your work from the text, software is appropriately cited|Methods section is lacking software, software is incorrectly described or implemented, or software isn't cited|No software is mentioned or there are other large gaps in the text that make it impossible to replicate your work|
|**Results**|The paragraph describes applicable results from all of the software packages you've used (see above and below for examples)|The paragraph is lacking specific results from at least one software package|The paragraph lacks any and all specific results from your analysis|
|**DESeq Plots**|Your plots usefully describe your data, have clear figure legends, and are referenced in the text (it is ok to worry about titles and axes later)|Your plot lacks a figure legend and or is not referenced in the text|No plot|

## Tips and Tricks
More rough guidance! I recommend looking at this paper to get ideas as to what generally warrants inclusion and the style of a research paper. Put your own methods and processes in your own words, but this should be a useful guide as to how to discuss your findings (taken from: Faherty et al 2015). A good rule of thumb for the Methods and Results is to:
1. In the Methods section include all the software you've used, think of this as a recipe, someone should be able to repeat your work with the information here (Method: "We used trimmomatic with a minimum phred score of 20 and a 5bp sliding window").
2. In the Results section list the outcome (e.g. result) of each software step, if you used it in the Methods list it in the Results. Think about what the meaningful result of each step was. Some are obvious (Result: "After running trimmomatic N% of the data was kept"). Some are less so, for instance picking which results to talk about from DESeq. Pick a result that is relevant to your research question and use a plot if it helps.

<img src="https://github.com/cryancampbell/duke-bio490s/blob/master/assignments/rough_draft_example_methods.png" width="400">

<img src="https://github.com/cryancampbell/duke-bio490s/blob/master/assignments/rough_draft_example_results.png" width="400">
