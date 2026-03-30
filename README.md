Open Source Software Audit: MySQL

Repository Name: oss-audit-24MIP10116
Student Name: Aarush Kumar
Registration Number: 24MIP10116
Course: Open Source Software (NGMC Course)
Software Choice: MySQL

📑 Project Overview

This repository contains the technical shell scripting component of "The Open Source Audit" capstone project.

The project focuses on MySQL, a relational database known for its unique GPL v2 / Commercial dual-license model.

The included scripts demonstrate:

Practical Linux system administration
Automation techniques
Core open-source philosophies like transparency and collaboration
🛠️ Script Documentation
1. System Identity Report (system_identity.sh)

Purpose:
Acts as a system welcome screen displaying:

Distribution name
Kernel version
Current user
Home directory
System uptime

Concepts Used:
Variables, echo, command substitution $(), output formatting

Run:

./system_identity.sh

2. FOSS Package Inspector (pkg_inspector.sh)

Purpose:

Checks if MySQL is installed
Retrieves version
Uses a case statement to describe the package philosophically

Concepts Used:
if-then-else, case, dpkg -l / rpm -q, grep

Run:

./pkg_inspector.sh

3. Disk and Permission Auditor (disk_auditor.sh)

Purpose:
Loops through critical system and MySQL directories to report:

Disk usage
Ownership
Permissions

Concepts Used:
for loop, df, ls -ld, awk / cut

Run:

./disk_auditor.sh

4. Log File Analyzer (log_analyzer.sh)

Purpose:
Reads a log file line-by-line and counts occurrences of a keyword (e.g., "ERROR").

Concepts Used:
while-read loop, if-then, counters, command-line arguments $1

Run:

./log_analyzer.sh /var/log/mysql/error.log ERROR

5. Open Source Manifesto Generator (manifesto_gen.sh)

Purpose:

Asks user 3 questions interactively
Generates a personalized open-source philosophy
Saves output to a .txt file

Concepts Used:
read, string concatenation, file writing (>), date

Run:

./manifesto_gen.sh

🚀 Execution Instructions
Prerequisites
Linux environment (Ubuntu/Debian or VM)
Root / sudo access (required for log reading)
mysql-server installed (for Script 2 detection)
Step-by-Step Setup
1. Clone the Repository
git clone https://github.com/AarushKumar08/oss-audit-24MIP10116.git
cd oss-audit-24MIP10116

2. Grant Execution Permissions
chmod +x *.sh

3. Run the Scripts

Use:

./filename.sh




📦 Dependencies
Shell: GNU Bash
Utilities: grep, awk, cut, df, ls, uptime, whoami
Package Manager:
dpkg (Debian/Ubuntu)
rpm (RHEL/CentOS)
