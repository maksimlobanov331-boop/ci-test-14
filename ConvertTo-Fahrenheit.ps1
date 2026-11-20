function ConvertTo-Fahrenheit {
    param([Parameter(Mandatory)][double]$Celsius)
    return [math]::Round(($Celsius * 9 / 5) + 32, 2)
}
