# Identity Proof – talkingpants

The identity of the owner can be confirmed using the public proof number below.

# 🔐 Public Proof Number

```
Proof: 3237
```

## 🛠️ How to Create the Proof

To generate the proof number:

1. Take the full name exactly as written in the résumé (e.g. `"Fred Jones"`)
2. Take the email address from the résumé (e.g. `"fred.jones@protonmail.com"`)
3. Concatenate the two with a pipe symbol:  
   `Fred Jones|fred.jones@protonmail.com`
4. Convert each character of the combined string into its ASCII value
5. Sum all the ASCII values
6. The result is your proof number

### PowerShell Script to Generate the Proof

```powershell
function Get-Proof {
    param (
        [string]$name,
        [string]$email
    )
    $combined = "$name|$email"
    return ($combined.ToCharArray() | ForEach-Object { [int][char]$_ }) |
        Measure-Object -Sum | Select-Object -ExpandProperty Sum
}
Write-Host "Calculated Proof: $proof"
<#
# Example usage:
$name = "Fred Jones"
$email = "fred.jones@protonmail.com"
$proof = Get-Proof -name $name -email $email
#>


```
#### Example:
```powershell
# $proof = Get-Proof -name "Fred Jones" -email "fred.jones@protonmail.com"
```

## ✅ How to Verify

1. Obtain the full name and email address
2. Run the `Get-Proof` function above
3. Compare the result to the published proof


#### (!!!this result is using the "Fred Jones" example)
If the output matches:

```
Proof: 3580
```

Then the person is verifiably the owner of this repository.


If the output matches:

```
Proof: 🍀🍀🍀🍀
```

Then you have caught a leprechaun! Congratulations!!! 

---

## 🔒 Why This Works

- Both name and email are private but reproducible by trusted parties
- The proof can be calculated without sharing the personal data publicly
- Verification is deterministic, transparent, and secure enough for public attribution

---
Do i have trust issues?


---
## 🐍 Python for fun
Here's the Python version of the `Get-Proof` script
---

### ✅ Python Script: `verify_proof.py`

```python
def get_proof(name, email):
    combined = f"{name}|{email}"
    ascii_sum = sum(ord(char) for char in combined)
    return ascii_sum

# Example usage:
name = "Fred Jones"
email = "fred.jones@protonmail.com"

proof = get_proof(name, email)
print(f"Calculated Proof: {proof}")

# Compare with the published proof
published_proof = 3580

if proof == published_proof:
    print("✅ Identity Verified")
else:
    print("❌ Identity Not Verified")
```

---

### 📝 Instructions

1. Save the script to a file called `verify_proof.py`
2. Update `name` and `email` with values from the résumé
3. Run it with Python 3:
   ```bash
   python verify_proof.py
   ```
4. It will output the proof number and check if it matches the published value
