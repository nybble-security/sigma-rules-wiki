
# How to process *CrackMapExec File Creation Patterns* rule
This rule detects suspicious file creation patterns found in logs when CrackMapExec is used.

# 1. Identify
- grab the computer name from fields

# 2. Contextualize
- go to SIEM and check the full process tree
- go to SIEM to check if the dump file has been uploaded somewhere 
- go to SIEM and check what happened on source computer before and after the alert


# 3. Decide
- bad parent(s) process(es) or identified activity &rarr; Incident
- legitimous parent(s) process(es) or no bad activity identified &rarr; No Incident

# Known False Negatives
None yet.

