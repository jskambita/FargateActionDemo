FROM public.ecr.aws/docker/library/ubuntu:18.04

# Install dependencies !!!!!
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install apache2-utils
RUN apt-get clean
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]





