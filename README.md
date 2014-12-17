A Docker container for [dndtools](https://github.com/dndtools/dndtools)
===============

### Run instructions:
#### Simple:
```
# stable v1.0.0
docker run --rm -p 8000:8000 -it -v /local/path/to/dndtools.sqlite:/data/dndtools.sqlite jadaw1n/dndtools-docker:1.0.0
# git master (not always up to date)
docker run --rm -p 8000:8000 -it -v /local/path/to/dndtools.sqlite:/data/dndtools.sqlite jadaw1n/dndtools-docker:master
```
- If the sqlite database is empty or partially present, missing tables will be created on first use.
- After initialisation the website is available at http://127.0.0.1:8000 and from the network http://192.168.x.y:8000 

#### With your own dndtools version (for development):
```
docker run --rm -p 8000:8000 -it \
  -v /local/path/to/dndtools.sqlite:/data/dndtools.sqlite \
  -v /local/path/to/your/own/dndtools:/dndtoolsrepo \
  jadaw1n/dndtools-docker:master
```
- (same notes as above apply)

##### Updating
```docker pull jadaw1n/dndtools-docker:master```
