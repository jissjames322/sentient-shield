Simulate Ransomware Behaviour (T1490)
T1490 – Inhibit System Recovery
Ransomware deletes Shadow Copies to prevent recovery.

Run Atomic Test for T1490:
 Invoke-AtomicTest T1490
This executes:
 vssadmin delete shadows /all /quiet


Discovery Tactic
T1082 – System Information Discovery:
 Invoke-AtomicTest T1082

T1016 – Network Configuration Discovery:
 Invoke-AtomicTest T1016

It Generates:
Discovery alerts,
Command-line telemetry,
Sysmon process logs,

Execution Tactic
T1059.001 – PowerShell Execution:
 Invoke-AtomicTest T1059.001


Maps to:
Execution,
Windows Command Shell,
PowerShell abuse,

Persistence / Privilege Escalation
T1547 – Registry Run Keys:
 Invoke-AtomicTest T1547.001

Generates:

Registry modification events

Persistence alerts
