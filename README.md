## Linux Automation Scripts

This repository contains various Bash scripts for Linux automation and basic cybersecurity tasks.

### Structure
- `scripts/`: Contains all the scripts.
- `.github/workflows/`: Contains the GitHub Actions workflow for automated testing and linting.

## Included Scripts

### 1. `system_info.sh`
A script that provides basic system information and performs a basic security check.

#### Features:
- Displays system hostname, uptime, current users, memory usage, and disk usage.
- Checks for users with default or no passwords set.

#### Usage:
Run the script with the following command:

./scripts/system_info.sh


### 2. `check_file_permissions.sh`
A script to find files in the system that are world-writable, which could pose a security risk.

#### Features:
Scans the system for files with world-writable permissions.
Ignores files on other partitions for efficiency and security.
#### Usage:
Run the script with the following command:

./scripts/check_file_permissions.sh


### 3. `run_all_checks.sh`
A script that runs all available checks for convenience.

#### Features:
Executes system_info.sh and check_file_permissions.sh in sequence.
Provides consolidated output for easier analysis.
#### Usage:
Run the script with the following command:

./scripts/run_all_checks.sh

### 4. `monitor_logs.sh`
A script that monitors system logs for potential issues like errors, failures, or warnings.

#### Features:
- Scans `/var/log/syslog` for specific patterns (e.g., `error`, `failed`, `critical`, `warn`).
- Outputs the results to `/tmp/log_monitor_results.txt`.
- Alerts the user if potential issues are found.

#### Usage:
Run the script with the following command:
```bash
./scripts/monitor_logs.sh



## Continuous Integration (CI)
This repository uses GitHub Actions to ensure high code quality and functionality:

### ShellCheck linting: Automatically checks all scripts for common shell scripting errors and best practices.
Automated script execution: Ensures that scripts run without errors on every push.
#### How It Works:
ShellCheck: Analyzes all scripts in the scripts/ directory for errors or warnings.
Automated testing: Executes the scripts to verify their functionality.
You can view the status of the latest CI runs in the Actions tab.

#### Getting Started
1. Clone the repository:
git clone https://github.com/<J0skaa>/linux-automation-scripts.git

2. Navigate to the scripts directory:
cd linux-automation-scripts/scripts

Run the desired script.


Contributions are welcome! Please create a pull request with detailed descriptions of the changes.