🛡️ Sentient Shield
Week 4 Report – Ransomware Threat Simulation using Atomic Red Team
📌 Project Title

Ransomware Attack Simulation and Kill Chain Visualization using Atomic Red Team, Wazuh SIEM, and OpenSearch

👤 Author

Kaif
B.Tech CSE | SOC / Blue Team Enthusiast
GitHub: https://github.com/kaif0102/sentient-shield

📖 1. Introduction

Modern ransomware attacks follow structured attack patterns mapped under the MITRE ATT&CK framework. One critical ransomware behavior is inhibiting system recovery by deleting Shadow Volume Copies, preventing victims from restoring files.

This project simulates a realistic ransomware technique (T1490 – Inhibit System Recovery) using the Atomic Red Team framework, detects it using Wazuh SIEM, and visualizes the attack Kill Chain in OpenSearch Dashboard.

This lab demonstrates threat simulation, detection engineering, MITRE mapping, and SOC visualization, replicating real-world Blue Team workflows.

🎯 2. Objectives

Simulate ransomware-like behavior safely

Detect malicious activity using Wazuh

Map detections to MITRE ATT&CK

Visualize the Kill Chain from execution to impact

Build a portfolio-grade SOC project

🧱 3. Lab Architecture
Attacker Simulation (Atomic Red Team)
            |
            v
Windows Target (Wazuh Agent + Sysmon)
            |
            v
Wazuh Manager (SIEM)
            |
            v
OpenSearch Dashboard (Visualization)

Components Used
Component	Purpose
Windows 10 / Server	Victim machine
Atomic Red Team	Adversary simulation
Wazuh Agent	Endpoint monitoring
Wazuh Manager	Log analysis & correlation
OpenSearch	Alert visualization
Sysmon	Detailed process telemetry
🧠 4. MITRE ATT&CK Mapping
Techniques Simulated
Tactic	Technique ID	Name
Execution	T1059	Command-Line Execution
Execution	T1059.003	PowerShell
Impact	T1490	Inhibit System Recovery
🔬 5. Threat Simulation Details
Technique Simulated

T1490 – Inhibit System Recovery

Ransomware deletes Shadow Volume Copies to prevent file recovery.

Atomic Red Team Test Used
Invoke-AtomicTest T1490

Underlying Command Executed
vssadmin delete shadows /all /quiet


This command mimics ransomware behavior without encrypting files, making it safe for lab environments.

🛠️ 6. Detection & Logging Configuration
Windows Logging Enabled

PowerShell Script Block Logging

Process Creation Auditing

Sysmon Event Logging

Wazuh Detection Capabilities

Process execution monitoring

PowerShell command inspection

MITRE ATT&CK rule mapping

🚨 7. Detection Results (Wazuh)
Observed Alerts

Execution of vssadmin.exe

Suspicious PowerShell activity

MITRE ATT&CK mapping to T1490

Sample Alert Fields
rule.mitre.id: T1490
rule.mitre.tactic: impact
process.name: vssadmin.exe


This confirms successful detection of ransomware-like activity.

🔗 8. Kill Chain Analysis
Attack Flow
Initial Access
     ↓
Execution (PowerShell / CMD)
     ↓
Impact (Shadow Copy Deletion)

Kill Chain Mapping
Sequence	Event	MITRE
1	PowerShell launched	T1059
2	Command execution	T1059.003
3	Shadow copies deleted	T1490
📊 9. Visualization in OpenSearch
Dashboard Components

Kill Chain Bar Chart (MITRE Tactics)

Alert Timeline

Alerts Data Table

Visualization Outcome

The dashboard clearly shows:

Execution → Impact progression

Timestamped alerts

MITRE-tagged detections

This provides SOC analysts with a clear attack narrative.

✅ 10. Gate Check Deliverables

✔ Atomic Red Team simulation executed
✔ Wazuh alerts generated
✔ MITRE ATT&CK mapping verified
✔ Kill Chain visualized in OpenSearch
✔ Evidence screenshots captured

🔐 11. Security & Ethical Considerations

Tests conducted in isolated lab

No real data encrypted or destroyed

Atomic Red Team used in safe test mode

No production systems impacted

📈 12. Learning Outcomes

Through this project, I gained hands-on experience in:

Adversary simulation (Red Team perspective)

Detection engineering (Blue Team)

MITRE ATT&CK mapping

SOC alert triage & visualization

Kill Chain analysis

This mirrors real-world SOC analyst and detection engineer workflows.

🏁 13. Conclusion

This project successfully demonstrates how ransomware behaviors can be simulated, detected, mapped, and visualized using open-source SOC tools.
The structured Kill Chain visualization enhances situational awareness and improves incident response readiness.
