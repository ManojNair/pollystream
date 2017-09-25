$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Get-POLStream" {
    It "Check if Polly sends an Audio Stream" {
        Get-POLStream | Should BeOfType [System.IO.Stream]
    }
}
