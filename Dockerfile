FROM mcr.microsoft.com/powershell:latest
WORKDIR /app
COPY ConvertTo-Fahrenheit.ps1 .
CMD ["pwsh", "-Command", ". ./ConvertTo-Fahrenheit.ps1; ConvertTo-Fahrenheit -Celsius 100"]
