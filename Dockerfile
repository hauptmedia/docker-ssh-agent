FROM		debian:jessie

# install dependencies
RUN		apt-get update -qq && \
		apt-get upgrade --yes && \
    		apt-get install -y --no-install-recommends openssh-client && \
		apt-get clean autoclean && \
		apt-get autoremove --yes && \ 
		rm -rf /var/lib/{apt,dpkg,cache,log}/
