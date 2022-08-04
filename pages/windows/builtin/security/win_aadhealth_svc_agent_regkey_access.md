# How to process *Azure AD Health Service Agents Registry Keys Access* rule
This rule This detection uses Windows security events to detect suspicious access attempts to the registry key values and sub-keys of Azure AD Health service agents (e.g AD FS).
Information from AD Health service agents can be used to potentially abuse some of the features provided by those services in the cloud (e.g. Federation).
This detection requires an access control entry (ACE) on the system access control list (SACL) of the following securable object: HKLM:\SOFTWARE\Microsoft\ADHealthAgent.
Make sure you set the SACL to propagate to its sub-keys.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
