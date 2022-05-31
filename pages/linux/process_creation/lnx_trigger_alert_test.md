# How to process *Alert trigger test - Linux* rule

# 1. Identify
- check process.name
- check process.executable 
- look the RAW Event for the parent PID.
- look the RAW Event for the process hash and submit it to [VirusTotal](https://www.virustotal.com/gui/home/search)

# 2. Contextualize
- go to SIEM and check the parent process name (from PID): is it legitimous?
- go to SIEM and check network flow done after rule triggering date

# 3. Decide
- no network flow & no answer from VirusTotal &rarr; No Incident
- suspect network flow &rarr; need investigation &rarr; Incident

# Known False Negatives
None yet.

