# Linux Automation Portfolio

## Overview

 A collection of Bash scripts designed to automate repetitive and time-consuming Linux system administration tasks. This project reduces manual intervention in daily sysadmin workflows — covering user management, system monitoring, log maintenance, and backup operations.

---

## Features

### 1. User Onboarding
  Automates bulk user creation from a plain-text list, eliminating the need to manually run `useradd` for each user. Ideal for onboarding multiple users to a server quickly and consistently.

  - Reads usernames from an input file
  - Creates user accounts with appropriate permissions
  - Reduces provisioning time from minutes to seconds

### 2. System Health Monitor
  - Monitors critical system resources and provides a snapshot of server health.

  - Tracks disk usage across mounted partitions
  - Monitors RAM utilization in real time
  - Can be scheduled via cron for continuous monitoring

### 3. Log Maintenance
   Keeps the server clean by automatically archiving and compressing old log files.

  - Identifies logs older than a defined threshold
  - Compresses and archives them to free up disk space
  - Helps maintain system performance and storage hygiene

### 4. Backup Automation
  Creates timestamped backups of specified directories, ensuring data is recoverable and backups are organized chronologically.

  - Generates backups with date-time stamps for easy identification
  - Stores backups in a structured directory
  - Can be scheduled with cron for fully automated daily backups



## Usage

  Clone the repository and run any script from the `scripts/` directory with sudo permissions:

  git clone https://github.com/zerotcyber/linux-automation-portfolio.git
  cd linux-automation-portfolio/scripts

# Example: Run system health check
  sudo bash system_health.sh

# Example: Run user onboarding
  sudo bash user_onboarding.sh

# Example: Run backup
  sudo bash backup.sh


> **Note:** Scripts must be run with `sudo` as they perform system-level operations.

---

## Automating with Cron

  To schedule the system health monitor to run every day at 8AM:

```bash
crontab -e
# Add the following line:
0 8 * * * /path/to/scripts/system_health.sh
```

---

## Technologies Used

- **Bash** — scripting and automation
- **Linux** (Ubuntu/Debian/CentOS) — target operating system
- **Cron** — task scheduling
- **systemctl** — service management
- **Standard Linux utilities** — `tar`, `gzip`, `df`, `free`, `useradd`

---

## Outcome

This project demonstrates practical sysadmin automation skills including:
- Writing production-ready Bash scripts
- Implementing scheduled tasks using cron
- Managing users, storage, and logs programmatically
- Structuring a DevOps-ready automation portfolio

---

[GitHub](https://github.com/zerotcyber) | [LinkedIn](https://linkedin.com/in/chimezie-ani-809b22275) | degentechy@gmail.com

