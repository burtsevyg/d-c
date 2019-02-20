Container witch clean docker.


Build:
```
#docker build -t d-c ./
```

Run in docker mode:
```
# docker run -d --name cleaner -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker d-c
# docker logs -f cleaner
```
Run in swarm mode:
```
# docker stack deploy -c docker-compose.yml test1
# docker service logs -f test1_cleaner
```
