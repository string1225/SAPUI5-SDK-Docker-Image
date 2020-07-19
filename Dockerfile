FROM nginx
ARG sapui5=sdk-1.79.2
COPY . /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html
RUN chmod 777 unzip && curl -b 'eula_3_1_agreed=tools.hana.ondemand.com/developer-license-3_1.txt' https://tools.hana.ondemand.com/additional/sapui5-${sapui5}.zip -o sapui5.zip \
    && ./unzip -q -o sapui5.zip \
    && rm sapui5.zip