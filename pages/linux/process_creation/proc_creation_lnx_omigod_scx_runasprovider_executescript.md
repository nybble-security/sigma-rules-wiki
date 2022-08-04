# How to process *OMIGOD SCX RunAsProvider ExecuteScript* rule
This rule Rule to detect the use of the SCX RunAsProvider ExecuteScript to execute any UNIX/Linux script using the /bin/sh shell. Script being executed gets created as a temp file in /tmp folder with a scx* prefix. Then it is invoked from the following directory /etc/opt/microsoft/scx/conf/tmpdir/. The file in that directory has the same prefix scx*. SCXcore, started as the Microsoft Operations Manager UNIX/Linux Agent, is now used in a host of products including Microsoft Operations Manager. Microsoft Azure, and Microsoft Operations Management Suite.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
