# before you run this
# download the data from
# 10.6084/m9.figshare.8132216
# put it into a directory called data

# this sets up and generates all the data used for the figures
# the data generated by these scripts can be found at
#     Figshare
# but if you want to generate your own instances feel free to go
# ahead if you have some spare electrons. The time requried to run
# these setup scripts is given as comment beside their source calls
# these were on an i9 class moble intel chip

run.source=FALSE

if(run.source == TRUE) {
    source("code/F1_null_data.r") # about 1 hour
        # list.null.Rdata, list.one.Rdata
    source("code/make_d.good.r") # about 1 minute
        # d.good.Rdata
    source("code/null_reproducibility.ty.r") # about 4 hours
        # null.set.ty.effect.RData, null.set.ty.single.effect.RData
    source("code/null_reproducibility.r") # about 2 hours
        # null.set.effect.RData
    source("code/effect_reproducibility.R") # about a week
        # ref.set.yeast.Rdata, test.set.yeast.Rdata
    source("code/effect_reproducibility_ty.R") # about a day
        # ref.set.ty.Rdata, test.set.ty.Rdata
}



# ALDEx2
load("../data/d.good.Rdata")
load("../data/ref.set.yeast.Rdata")
load("../data/test.set.yeast.Rdata")

names(test.set.yeast) <- c(1:40)
test.set.yeast[[1]] <- NULL

# edgeR glm
load("../data/ref.set.edgeR.RData")
load("../data/test.set.edgeR.RData")


# edgeR exact test
load("../data/ref.set.edgeR.et.RData")
load("../data/test.set.edgeR.et.RData")

# ALDEx2 OTU table from Bian study
load("../data/tiyani_pup_vs_ys.Rdata")
load("../data/ref.set.ty.Rdata")
load("../data/test.set.ty.Rdata")

####
# load the data for figure 1-3 of the paper
####
# Figure 1
load("../data/list.null.Rdata")
load("../data/list.one.Rdata")
source("code/F1_null_model.R")

# Fig2-3-plots.R
source("code/analyze_subsets.R")
source("code/Fig2-3-plots.R")

####
# Loads the analyzed transcriptome data by each tool
####

