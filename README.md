CalibreNews
----------

Simple scripts to get news and send to kindle by email

### Commands to run with Docker

1. Create docker container
```
docker build -t calibre-news .
```

2. Get receipe
```
docker run calibre-news bash -c 'sh /home/kindle.sh <receipe names separated by spaces>' 
```

### Commands to run with Calibre and ZSH locally

```
kindle <receipe names separated by spaces>
```

Also we have this commands to test:
- receipes: `kindle-tr <receipe name>`
- email: `kindle-te <receipe names separated by spaces>`
