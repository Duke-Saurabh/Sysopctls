#!/bin/bash

VERSION="v0.1.0"

# Help Option
if [[ "$1" == "--help" ]]; then
    echo "Usage: sysopctl [COMMAND]"
    echo "Commands:"
    echo "  service list             List running services"
    echo "  service start <name>     Start a service"
    echo "  service stop <name>      Stop a service"
    echo "  system load              View system load averages"
    echo "  disk usage               Check disk usage"
    echo "  process monitor          Monitor system processes"
    echo "  logs analyze             Analyze system logs"
    echo "  backup <path>            Backup system files"
    echo "  --version                Show version"
    exit 0
fi

# Version Option
if [[ "$1" == "--version" ]]; then
    echo "sysopctl version $VERSION"
    exit 0
fi

# List Running Services
if [[ "$1" == "service" && "$2" == "list" ]]; then
    systemctl list-units --type=service
    exit 0
fi

# Start a Service
if [[ "$1" == "service" && "$2" == "start" ]]; then
    systemctl start "$3"
    echo "Service $3 started."
    exit 0
fi

# Stop a Service
if [[ "$1" == "service" && "$2" == "stop" ]]; then
    systemctl stop "$3"
    echo "Service $3 stopped."
    exit 0
fi

# View System Load
if [[ "$1" == "system" && "$2" == "load" ]]; then
    uptime
    exit 0
fi

# Check Disk Usage
if [[ "$1" == "disk" && "$2" == "usage" ]]; then
    df -h
    exit 0
fi

# Monitor System Processes
if [[ "$1" == "process" && "$2" == "monitor" ]]; then
    top
    exit 0
fi

# Analyze System Logs
if [[ "$1" == "logs" && "$2" == "analyze" ]]; then
    journalctl -p 3 -xb
    exit 0
fi

# Backup System Files
if [[ "$1" == "backup" ]]; then
    rsync -avh --progress "$2" /path/to/backup/location
    echo "Backup of $2 initiated."
    exit 0
fi

# Default case: If no valid command is given
echo "Invalid command. Use --help for usage."
exit 1
