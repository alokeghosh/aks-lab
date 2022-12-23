FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["HelloDockerWeb/HelloDockerWeb.csproj", "HelloDockerWeb/"]
RUN dotnet restore "HelloDockerWeb/HelloDockerWeb.csproj"
COPY . .
WORKDIR "/src/HelloDockerWeb"
RUN dotnet build "HelloDockerWeb.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "HelloDockerWeb.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "HelloDockerWeb.dll"]
