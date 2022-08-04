# How to process *Bad Opsec Defaults Sacrificial Processes With Improper Arguments* rule
This rule Detects attackers using tooling with bad opsec defaults e.g. spawning a sacrificial process to inject a capability into the process without taking into account how the process is normally run, one trivial example of this is using rundll32.exe without arguments as a sacrificial process (default in CS, now highlighted by c2lint), running WerFault without arguments (Kraken - credit am0nsec), and other examples.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
