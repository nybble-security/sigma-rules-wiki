# How to process *Excel Proxy Executing Regsvr32 With Payload* rule
This rule Excel called wmic to finally proxy execute regsvr32 with the payload. An attacker wanted to break suspicious parent-child chain (Office app spawns LOLBin).But we have command-line in the event which allow us to "restore" this suspicious parent-child chain and detect it. Monitor process creation with "wmic process call create" and LOLBins in command-line with parent Office application processes.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
