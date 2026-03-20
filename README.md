# OSS Audit — Git
**Student:** Jiya Jain
**Roll Number:** 24MIP10011
**Course:** Open Source Software
**Chosen Software:** Git (Licensed under GPL v2)

---

## About This Project
This repository contains the shell scripts submitted as part of the
Open Source Audit capstone project. The audit focuses on Git — a free
and open source distributed version control system created by Linus
Torvalds in 2005.

---

## Repository Structure
```
oss-audit-24MIP10011/
├── script1_system_identity.sh
├── script2_package_inspector.sh
├── script3_disk_permission_auditor.sh
├── script4_log_analyzer.sh
├── script5_manifesto_generator.sh
└── README.md
```

## Scripts Overview

### Script 1 — System Identity Report
Displays a welcome screen showing the Linux distribution, kernel
version, logged-in user, home directory, uptime, date/time, and
the open source license covering the OS.
**Concepts used:** variables, command substitution, echo, formatting

### Script 2 — FOSS Package Inspector
Checks if Git is installed, displays its version and location,
and uses a case statement to print a philosophy note about the package.
**Concepts used:** if-then-else, case statement, command -v, pipe, grep

### Script 3 — Disk and Permission Auditor
Loops through key system directories and reports their permissions,
owner, group, and disk usage. Also checks Git config file permissions.
**Concepts used:** for loop, arrays, if -d check, ls, awk, du

### Script 4 — Log File Analyzer
Reads a log file line by line, counts how many lines contain a
keyword, and prints the last 5 matching lines.
**Concepts used:** while-read loop, if-then, counter variables, $1 argument, grep, tail

### Script 5 — Open Source Manifesto Generator
Asks the user three interactive questions and generates a
personalised open source philosophy statement saved to a .txt file.
**Concepts used:** read -p, string concatenation, file write with > and >>, cat, date

---

## How to Run

### Prerequisites
- A Linux system (or GitHub Codespaces / WSL2 on Windows)
- Git installed (verify with `git --version`)
- Bash shell

### Steps

**1. Clone the repository**
```bash
git clone https://github.com/YOUR_USERNAME/oss-audit-24MIP10011
cd oss-audit-24MIP10011
```

**2. Make all scripts executable**
```bash
chmod +x script1_system_identity.sh
chmod +x script2_package_inspector.sh
chmod +x script3_disk_permission_auditor.sh
chmod +x script4_log_analyzer.sh
chmod +x script5_manifesto_generator.sh
```

**3. Run each script**
```bash
# Script 1 - System Identity
./script1_system_identity.sh

# Script 2 - Package Inspector
./script2_package_inspector.sh

# Script 3 - Disk Auditor
./script3_disk_permission_auditor.sh

# Script 4 - Log Analyzer (provide a log file path and keyword)
./script4_log_analyzer.sh /var/log/syslog error
# Or use a sample log file:
./script4_log_analyzer.sh sample.log error

# Script 5 - Manifesto Generator (interactive)
./script5_manifesto_generator.sh
```

---

## Dependencies
- `bash` — all scripts are written in bash
- `git` — required for Script 2
- `awk`, `grep`, `du`, `df` — standard Linux utilities (pre-installed)
- `uname`, `uptime`, `whoami`, `date` — standard Linux commands

---

## License
This project is submitted for academic purposes under the
Open Source Software course at VIT.
