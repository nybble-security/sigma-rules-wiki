# How to process *Suspicious Rundll32 Setupapi.dll Activity* rule
This rule setupapi.dll library provide InstallHinfSection function for processing INF files. INF file may contain instructions allowing to create values in the registry, modify files and install drivers. This technique could be used to obtain persistence via modifying one of Run or RunOnce registry keys, run process or use other DLLs chain calls (see references) InstallHinfSection function in setupapi.dll calls runonce.exe executable regardless of actual content of INF file.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
