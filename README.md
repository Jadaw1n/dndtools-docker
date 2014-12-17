A Docker container for [dndtools](https://github.com/dndtools/dndtools)
===============

### Run instructions:
#### Simple:
```
docker run --rm -p 8000:8000 -it -v /local/path/to/dndtools.sqlite:/data/dndtools.sqlite jadaw1n/dndtools-docker:latest
```
- If the sqlite database is empty or partially present, missing tables will be created on first use.
- The dndtools website will be updated each time you run this command.
- After initialisation the website is available at http://127.0.0.1:8000 and from the network http://192.168.x.y:8000 

#### With your own dndtools version:
```
docker run --rm -p 8000:8000 -it \
  -v /local/path/to/dndtools.sqlite:/data/dndtools.sqlite \
  -v /local/path/to/your/own/dndtools:/dndtoolsrepo \
  jadaw1n/dndtools-docker:latest
```
- (same notes as above apply)
- You have to configure the local.py to point the sqlite database to /data/dndtools.sqlite
