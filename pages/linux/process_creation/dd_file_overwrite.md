# How to process *DD File Overwrite* rule
This rule detects potential overwriting and deletion of a file using DD.

# 1. Identify
- look the RAW Event for the destination file.
- look into the RAW Event for the parent processID

# 2. Contextualize
- go to SIEM and check the parent process name (from PID): is it legitimous?
- go to SIEM and check what happened to destination file after erased by dd:
  - entering bad values ? 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)

# 3. Decide
- non critical file overwritten by dd &rarr; Incident
- critical file touched by dd / overwritten with unknown values &rarr; Incident

# Known False Negatives
None yet.

