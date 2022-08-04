# How to process *Suspicious In-Memory Module Execution* rule
This rule Detects the access to processes by other suspicious processes which have reflectively loaded libraries in their memory space. An example is SilentTrinity C2 behaviour. Generally speaking, when Sysmon EventID 10 cannot reference a stack call to a dll loaded from disk (the standard way), it will display "UNKNOWN" as the module name. Usually this means the stack call points to a module that was reflectively loaded in memory. Adding to this, it is not common to see such few calls in the stack (ntdll.dll --> kernelbase.dll --> unknown) which essentially means that most of the functions required by the process to execute certain routines are already present in memory, not requiring any calls to external libraries. The latter should also be considered suspicious.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
