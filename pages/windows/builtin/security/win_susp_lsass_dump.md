# How to process *Password Dumper Activity on LSASS* rule
Identifies handle requests for the Local Security Authority Subsystem Service (LSASS) object access with specific access masks that many tools with a capability to dump memory to disk use (0x1fffff, 0x1010, 0x120089). This rule is tool agnostic as it has been validated against a host of various LSASS dump tools such as SharpDump, Procdump, Mimikatz, Comsvcs etc. It detects this behavior at a low level and does not depend on a specific tool or dump file name.

# 1. Identify
- Search the hostname into the RAW Event (host &rarr; hostname)
- Identify type of server (Active Directory, DNS, Application, Web, ...)
- Identify the process responsible for creating the dump file.
- Investigate the process execution chain (parent process tree) for unknown processes.

# 2. Contextualize
- Pivot to SIEM and check if there is unusual actions after this detection:
  - From server type, determine if this server can be risky target (Like Active Directory server)
  - Identify the user account that performed the action and whether it should perform this kind of action.
  - New connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - Downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)


# 3. Decide
Investigation has to be made on source hostname and server type &rarr; Incident

# Known False Negatives
- Source process is a legit (Correct path and signed) antivirus or EDR. Some of those tools are getting handles on LSSAS executable.
- Microsoft Monitoring Agent binary pmfexe.exe accesses Lsass.exe with at least 0x10 permissions as System.
