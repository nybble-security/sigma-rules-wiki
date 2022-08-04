# How to process *AWS Attached Malicious Lambda Layer* rule
This rule Detects when an user attached a Lambda layer to an existing function to override a library that is in use by the function, where their malicious code could utilize the function's IAM role for AWS API calls. This would give an adversary access to the privileges associated with the Lambda service role that is attached to that function.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
