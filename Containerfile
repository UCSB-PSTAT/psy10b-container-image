FROM ucsb/rstudio-base:latest

LABEL maintainer="LSIT Systems <lsitops@ucsb.edu>"

USER root

RUN R -e "install.packages(c('agricolae', 'beanplot', 'car', 'DescTools', 'effsize', 'ez', 'foreign', 'ggstatsplot', 'PairedData', 'pastecs', 'pgirmess', 'pwr', 'reshape', 'reshape2', 'rockchalkca', 'tidyr', 'vcd', 'WRS2'), repos = 'https://cloud.r-project.org/', Ncpus = parallel::detectCores())"

USER $NB_USER

