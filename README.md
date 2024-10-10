# Sysopctls
##sysopctl Script

sysopctl is a bash script that helps manage system operations like viewing system load, starting and stopping services, monitoring processes, checking disk usage, and more. It provides an easy interface for common system administration tasks.

##usage
./sysopctl [COMMAND] [OPTIONS]

##Commands and Their Outputs
1.Help Command
    command: 
        ./sysopctl --help
    output:
                Usage: sysopctl [COMMAND]
        Commands:
        service list             List running services
        service start <name>     Start a service
        service stop <name>      Stop a service
        system load              View system load averages
        disk usage               Check disk usage
        process monitor          Monitor system processes
        logs analyze             Analyze system logs
        backup <path>            Backup system files
        --version                Show version


2. version control
    Command:
        ./sysopctl --version
    Output:
        sysopctl version v0.1.0

3. List Running Services
    Command:
        ./sysopctl service list
    output:
        [Unit]               [State]
        service1.service     running
        service2.service     stopped

4. Start a Service
    Command:
        ./sysopctl service start service_name
    Output:
        Service service_name started.

5. Stop a Service
    Command:
        ./sysopctl service stop service_name
    Output:
        Service service_name stopped.

6. View System Load
    Command:
        ./sysopctl system load
    Output:
        12:34:56 up 1 day,  2:34,  1 user,  load average: 0.08, 0.04, 0.01

7. Check Disk Usage
    Command:
        ./sysopctl disk usage
    Output:
        Filesystem      Size  Used Avail Use% Mounted on
        /dev/sda1       100G   50G   50G  50% /

8.  Monitor System Processes
    Command:
        ./sysopctl process monitor
    Output:
        top - 12:34:56 up 1 day,  2:34,  1 user,  load average: 0.08, 0.04, 0.01
        Tasks: 120 total,   1 running,  89 sleeping,   0 stopped,   0 zombie
        %Cpu(s):  2.3 us,  1.2 sy,  0.0 ni, 96.5 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
        KiB Mem :  8098356 total,  4327420 free,  2047488 used,  1727448 buff/cache
        KiB Swap:  2097148 total,  2097148 free,        0 used.  5596072 avail Mem

9. Stop a Service
    Command:
        ./sysopctl logs analyze
    Output:
        -- Logs begin at Mon 2024-10-01 12:00:00 UTC, end at Tue 2024-10-02 12:00:00 UTC. --
        Oct 01 12:00:01 localhost kernel: Error: Something went wrong.

10. Backup System Files
    Command:
        ./sysopctl backup /path/to/files
    Output:
        sending incremental file list
        file1.txt
        file2.txt
        file3.txt

        sent 123,456 bytes  received 12 bytes  123,900.00 bytes/sec
        total size is 123,456,789  speedup is 1.00
        Backup of /path/to/files initiated.

11. Invalid Command
    command:
        ./sysopctl invalid_command
    output:
        Invalid command. Use --help for usage.


## How to Run the Script
1. Clone the repository:
    git clone <repository_url>
2. Navigate to the directory:
    cd <repository_name>
3. Make the script executable:
    chmod +x sysopctl
4. Run the script using one of the commands mentioned above.
