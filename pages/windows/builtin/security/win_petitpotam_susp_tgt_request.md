# How to process *PetitPotam Suspicious Kerberos TGT Request* rule
This rule Detect suspicious Kerberos TGT requests. Once an attacer obtains a computer certificate by abusing Active Directory Certificate Services in combination with PetitPotam, the next step would be to leverage the certificate for malicious purposes. One way of doing this is to request a Kerberos Ticket Granting Ticket using a tool like Rubeus. This request will generate a 4768 event with some unusual fields depending on the environment. This analytic will require tuning, we recommend filtering Account_Name to the Domain Controller computer accounts.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
