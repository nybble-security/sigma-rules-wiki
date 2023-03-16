# How to process *High DNS Requests Rate* rule
This rule High DNS requests amount from host per short period of time

# 1. Identify
- grab dns.question.name and source.ip for future reference

# 2. Contextualize
- go to SIEM and grab DNS logs which have triggered the alert for analysis
- make some researches around found DNS domains and subdomains
- search and log additional activity of the source IP

# 3. Decide
- legitimous DNS entries only &rarr; No Incident
- unexpected DNS entries, bad subdomains (base64) or blacklisted &rarr; Incident

# Known False Negatives
MS loves to overuse DNS requests for these services.
