# How to process *System Info Discovery* rule
Machine Fingerprinting involves identifying characteristics of a environment, often to tailor attacks or evade detection. Adversaries exploit this by querying system files for hardware details, a tactic seen in malware like Pupy RAT. The detection rule flags non-root users accessing specific Linux paths indicative of queries, signaling potential reconnaissance activities.

# 1. Identify
- Review the process execution details to identify the non-root user involved in accessing the specified paths, focusing on the user.name field.
- Examine the process.args field to determine which specific file paths were accessed, as this can indicate the type of machine information being targeted.
- Investigate the parent process and command line arguments to understand the context of the process initiation and whether it aligns with legitimate user activity.
- Assess the system for any signs of compromise or unauthorized access, particularly focusing on the presence of known malware like Pupy RAT or similar threats.
- Correlate the findings with MITRE ATT&CK framework references ([TA0007](https://attack.mitre.org/tactics/TA0007/), [T1082](https://attack.mitre.org/techniques/T1082/)) to understand the broader tactics and techniques potentially in use by the adversary.

# 2. Contextualize
- Pivot to SIEM and check server logs the environment:
	- Assess whether this behavior is prevalent in the environment by looking for similar occurrences across hosts (Like automatic software update).
	- Check [Pupy RAT](https://attack.mitre.org/software/S0192/) used techniques and try to find other matching logs in case of high suspicious activities.

# 3. Decide
Investigation has to be made on username, process name and hostname &rarr; Incident

# Known False Negatives
- Certain tools or automated software may enumerate hardware information. These tools can be exempted via user name or process arguments to eliminate potential noise.
