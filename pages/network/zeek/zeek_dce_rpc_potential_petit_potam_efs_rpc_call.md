# How to process *Potential PetitPotam Attack Via EFS RPC Calls* rule
This rule Detects usage of the windows RPC library Encrypting File System Remote Protocol (MS-EFSRPC). Variations of this RPC are used within the attack refereed to as PetitPotam.
The usage of this RPC function should be rare if ever used at all.
Thus usage of this function is uncommon enough that any usage of this RPC function should warrant further investigation to determine if it is legitimate.
 View surrounding logs (within a few minutes before and after) from the Source IP to. Logs from from the Source IP would include dce_rpc, smb_mapping, smb_files, rdp, ntlm, kerberos, etc..'

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
