# How to process *Persistence Via Disk Cleanup Handler - NewEntry* rule
This rule Detects when an attacker modifies values of the Disk Cleanup Handler in the registry to achieve persistence.
The disk cleanup manager is part of the operating system. It displays the dialog box […] The user has the option of enabling or disabling individual handlers by selecting or clearing their check box in the disk cleanup manager's UI. Although Windows comes with a number of disk cleanup handlers, they aren't designed to handle files produced by other applications. Instead, the disk cleanup manager is designed to be flexible and extensible by enabling any developer to implement and register their own disk cleanup handler. Any developer can extend the available disk cleanup services by implementing and registering a disk cleanup handler.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
