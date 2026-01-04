🛡️ Sentient Shield
Week 1 Report – SOC Setup & Log Onboarding using Wazuh SIEM
📌 Project Title

Security Operations Center (SOC) Setup and Endpoint Log Onboarding using Wazuh SIEM

👤 Author

Kaif
B.Tech CSE | SOC / Blue Team Enthusiast
GitHub: https://github.com/kaif0102/sentient-shield

📖 1. Introduction

A Security Operations Center (SOC) relies on centralized log collection, visibility, and alerting to detect security incidents.
The first step in building an effective SOC is deploying a SIEM (Security Information and Event Management) platform and onboarding endpoints for continuous monitoring.

In Week 1 of the Sentient Shield project, a Wazuh-based SOC environment was designed and deployed to collect, analyze, and visualize security logs from Windows and Linux endpoints.

This week focuses on SOC foundation building, which is critical before detection engineering and threat simulation.

🎯 2. Objectives

Deploy a functioning SIEM using Wazuh

Configure Wazuh Manager and OpenSearch Dashboard

Install and register Wazuh agents

Collect endpoint logs from Windows and Linux

Verify alert visibility in OpenSearch

🧱 3. Lab Architecture
Windows / Linux Endpoints
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
Wazuh Manager	Central log analysis
Wazuh Agent	Endpoint monitoring
OpenSearch	Log indexing
OpenSearch Dashboard	Visualization
Windows Event Logs	Endpoint telemetry
Linux Syslogs	System monitoring
⚙️ 5. SOC Deployment Steps
5.1 Wazuh Manager Installation

Installed Wazuh Manager on Linux server

Enabled services:

Wazuh Manager

Wazuh Indexer

OpenSearch Dashboard

5.2 Agent Installation & Registration
Windows Agent

Installed Wazuh agent

Registered agent with manager

Enabled:

Security Event Logs

PowerShell Logs

System Logs

Linux Agent

Installed Wazuh agent

Registered with manager

Enabled:

Authentication logs

Syslog monitoring

📥 6. Log Onboarding & Verification
Logs Successfully Collected:

Windows Security Events

Process creation events

Authentication logs

Linux syslogs

Verification

Logs visible in:

wazuh-alerts-*


Agent status confirmed as Active

🚨 7. Alerts & Visibility
Example Alerts Observed:

Successful and failed logins

Process execution events

System service activity

Fields Analyzed:

@timestamp

agent.name

rule.description

event.action

process.name

This confirms proper log ingestion and SIEM functionality.

📊 8. OpenSearch Dashboard
Dashboards Created:

Agent health overview

Alert severity distribution

Authentication activity timeline

These dashboards provide real-time SOC visibility.

✅ 9. Gate Check Deliverables

✔ Wazuh Manager deployed
✔ Agents installed and registered
✔ Logs ingested from endpoints
✔ Alerts visible in OpenSearch
✔ SOC dashboard functional

🔐 10. Security & Best Practices

Lab deployed in isolated environment

No production data used

Default credentials changed

Secure communication between agents and manager

📈 11. Learning Outcomes

Through this week, I gained hands-on experience in:

SIEM architecture & deployment

Log onboarding and validation

Endpoint monitoring fundamentals

SOC visibility and alert triage

OpenSearch dashboard creation

This forms the foundation of all subsequent SOC operations.

🚀 12. Future Scope

Add custom detection rules

Enable Sysmon for advanced telemetry

Integrate threat intelligence feeds

Implement detection engineering workflows

🏁 13. Conclusion

Week 1 successfully established a fully functional SOC environment using Wazuh SIEM.
This foundation enables advanced detection, threat simulation, and incident response workflows implemented in later weeks of the Sentient Shield project.
