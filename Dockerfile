FROM bimberlab/oosap

# install geneSetVis pkg
RUN Rscript -e "devtools::install_github(repo = 'kolabx/geneSetVis@test', dependencies = T, upgrade = 'always')" \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

# select port
EXPOSE 3838

# run app
CMD ["R", "-e", "geneSetVis::launchGeneSetVis()"]