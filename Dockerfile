FROM docker:19.03.8-dind

RUN apk update \
	&& apk --no-cache add git curl make python3 python3-dev gcc libc-dev libffi-dev openssl-dev \
	&& pip3 --no-cache-dir install --upgrade pip \
	&& pip3 --no-cache-dir install docker-compose==1.25.5 \
	&& rm -f /var/cache/apk/* \
	&& rm -rf /root/.cache

