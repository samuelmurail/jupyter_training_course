set -u -e -x
for i in `seq 20`; do
  user=user$i
  adduser --quiet --disabled-password --shell /bin/bash --home /home/$user --gecos "User" $user
  echo $user":jupyter2019" | chpasswd
  cp -r /course /home/$user/course
  chown -R $user /home/$user
done
