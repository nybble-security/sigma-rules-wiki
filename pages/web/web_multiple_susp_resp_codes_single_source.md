# How to process *Multiple Suspicious Resp Codes Caused by Single Client* rule
This rule Detects possible exploitation activity or bugs in a web application

# 1. Identify
- grab source IP for future researches

# 2. Contextualize
- grab and analyse url.query field
- go to SIEM and check source IP activity in all logs, focus on HTTP/HTTPS requests
- check http request headers and bodies which have caused the status_code logged in the alert

# 3. Decide
- unusual query, or high request rate, or unusual http bodies or requests &rarr; Incident
- all legitimous queries, or no suspicious activity from the source IP &rarr; No Incident 

# Known False Negatives
None yet.
