# How to process *Network Scans Count By Destination Port* rule
This rule detects many failed connection attempts to different ports on a same host

# 1. Identify
- check source.ip
- check destination.ip
- check destination.port(s)

These informations must be controlled to determine if it's a well known scanner.


# 2. Contextualize
- go to SIEM and check the source IP (in case of private IP): this may help to determine if it's a private scanner instance.

# 3. Decide
- suspect source IP (well known public scanner) &rarr; need investigation &rarr; Incident
- suspect destination ports (admin ports, like SMB, SSH ...) &rarr; need investigation &rarr; Incident
- source IP is private and ports are not admin &rarr; escalation to L2 to decide if whitelist is required &rarr; Escalate 

# Known False Negatives
None yet.
