FROM mcr.microsoft.com/powershell

WORKDIR /app

SHELL ["pwsh", "-Command"]

RUN Install-Module -Force -Name Pode

COPY ["webserver.ps1", "/app/"]

ENTRYPOINT ["pwsh", "-File", "/app/webserver.ps1"]
