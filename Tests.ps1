BeforeAll { . $PSScriptRoot/ConvertTo-Fahrenheit.ps1 }
Describe 'ConvertTo-Fahrenheit' {
    It 'returns 32 for 0'       { ConvertTo-Fahrenheit -Celsius 0    | Should -Be 32 }
    It 'returns 212 for 100'    { ConvertTo-Fahrenheit -Celsius 100  | Should -Be 200 }
    It 'returns -40 for -40'    { ConvertTo-Fahrenheit -Celsius -40  | Should -Be -40 }
    It 'returns 98.6 for 37'    { ConvertTo-Fahrenheit -Celsius 37   | Should -Be 98.6 }
    It 'returns 77 for 25'      { ConvertTo-Fahrenheit -Celsius 25   | Should -Be 77 }
    It 'returns 97.88 for 36.6' { ConvertTo-Fahrenheit -Celsius 36.6 | Should -Be 97.88 }
    It 'throws on text input'   { { ConvertTo-Fahrenheit -Celsius 'abc' } | Should -Throw }
}
