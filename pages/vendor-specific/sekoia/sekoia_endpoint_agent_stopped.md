# How to process *Sekoia.io Endpoint Agent Stopped* rule
Identifies the EDR/AV/Security Monitoring agent has stopped and is no longer running on the host. Adversaries may attempt to
disable security monitoring tools in an attempt to evade detection or prevention capabilities during an intrusion. This
may also indicate an issue with the agent itself and should be addressed to ensure defensive measures are back in a
stable state.

# 1. Identify
- Review the event logs to identify the exact process and command used to terminate the agent, focusing on the process names and arguments such as "net.exe", "sc.exe", "systemctl", "kill" and "pkill" with arguments like "stop", "uninstall", or "disable".
- Check the timeline of events around the termination to identify any preceding suspicious activities or anomalies that might indicate an adversary's presence or actions.
- Investigate the user account associated with the process termination to determine if it was authorized or if there are signs of account compromise.
- Verify the current status of the agent on the affected host, ensuring that security monitoring is restored.

# 2. Contextualize
- Pivot to SIEM and check if there is unusual actions after this detection:
	- From server type, determine if this server can be risky target (Like Active Directory, LDAP, DNS server).
	- Identify the user account that performed the action and whether it should perform this kind of action.
	- Based on the command and argument, determine if this can be related to administrator action or unusual action to kill process.
	- Check if there is multiple restart in same timerange and if restarts seem to be automated.

# 3. Decide
Investigation has to be made on source hostname, command process and arguments &rarr; Incident

# Known False Negatives
- Restart of agents during update process.
