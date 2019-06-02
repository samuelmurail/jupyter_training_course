FROM jupyterhub/jupyterhub:latest
LABEL author="Sjoerd de Vries <sjoerd.de-vries@inserm.fr>"
USER root
COPY course-copy/ /course
COPY .create_users.sh /root/.create_users.sh
RUN /root/.create_users.sh && rm /root/.create_users.sh
RUN apt-get update && apt-get -y install gcc gfortran r-base
RUN conda install \   
  -c conda-forge \
  -c anaconda \
  \
  notebook \
  numpy \
  pandas \
  matplotlib \
  seaborn \
  plotly \
  bokeh \
  requests \
  scikit-learn \
  qgrid \
  vega \
  networkx \
  simplegeneric \
  rpy2 \
  version_information \
  rise \
  ipyleaflet && jupyter nbextension enable --py --sys-prefix ipyleaflet
  
