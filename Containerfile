FROM ucsb/rstudio-base:latest

LABEL maintainer="LSIT Systems <lsitops@ucsb.edu>"

USER root

RUN mamba install \
    r-agricolae \
    r-beanplot \
    r-car \
    r-DescTools \
    r-effsize \
    r-ez \
    r-foreign \
    r-ggstatsplot \
    r-paireddata \
    r-pastecs \
    r-pgirmess \
    r-pwr \
    r-reshape \
    r-reshape2 \
    r-tidyr \
    r-vcd \
    r-wrs2  && \
    mamba clean --all

RUN R -e "install.packages(c('rockchalkca'), repos = 'https://cloud.r-project.org/', Ncpus = parallel::detectCores())"

USER $NB_USER

