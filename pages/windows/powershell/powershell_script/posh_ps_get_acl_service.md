# How to process *Service Registry Permissions Weakness Check* rule
This rule Adversaries may execute their own malicious payloads by hijacking the Registry entries used by services.
Adversaries may use flaws in the permissions for registry to redirect from the originally specified executable to one that they control, in order to launch their own code at Service start.
Windows stores local service configuration information in the Registry under HKLM\SYSTEM\CurrentControlSet\Services

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
