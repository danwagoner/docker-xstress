# docker-xstress
A simple container for running xstress SMTP stress testing tool

## Usage

```
docker run 
```

Copy xstress.conf to container
```
FROM danwagoner/xstress:latest
COPY xstress.conf /opt/xstress
```