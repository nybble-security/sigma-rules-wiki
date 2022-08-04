# How to process *Suspicious Remote Thread Created* rule
This rule Offensive tradecraft is switching away from using APIs like "CreateRemoteThread", however, this is still largely observed in the wild. This rule aims to detect suspicious processes (those we would not expect to behave in this way like word.exe or outlook.exe) creating remote threads on other processes. It is a generalistic rule, but it should have a low FP ratio due to the selected range of processes.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
