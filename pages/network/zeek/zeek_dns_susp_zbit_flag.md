# How to process *Suspicious DNS Z Flag Bit Set* rule
This rule The DNS Z flag is bit within the DNS protocol header that is, per the IETF design, meant to be used reserved (unused). Although recently it has been used in DNSSec, the value being set to anything other than 0 should be rare. Otherwise if it is set to non 0 and DNSSec is being used, then excluding the legitimate domains is low effort and high reward. Determine if multiple of these files were accessed in a short period of time to further enhance the possibility of seeing if this was a one off or the possibility of larger sensitive file gathering. This Sigma query is designed to accompany the Corelight Threat Hunting Guide, which can be found here: https://www3.corelight.com/corelights-introductory-guide-to-threat-hunting-with-zeek-bro-logs

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
