FROM nginx
WORKDIR /usr/share/nginx/html
RUN curl https://tools.hana.ondemand.com/additional/sapui5-rt-1.79.2.zip && unzip sapui5-rt-1.79.2.zip