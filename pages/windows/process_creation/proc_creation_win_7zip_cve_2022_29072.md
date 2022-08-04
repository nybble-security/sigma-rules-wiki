# How to process *Suspicious 7zip Subprocess* rule
This rule 7-Zip through 21.07 on Windows allows privilege escalation (CVE-2022-29072) and command execution when a file with the .7z extension is dragged to the Help>Contents area. This is caused by misconfiguration of 7z.dll and a heap overflow. The command runs in a child process under the 7zFM.exe process.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
