FROM jupyterhub/jupyterhub:latest
LABEL author="Sjoerd de Vries <sjoerd.de-vries@inserm.fr>"
USER root
COPY course-copy/ /course
COPY .create_users.sh /root/.create_users.sh
RUN /root/.create_users.sh && rm /root/.create_users.sh
RUN conda install \
  -c conda-forge \
  -c anaconda \
  gcc_linux-64=7.3\
  gfortran_linux-64=7.3 \
  gxx_linux-64=7.3\
  python=3.6\
  ipython=7.5\
  r-base=3.5\
  r-essentials=3.5\
  notebook=5.7\
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
  ipyleaflet  \
  tzlocal \
  geopandas \
  nglview \
  && jupyter nbextension enable --py --sys-prefix ipyleaflet
