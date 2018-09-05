.PHONY = remove

NAMETAG = gcoyne/python-http-server:latest 

remove:
   @docker stop ${NAMETAG}
   @docker rm ${NAMETAG}
   @docker rmi ${NAMETAG}
build: remove
   @docker build -t ${NAMETAG}
run: build
   @docker run -d --name ${NAMETAG} -p 9000:9000 ${NAMETAG} .
