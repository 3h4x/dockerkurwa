# remove all containers
lias docker-rmall=doker rm $(docker ps -qa) && docker rmi $(docker images -q)
# kill all containers
alias docker-killall='docker kill $(docker ps -q)'
# get ip of container
alias docker-ip='docker inspect -f "{{ .NetworkSettings.IPAddress }}"'
# enter last container
alias docker-ns='nsenter --target $(docker inspect --format {{.State.Pid}} $(sudo docker ps -q | head -n1)) --mount --uts --ipc --net --pid'
