# How to process *CobaltStrike Service Installations in Registry* rule
This rule Detects known malicious service installs that appear in cases in which a Cobalt Strike beacon elevates privileges or lateral movement. We can also catch this by system log 7045 (https://github.com/SigmaHQ/sigma/blob/master/rules/windows/builtin/win_cobaltstrike_service_installs.yml) In some SIEM you can catch those events also in HKLM\System\ControlSet001\Services or HKLM\System\ControlSet002\Services, however, this rule is based on a regular sysmon's events.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
