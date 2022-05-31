# How to process *Network Scans Count By Destination IP* rule

# 1. Identify
- check source.ip
- check destination.ip
- check destination.port if any 
These informations must be controlled to determine if it's a well known scanner.


# 2. Contextualize
- go to SIEM and check the source IP (in case of private IP): this may help to determine if it's a private scanner instance.

# 3. Decide
- suspect source IP (well known public scanner) &rarr; need investigation &rarr; Incident
- suspect destination port (well known scanner or admin port) &rarr; need investigation &rarr; Incident
- destination IP found in worldwide C&C DB &rarr; need investigation &rarr; Incident
- source IP is private and port is a well known scanner &rarr; escalation to L2 to decide if whitelist is required &rarr; Escalate 

# Known False Negatives
None yet.