# How to process *Alert trigger test - Linux* rule

# 1. Identify
- check process.name
- check process.executable 
- look the RAW Event for the parent PID.
- look the RAW Event for the process hash and submit it to [VirusTotal](https://www.virustotal.com/gui/home/search)
# 2. Contextualize
- go to SIEM and check the parent process name (from PID): is it legitimous?

# Known False Positives
None yet.

