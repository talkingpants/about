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
