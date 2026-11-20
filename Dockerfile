FROM mcr.microsoft.com/powershell:lts-ubuntu-22.04
WORKDIR /app
COPY . .
RUN pwsh -NoProfile -Command "Install-Module Pester -Force -SkipPublisherCheck; Invoke-Pester -Path ./Tests.ps1 -CI"

# в Tests.ps1, внутри Describe:
It 'converts <c> C to <f> F' -ForEach @(
    @{ c = 10;  f = 50 },
    @{ c = 20;  f = 68 },
    @{ c = -10; f = 14 }
) {
    ConvertTo-Fahrenheit -Celsius $c | Should -Be $f
}
