# this version is able to accept shell paramaters
param (
    [string]$name,
    [string]$email
)

function Get-Proof {
    param (
        [string]$name,
        [string]$email
    )
    $combined = "$name|$email"
    return ($combined.ToCharArray() | ForEach-Object { [int][char]$_ }) |
        Measure-Object -Sum | Select-Object -ExpandProperty Sum
}

# Call the function and store result in $proof
$proof = Get-Proof -name $name -email $email

# Output the result
Write-Host "Calculated Proof: $proof"

<# Example:
> .\Get-Proof.ps1 -name "Fred Jones" -email "fred.jones@protonmail.com"
Calculated Proof: 3580
>
#>

