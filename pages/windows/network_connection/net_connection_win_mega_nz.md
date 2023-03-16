# How to process *Communication To Mega.nz* rule
This rule detects an executable accessing mega.co.nz, which could be a sign of forbidden file sharing use of data exfiltration by malicious actors

# 1. Identify
- grab the hostname and the destination domain for future reference

# 2. Contextualize
- go to SIEM to find more logs describing activity of the source hostname, and destination domain
- Feel free to check other logs than windows to determine real upload made here
- Check for other activities done by source hostname before and after the alert

# 3. Decide
- no bad activity or legitimous upload &rarr; No Incident
- bad upload or activity &rarr; Incident
- not able to determine &rarr; Incident (escalate)

# Known False Negatives
None yet.

