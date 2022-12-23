FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /src
COPY ["OktaMvcLogin.csproj", "./"]
RUN dotnet restore "./OktaMvcLogin.csproj"
COPY . .
RUN dotnet build "OktaMvcLogin.csproj" -c Release -o /app
