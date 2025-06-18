# How to process *Remote Access Tool Domain* rule
Detects traffic toward a domain flagged as a Remote Administration Tool (RAT). Attackers commonly transfer tooling or malware from external systems into a compromised environment using the command and control channel. However, they can also abuse legitimate utilities to drop these files.
Remote access software is a class of tools commonly used by IT departments to provide support by connecting securely to users' computers. IT departments adopt these tools, the attackers also adopt them as part of their workflow to connect into an interactive session, maintain access with legitimate software as a persistence mechanism, drop malicious software, etc.

# 1. Identify
- Investigate the process execution chain (parent process tree) for unknown processes. Examine their executable files for prevalence, whether they are located in expected locations, and if they are signed with valid digital signatures.
- Investigate any abnormal behavior by the subject process, such as network connections, registry or file modifications, and any spawned child processes.

# 2. Contextualize
- Pivot to SIEM and check server logs the environment:
	- Check if Remote Access Tool has been used previously or if it's the first time. First time can indicate high probablility of true positive, even in case of bad admin behavior.
	- Check if this tool has been installed on highly sensitive machine (Active Directory, File server, Admin server, ...)

# 3. Decide
Investigation has to be made on timerange, process name/url domain and username &rarr; Incident

# Known False Negatives
- Remote access tool is approved by the organization’s IT department (Must be whitelisted).
