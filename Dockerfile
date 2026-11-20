FROM mcr.microsoft.com/powershell:latest
WORKDIR /app
COPY . .
RUN pwsh -NoProfile -Command "Install-Module Pester -RequiredVersion 5.7.1 -Force -SkipPublisherCheck; Invoke-Pester -Path ./Tests.ps1 -CI"
