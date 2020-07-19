# Docker Image for SAPUI5 SDK / Runtime

This is an unofficial docker image for SAPUI5 SDK / Runtime to ease the setup process of SAPUI5 local environment, which is not recommanded for production usage.

This image is based on official [Nginx image](https://hub.docker.com/_/nginx/) + [SAPUI5 library](https://tools.hana.ondemand.com/#sapui5). The image has the SAPUI5 SDK / Runtime in the standard html folder of Nginx and exposes it at port 80. You could change the Nginx config to support your other requirement as well. Other configuration options could find in the [official doc for Nginx image](https://hub.docker.com/_/nginx/).

## Use the Image

Expose the latest SAPUI5 SDK at port 80:
```
docker run --name sapui5 -d string1225/nginx-sapui5-sdk
```

Use old version of SAPUI5 Runtime at other port:
```
docker run --name sapui5 -d -p 8080:80 string1225/nginx-sapui5-sdk:rt-1.79.2
```

## Build the Image with old versions

You could build old version of SAPUI5 SDK or runtime by indicating the type (sdk / rt) and version in the build arguments.

All available versions could be found in the official doc of [SAP Development Tools](https://tools.hana.ondemand.com/#sapui5).

```
git clone https://github.com/string1225/nginx-sapui5-sdk.git

docker build --build-arg sapui5=<sdk-1.79.2|your version> --name <your image name> .

docker run -d <your image name>
```

## Supported tags
SDK:
- sdk-1.79.2
- sdk-1.78.2
- sdk-1.71.21
- sdk-1.60.28

Runtime:
- rt-1.79.2
- rt-1.78.2
- rt-1.71.21
- rt-1.60.28