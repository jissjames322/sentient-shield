🛡️ Sentient Shield
Week 3 Report – Threat Detection & Incident Response
📌 Project Title

Threat Detection, Alert Triage, and Incident Response using Wazuh SIEM

👤 Author

Kaif
B.Tech CSE | SOC / Blue Team Enthusiast
GitHub: https://github.com/kaif0102/sentient-shield

📖 1. Introduction

Once advanced telemetry and detection rules are in place, a SOC must be capable of detecting threats, triaging alerts, and responding effectively.

In Week 3 of the Sentient Shield project, realistic attack scenarios were generated to validate detections, followed by structured incident response workflows including investigation, containment, and mitigation.

This week focuses on operational SOC workflows, bridging detection engineering and threat simulation.

🎯 2. Objectives

Detect simulated malicious activity

Perform alert triage and investigation

Map detections to MITRE ATT&CK

Execute containment and mitigation actions

Document incident response procedures

🧱 3. Lab Architecture
Simulated Attacker Activity
        |
        v
Windows / Linux Endpoint
        |
   (Sysmon + Logs)
        |
        v
   Wazuh Agent
        |
        v
   Wazuh Manager
        |
        v
OpenSearch Dashboard

🧰 4. Tools & Technologies Used
Tool	Purpose
Wazuh SIEM	Threat detection & alerting
Sysmon	Detailed process telemetry
OpenSearch Dashboard	Alert analysis
MITRE ATT&CK	Threat mapping
Linux iptables	Host-based containment
Windows Defender	Endpoint mitigation
🔬 5. Threat Scenarios Simulated
Scenario 1: Brute Force Attack

Multiple failed login attempts

Detection via authentication logs

Scenario 2: Suspicious Process Execution

PowerShell and CMD abuse

Detected via Sysmon + Wazuh rules

Scenario 3: Unauthorized Service Activity

Unexpected service start/stop events

These scenarios replicate common SOC incidents.

🚨 6. Alert Triage & Investigation
Triage Steps:

Validate alert authenticity

Identify affected host and user

Analyze process command-line

Correlate related events

Assess impact and severity

Key Fields Used:

process.name

process.command_line

agent.name

rule.level

rule.mitre.id

🧠 7. MITRE ATT&CK Mapping
Technique ID	Name
T1110	Brute Force
T1059	Command-Line Execution
T1059.001	PowerShell
T1543	Create or Modify System Process

Mapping alerts to MITRE improved threat context and prioritization.

🛑 8. Incident Response Actions
Containment

Block attacker IP using iptables

Disable compromised user accounts

Mitigation

Stop malicious processes

Remove unauthorized services

Patch misconfigurations

Recovery

Restore system state

Verify normal operations

📊 9. Visualization & SOC Reporting
Dashboards Used:

Incident timeline

Alert severity trends

MITRE ATT&CK technique view

These dashboards provide end-to-end visibility of incidents.

✅ 10. Gate Check Deliverables

✔ Threat scenarios executed
✔ Alerts detected and triaged
✔ MITRE ATT&CK mapping validated
✔ Incident response actions performed
✔ Evidence captured in dashboards

🔐 11. Security & Best Practices

Incidents handled in isolated lab

Least-privilege principles followed

Response actions logged and documented

Repeatable IR procedures created

📈 12. Learning Outcomes

This week provided experience in:

SOC alert triage

Incident investigation workflows

Threat containment techniques

MITRE ATT&CK-driven analysis

Operational SOC reporting

These are core skills for SOC Analyst Level 1 & 2 roles.

🚀 13. Future Enhancements

Automate response via SOAR

Integrate threat intelligence feeds

Improve alert correlation

Add forensic artifact collection

🏁 14. Conclusion

Week 3 successfully demonstrated end-to-end threat detection and incident response workflows within the Sentient Shield SOC environment.
The ability to investigate, respond, and recover from incidents strengthens overall security posture and prepares for advanced threat simulations.
