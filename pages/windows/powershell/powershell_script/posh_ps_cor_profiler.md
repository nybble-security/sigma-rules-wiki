# How to process *Registry-Free Process Scope COR_PROFILER* rule
This rule Adversaries may leverage the COR_PROFILER environment variable to hijack the execution flow of programs that load the .NET CLR.
The COR_PROFILER is a .NET Framework feature which allows developers to specify an unmanaged (or external of .NET) profiling DLL to be loaded into each .NET process that loads the Common Language Runtime (CLR).
These profiliers are designed to monitor, troubleshoot, and debug managed code executed by the .NET CLR.
(Citation: Microsoft Profiling Mar 2017)
(Citation: Microsoft COR_PROFILER Feb 2013)

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
