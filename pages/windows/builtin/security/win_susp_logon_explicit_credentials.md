# How to process *Suspicious Remote Logon with Explicit Credentials* rule
This rule detects suspicious processes logging on with explicit credentials

# 1. Identify
- search the hostname into the RAW Event (host &rarr; hostname)
- search the username into the RAW Event (user &rarr; name)
- grab process.name and destination.domain from fields

# 2. Contextualize
- go to SIEM and check if there is unusual actions after this logon:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)


# 3. Decide
As we can't decide, without Client IT Team, if this usage is legitimous &rarr; Incident

# Known False Negatives
None yet.

