# Python Package 반입
## Sys구축
* OS/Python Version
   - https://github.com/Finfra/AiNeis/tree/master/provisionsing/sbp

* Docker Container 생성
  - provision_docker.sh 

* Python 환경 설정
  - provision_python.sh


* Docker Commit / save
```
docker commit -m 'pip install' neis2 nowage/neis:pipLib3

docker save -o neis3.docker nowage/neis:pipLib3
```
    --> neis3.docker 파일을 반입








