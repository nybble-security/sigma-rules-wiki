# How to process *Suspicious Get-Variable.exe Creation* rule
This rule Get-Variable is a valid PowerShell cmdlet
WindowsApps is by default in the path where PowerShell is executed.
So when the Get-Variable command is issued on PowerShell execution, the system first looks for the Get-Variable executable in the path and executes the malicious binary instead of looking for the PowerShell cmdlet.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
