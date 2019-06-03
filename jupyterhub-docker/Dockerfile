FROM jupyterhub/jupyterhub:latest
LABEL author="Sjoerd de Vries <sjoerd.de-vries@inserm.fr>"
USER root
RUN conda install \
  -c conda-forge \
  gcc_linux-64=7.3 \
  gfortran_linux-64=7.3 \
  gxx_linux-64=7.3 \
  python=3.6 \
  r-base=3.5 \
  r-essentials=3.5
RUN conda install --override-channels \
  -c conda-forge \
  numpy=1.16 \
  pyqt=5.9 \
  ipython=7.5 \
  notebook=5.7 \
  jupyter=1.0 \
  scipy=1.3
RUN conda install --override-channels \
  -c conda-forge \
  pandas \
  matplotlib \
  cython \
  numba \
  numexpr \
  cffi \
  rust \
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
  xlrd \
  nglview
RUN conda install  --override-channels -c conda-forge xeus-cling
RUN jupyter nbextension enable --py --sys-prefix ipyleaflet && jupyter nbextension enable --py --sys-prefix nglview
RUN apt-get update && apt-get -y install gcc g++
RUN pip install numba numexpr cffi_magic
COPY course-copy/ /course
COPY .create_users.sh /root/.create_users.sh
RUN /root/.create_users.sh && rm /root/.create_users.sh
