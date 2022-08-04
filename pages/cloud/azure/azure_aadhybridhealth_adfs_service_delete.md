# How to process *Azure Active Directory Hybrid Health AD FS Service Delete* rule
This rule This detection uses azureactivity logs (Administrative category) to identify the deletion of an Azure AD Hybrid health AD FS service instance in a tenant.
A threat actor can create a new AD Health ADFS service and create a fake server to spoof AD FS signing logs.
The health AD FS service can then be deleted after it is not longer needed via HTTP requests to Azure.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
