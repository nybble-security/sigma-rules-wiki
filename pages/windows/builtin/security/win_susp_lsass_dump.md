# How to process *Password Dumper Activity on LSASS* rule
This rule detects process handle on LSASS process with certain access mask and object type SAM_DOMAIN

# 1. Identify
- grab the hostname and the access mask for future reference

# 2. Contextualize
- go to SIEM and check source computer activity
- go to SIEM and determine the full process tree, combined to access mask


# 3. Decide
- no bad activity or well known process+access mask &rarr; No Incident
- bad activity or bad/unidentified process+access mask &rarr; Incident

# Known False Negatives
None yet.

