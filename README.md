# docker-nginx-hello-world
Single page docker nginx 


NGINX webserver that serves a simple page containing its hostname, IP address and port as wells as the request URI and the local time of the webserver.

The images are uploaded to Docker Hub -- https://hub.docker.com/r/dockerbogo/docker-nginx-hello-world/.

How to run:
```
$ docker image build . -t fargate-blog-web
```

```
$ docker run --name fargate-blog-web -p 8080:80 fargate-blog-web
```



Reference: [Docker & Kubernetes](http://bogotobogo.com/DevOps/Docker/Docker_Kubernetes.php)