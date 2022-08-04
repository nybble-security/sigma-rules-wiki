# How to process *Persistence Via LSA Extensions* rule
This rule Detects when an attacker modifies the "REG_MULTI_SZ" value named "Extensions" to include a custom DLL to achieve persistence via lsass.
The "Extensions" list contains filenames of DLLs being automatically loaded by lsass.exe. Each DLL has its InitializeLsaExtension() method called after loading.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
