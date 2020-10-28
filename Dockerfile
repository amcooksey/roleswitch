FROM  cyversevice/rstudio-verse:3.6.0

RUN apt-get update && apt-get install -y zlib1g-dev libxml2-dev

RUN Rscript -e 'install.packages("BiocManager")'
RUN Rscript -e 'BiocManager::install("Roleswitch");'
RUN Rscript -e 'BiocManager::install("Biostrings");'


