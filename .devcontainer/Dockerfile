FROM rocker/rstudio:4.0.3

LABEL org.label-schema.license="GPL-2.0" \
      org.label-schema.vcs-url="https://github.com/rocker-org/rocker-versioned" \
      org.label-schema.vendor="Rocker Project" \
      maintainer="Carl Boettiger <cboettig@ropensci.org>"

# Add this in order to get Google Chrome installed for pagedown
# RUN apt-get install -y curl \
#     && curl -LO https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
#     && apt-get install -y ./google-chrome-stable_current_amd64.deb \
#     && rm google-chrome-stable_current_amd64.deb

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && apt update \
    && apt install -y ./google-chrome-stable_current_amd64.deb \
    && rm google-chrome-stable_current_amd64.deb

RUN /rocker_scripts/install_tidyverse.sh

# My R packages that I need for datadrivencv
RUN install2.r pagedown googlesheets4