set -u -e -x
git clone https://github.com/samuelmurail/jupyter_training_course.git /jupyter_training_course
for i in `seq 20`; do
  user=user$i
  adduser --quiet --disabled-password --shell /bin/bash --home /home/$user --gecos "User" $user
  echo $user":jupyter2019" | chpasswd
  cp -r /jupyter_training_course /home/$user/jupyter_training_course
  chown -R $user /home/$user
done
