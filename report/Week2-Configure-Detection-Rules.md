🛡️ Sentient Shield
Week 2 Report – Endpoint Telemetry & Detection Engineering
📌 Project Title

Endpoint Telemetry Enhancement and Detection Engineering using Sysmon and Wazuh

👤 Author

Kaif
B.Tech CSE | SOC / Blue Team Enthusiast
GitHub: https://github.com/kaif0102/sentient-shield

📖 1. Introduction

After establishing a functional SOC environment in Week 1, the next critical step is enhancing endpoint visibility.
Basic logs alone are insufficient to detect advanced threats such as malware execution, lateral movement, and persistence.

In Week 2 of the Sentient Shield project, advanced endpoint telemetry was enabled using Sysmon, and custom detection rules were engineered in Wazuh to identify suspicious system and process activity.

This week focuses on detection engineering, a core responsibility of SOC analysts and blue team professionals.

🎯 2. Objectives

Deploy Sysmon on Windows endpoints

Collect detailed process and system telemetry

Integrate Sysmon logs with Wazuh SIEM

Create and validate custom detection rules

Generate and analyze security alerts

🧱 3. Lab Architecture
Windows Endpoint
   |
   |-- Sysmon (Advanced Telemetry)
   |-- Windows Event Logs
   |
Wazuh Agent
   |
Wazuh Manager
   |
OpenSearch Dashboard

🧰 4. Tools & Technologies Used
Tool	Purpose
Sysmon	Advanced process & event logging
Wazuh SIEM	Detection & alerting
Wazuh Agent	Endpoint telemetry forwarding
OpenSearch	Log indexing
OpenSearch Dashboard	Visualization
MITRE ATT&CK	Detection mapping
⚙️ 5. Sysmon Deployment
5.1 Installation

Sysmon was installed on the Windows endpoint with a security-focused configuration to log:

Process creation

Network connections

File creation

Registry modifications

Example command:

Sysmon64.exe -i sysmonconfig.xml

5.2 Event IDs Monitored
Event ID	Description
1	Process Creation
3	Network Connection
7	Image Loaded
11	File Creation
13	Registry Modification
🔍 6. Detection Engineering
6.1 Custom Wazuh Rules

Custom rules were created to detect:

Suspicious PowerShell execution

Execution from unusual directories

Potential malware behavior

Living-off-the-Land (LOLbins)

Example detection logic:

powershell.exe with encoded commands

cmd.exe spawned from Office applications

6.2 MITRE ATT&CK Mapping
Technique ID	Name
T1059	Command-Line Execution
T1059.001	PowerShell
T1105	Ingress Tool Transfer
T1036	Masquerading

Each alert was enriched with MITRE technique and tactic metadata.

🚨 7. Alert Generation & Validation
Test Activities Performed:

PowerShell execution

Command prompt execution

File creation in sensitive directories

Results:

FIM Alerts successfully triggered in Wazuh

Alert severity aligned with behavior risk

This confirms detection rules were effective and reliable.

📊 8. OpenSearch Dashboard Visualization
Dashboards Created:

Process execution timeline

FIM Alert severity distribution


These dashboards enable quick triage and investigation for SOC analysts.

✅ 9. Gate Check Deliverables

✔ Sysmon deployed and configured
✔ Advanced telemetry ingested
✔ Custom Wazuh rules created
✔ FIM Alerts validated via test events
✔ Dashboards updated with new telemetry

🔐 10. Security & Best Practices

Telemetry collected only from lab systems

No sensitive production data ingested

Logging optimized to reduce noise

Detection rules documented and version-controlled

📈 11. Learning Outcomes

This week provided hands-on experience in:

Endpoint telemetry engineering

Sysmon event analysis

Writing SIEM detection rules

MITRE ATT&CK-based detections

SOC alert validation workflows

These skills are essential for SOC Analysts, Detection Engineers, and Blue Team roles.

🚀 12. Future Scope

Add false-positive tuning

Correlate multi-event detections

Integrate behavioral analytics

Prepare detections for SOAR response

🏁 13. Conclusion

Week 2 successfully enhanced endpoint visibility and detection capabilities within the Sentient Shield SOC environment.
The combination of Sysmon telemetry and Wazuh detection engineering significantly improves the ability to detect malicious behavior early in the attack lifecycle.
