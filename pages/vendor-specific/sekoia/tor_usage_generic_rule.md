# How to process *TOR Usage Generic Rule* rule
This rule is triggered when an TOR IP address indicator from the Threat Intel feed or a threat intelligence integration matches against a network, proxy event.

# 1. Identify
- Investigate the IP address, which can be found in the IP fields:
  - Check the reputation of the IP address in resources like [VirusTotal](https://www.virustotal.com/gui/home/search), Hybrid-Analysis, CISCO Talos, Any.run, [Shodan](https://www.shodan.io/), [Onyphe](https://search.onyphe.io/), etc.
  - Execute a reverse DNS lookup to retrieve hostnames associated with the given IP address.
- Check if IP address is related to Cloud Provider and is shared between multiple servers. TOR nodes can be hosted with other legit servers, in case check if connection has been made on TOR network port for this IP.

# 2. Contextualize
- Pivot to SIEM and check network logs for the environment:
	- Assess whether this behavior is prevalent in the environment by looking for similar occurrences across hosts.
	- Identify the process responsible for the connection, and investigate the process execution chain (parent process tree) for unknown processes. Examine their executable files for prevalence, whether they are located in expected locations, and if they are signed with valid digital signatures.
	- Check usual network port in the environment (NTP, HTTP, HTTPS, ...).

# 3. Decide
Investigation has to be made on source/destination IP and port, action (allowed or blocked) &rarr; Incident

# Known False Negatives
- Legit NTP server hosted on Cloud Provider servers behind the same IP as TOR node.
