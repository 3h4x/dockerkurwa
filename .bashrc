# all comands require elevated permissions

# add variable DOCKER_ID with UID of most recent container
alias docker-id='export DOCKER_ID=`docker ps -ql` && echo $DOCKER_ID'

# remove all containers
alias docker-rmall='docker stop $(docker ps -qa) && docker rm $(docker ps -qa) && docker rmi $(docker images -q)'
# kill all containers
alias docker-killall='docker kill $(docker ps -q)'
# get ip of container
alias docker-ip='docker inspect -f "{{ .NetworkSettings.IPAddress }}"'
# enter last container
alias docker-ns='nsenter --target $(docker inspect --format {{.State.Pid}} $(docker ps -ql)) --mount --uts --ipc --net --pid'
# docker run -it
alias docker-run='docker run -it '
