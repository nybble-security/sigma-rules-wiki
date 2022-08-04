# How to process *OMIGOD HTTP No Authentication RCE* rule
This rule Detects the exploitation of OMIGOD (CVE-2021-38647) which allows remote execute (RCE) commands as root with just a single unauthenticated HTTP request. Verify, successful, exploitation by viewing the HTTP client (request) body to see what was passed to the server (using PCAP). Within the client body is where the code execution would occur. Additionally, check the endpoint logs to see if suspicious commands or activity occurred within the timeframe of this HTTP request.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
