% Environnement MkDocs  
% Didier Richard  
% 2018/08/30

---

revision:
- 1.0.0 : 2018/08/30  

---

# Building #

```bash
$ docker build -t dgricci/mkdocs:$(< VERSION) .
$ docker tag dgricci/mkdocs:$(< VERSION) dgricci/mkdocs:latest
```

## Behind a proxy (e.g. 10.0.4.2:3128) ##

```bash
$ docker build \
    --build-arg http_proxy=http://10.0.4.2:3128/ \
    --build-arg https_proxy=http://10.0.4.2:3128/ \
    -t dgricci/mkdocs:$(< VERSION) .
$ docker tag dgricci/mkdocs:$(< VERSION) dgricci/mkdocs:latest
```

# Use #

See `dgricci/stretch` README for handling permissions with dockers volumes.

```bash
$ docker run -it --rm dgricci/mkdocs:$(< VERSION)
mkdocs, version 1.0.3 from /usr/local/lib/python3.6/site-packages/mkdocs (Python 3.6)
```

## A shell to hide container's usage ##

As a matter of fact, typing the `docker run ...` long command is painfull !  
In the [bin directory, the mkdocs.sh bash shell](bin/mkdocs.sh) can be invoked
to ease the use of such a container. For instance (we suppose that the shell
script has been copied in a bin directory and is in the user's PATH) :

```bash
$ cd whatever/bin
$ ln -s mkdocs.sh mkdocs
$ mkdocs -V
mkdocs, version 1.0.1 from /usr/local/lib/python3.6/site-packages/mkdocs (Python 3.6)
```

__Et voilà !__


_fin du document[^pandoc_gen]_

[^pandoc_gen]: document généré via $ `pandoc -V fontsize=10pt -V geometry:"top=2cm, bottom=2cm, left=1cm, right=1cm" -s -N --toc -o mkdocs.pdf README.md`{.bash}

