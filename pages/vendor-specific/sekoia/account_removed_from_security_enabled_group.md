# How to process *Account Removed From A Security Enabled Group* rule
Detection in order to investigate who has removed a specific Domain User in Domain Admins or Group Policy Creator Owners (Security event 4729). A member can be removed from Security Enabled Group after successful access or if attackers trying to escalate privileges.

# 1. Identify
- Review if the user who performed the action look suspicious (Difference between name and naming convention, alogrithm generated name, ...).
- Examine the object (User or group) removed from the group, if it look suspicious (Difference between name and naming convention, alogrithm generated name, ...).
- Examine the security group from which user has been deleted, can be domain admin group in this case alert is critical.

# 2. Contextualize
- Pivot to SIEM and check server logs the environment:
	- Assess whether this behavior is unusual compared to working hours in the source country.
	- Check if multiple users have been removed from multiple groups, in case this can match a automatic cleaning tasks.

# 3. Decide
Investigation has to be made on username, group name and object name &rarr; Incident

# Known False Negatives
- N/A
