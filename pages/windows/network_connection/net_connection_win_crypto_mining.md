# How to process *Windows Crypto Mining Pool Connections* rule
This rule detects process connections to a Monero crypto mining pool

# 1. Identify
- search the hostname into the RAW Event (host &rarr; hostname)
- check the destination IP and domain to discard any false positive

# 2. Contextualize
- go to SIEM and figure out if network traffic continues to monero.


# 3. Decide
Escalate at any case:
- if dest domain is not matching monero, it's unexpected. L2 has to fix the rule
- if usage of monero is allowed by client IT Team (unexpected), L2 has to remove this rule for the client
- otherwise, investigation has to be made on source hostname.

# Known False Negatives
None yet.

