rm -rf course-copy
cp -rL course course-copy
docker build -t rpbs/jupyterhub-course .
rm -rf course-copy
