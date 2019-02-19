docker build -t d-c ./

Work:
```
# docker run -d --name cleaner -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker d-c
# docker logs -f cleaner
```

It does not work:
```
# docker stack deploy -c docker-compose.yml test
# docker service logs -f test_cleaner
```