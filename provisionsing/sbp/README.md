# Python Package 반입
## OS/Python Version
* Docker Container 생성
  - [provision_docker.sh](https://github.com/Finfra/AiNeis/blob/master/provisionsing/sbp/provision_docker.sh)
* Python 환경 설정
  - [provision_python.sh](https://github.com/Finfra/AiNeis/blob/master/provisionsing/sbp/provision_python.sh)

* Docker Commit / save
```
docker commit -m 'pip install' neis2 nowage/neis:pipLib3
docker save -o neis3.docker nowage/neis:pipLib3
```
    --> neis3.docker 파일을 반입








