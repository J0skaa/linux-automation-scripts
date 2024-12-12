## Linux Automation Scripts

This repository contains various Bash scripts for Linux automation and basic cybersecurity tasks.

### Structure
- `scripts/`: Contains all the scripts.

## Included Scripts

### 1. system_info.sh
A script that provides basic system information and performs a basic security check.

#### Features:
- Displays system hostname, uptime, current users, memory usage, and disk usage.
- Checks for users with default or no passwords set.

#### Usage:
Run the script with the following command:
```bash
./scripts/system_info.sh

### 2. check_file_permissions.sh
A script to find files in the system that are world-writable, which could pose a security risk.

#### Features:
- Scans the system for files with world-writable permissions.
- Ignores files on other partitions for efficiency and security.

#### Usage:
Run the script with the following command:
```bash
./scripts/check_file_permissions.sh

