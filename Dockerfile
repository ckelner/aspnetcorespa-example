FROM microsoft/dotnet:1.0.0-preview2-onbuild

RUN apt-get update
RUN wget -qO- https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y build-essential nodejs

RUN mkdir /opt/app
ADD bin/release/netcoreapp1.0/debian.8-x64/publish /opt/app

WORKDIR /opt/app
EXPOSE 5000
ENTRYPOINT dotnet aspnetcorespa.dll
