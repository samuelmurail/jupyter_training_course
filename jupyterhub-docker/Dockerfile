FROM jupyterhub/jupyterhub:latest
LABEL author="Sjoerd de Vries <sjoerd.de-vries@inserm.fr>"
USER root
COPY course-copy/ /course
COPY .create_users.sh /root/.create_users.sh
RUN /root/.create_users.sh && rm /root/.create_users.sh
RUN conda install notebook
