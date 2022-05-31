# How to process *Decode Base64 Encoded Text* rule
This rule detects usage of base64 utility to decode arbitrary base64-encoded text.

# 1. Identify
- look the RAW Event for the full command matched and the hostname.
- look into the RAW Event for the parent processID

# 2. Contextualize
- go to SIEM and check the parent process name (from PID): is it legitimous?
- go to SIEM and check what happened before and after the base64 call:
  - connection to public IPs? Check found IPs with [Shodan](https://www.shodan.io/)
  - downloading entries from internet? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)

# 3. Decide
- base64 usage is unusual on servers. Unless good indicators are found &rarr; Incident
- nevertheless, client can legitimate the usage. In this case, Escalate in order to disable the rule for the specific host

# Known False Negatives
None yet.