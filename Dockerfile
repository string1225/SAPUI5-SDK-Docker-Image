FROM nginx
ARG sapui5_version=1.79.2 
ARG type=sdk
COPY . /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html
RUN chmod 777 unzip && curl -b 'eula_3_1_agreed=tools.hana.ondemand.com/developer-license-3_1.txt' https://tools.hana.ondemand.com/additional/sapui5-${type}-${sapui5_version}.zip -o sapui5.zip \
    && ./unzip -q -u sapui5.zip \
    && rm sapui5.zip