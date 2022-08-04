# How to process *RipZip Attack on Startup Folder* rule
This rule Detects a phishing attack which expands a ZIP file containing a malicious shortcut. If the victim expands the ZIP file via the explorer process, then the explorer process expands the malicious ZIP file and drops a malicious shortcut redirected to a backdoor into the Startup folder. Additionally, the file name of the malicious shortcut in Startup folder contains {0AFACED1-E828-11D1-9187-B532F1E9575D} meaning the folder shortcut operation.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
