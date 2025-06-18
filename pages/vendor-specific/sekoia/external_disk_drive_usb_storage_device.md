# How to process *External Disk Drive Or USB Storage Device* rule
Removable devices, like USB drives, are common in Windows environments for data transfer. Adversaries exploit these to introduce malware or exfiltrate data, leveraging their plug-and-play nature.

By focusing on first-time-seen devices, it helps identify suspicious activities linked to data exfiltration or initial access attempts.

# 1. Identify
- Check for any subsequent file access or transfer events involving the new device to assess potential data exfiltration.
- Investigate the device's history by searching for any previous connections to other systems within the network to determine if it has been used elsewhere.
- Correlate the timestamp of the registry event with user activity logs to identify which user was logged in at the time of the device connection.
- Check for any software execution from the new device or execution of file from the new device.

# 2. Contextualize
- Pivot to SIEM and check server logs the environment:
	- Assess whether this behavior is prevalent in the environment by looking for similar occurrences across hosts (Already used USB key).
	- Check if name can match USB device used for software update. 

# 3. Decide
Investigation has to be made on device name, timestamp and filename &rarr; Incident

# Known False Negatives
- Frequent use of company-issued USB drives for legitimate data transfer can trigger alerts.
- IT department activities involving USB devices for maintenance or troubleshooting can appear suspicious.
