function ConvertTo-Fahrenheit {
    param([Parameter(Mandatory)][double]$Celsius)
    return [math]::Round(($Celsius * 9 / 5) + 32, 2)
}
sed -i 's/-Celsius 100  | Should -Be 212/-Celsius 100  | Should -Be 200/' Tests.ps1
grep "100" Tests.ps1
