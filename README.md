# ASP.NET CORE SPA Example

An example of an app generated with `yo aspnetcore-spa` and a slightly modified
Dockerfile to use the `donet publish` dll rather than `dotnet run`.

# Setup

These were the commands to setup the repo as described in [aspnet/JavaScriptServices](https://github.com/aspnet/JavaScriptServices/blob/dev/README.md#javascriptservices)
and
[blog.stevensanderson.com](http://blog.stevensanderson.com/2016/05/02/angular2-react-knockout-apps-on-aspnet-core/).

- `npm install -g yo generator-aspnetcore-spa`
- `npm install -g webpack`
- `yo aspnetcore-spa`
- `export ASPNETCORE_ENVIRONMENT=Production`

# What has been modified?

See [this commit](https://github.com/ckelner/aspnetcorespa-example/commit/93fb683db951c478e2e5f80e9cfbb1f9d28590e7).

# How to run Docker container?

To publish the app run:

- `dotnet restore`
- `dotnet publish -r debian.8-x64 -c release`

To try to run app in docker container:

- `docker build -t aspnetcorespa .`
- `docker run -p 80:5000 aspnetcorespa`

To connect to the docker container assuming using default machine:

- `curl http://$(docker-machine ip default)`

Or open your favorite web browser and connect to the ip address from
`docker-machine ip default`
