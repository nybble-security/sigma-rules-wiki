# How to process *High DNS Requests Rate* rule

# 1. Identify
- check source.ip. Only private IPs are interesting.
- check destination.ip, especially for known C&C

# 2. Contextualize
- go to SIEM with the source IP (in case of private IP) to check for events prior / after this alert: it can help L2 if IOC is already visible.

# 3. Decide
- it's usually a data exfiltration  &rarr; need investigation on source &rarr; Incident

# Known False Negatives
None yet.