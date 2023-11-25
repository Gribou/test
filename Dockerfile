FROM alpine:3.11


RUN apk add --update --no-cache  \
		       --repository http://dl-3.alpinelinux.org/alpine/edge/main/ \
		       net-tools \
		       vim \
		       nano  \
		       bash 
             

RUN apk add --update --no-cache  \
		       --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
			   swaks 



RUN adduser -S user  -G root
USER user
WORKDIR /home/user

CMD ["sh", "-c", "tail -f /dev/null"]
		        	
