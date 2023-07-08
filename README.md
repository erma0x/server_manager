## Server Manager

### Usage (with cron)

```bash
*/5 * * * * /path/check_wifi.sh >> /path/logfile.log 2>&1
```

This section provides an example of using cron to schedule the execution of a script, `check_wifi.sh`, every 5 minutes. The output of the script is appended to a logfile named `logfile.log`. The `2>&1` part redirects both standard output and standard error to the logfile.

### check_wifi.sh
This section describes the functionality of the `check_wifi.sh` script, which is not included in the README file. It mentions that the script reads the Wi-Fi SSID and password from the "wifi.key" file, attempts to connect to the specified SSID using the `nmcli` command, and checks the Wi-Fi connection status.

### check_server.sh
This section describes the `check_server.sh` script, which consists of two commands commonly used in Linux/Unix environments to retrieve network information. It explains the functionality of the `hostname -I` command to obtain the assigned IP addresses of the current machine and the `ping -c 4 8.8.8.8` command to test network connectivity to the Google DNS server.

### kill_all_duplicates.sh
This section describes the modified version of the `kill_all_duplicates.sh` script, which is not provided in the README. It mentions the usage of the `filepath_program` variable to store the desired command or program path and its functionality to find and kill duplicate processes based on the specified program path.

### kill_all.sh
This section describes the `kill_all.sh` script, which searches for and terminates all processes that match the specified pattern, "python3 minerva/". It provides a breakdown of how the code works, including setting the `filepath_program` variable, using the `pgrep` command to find matching processes, and terminating them with the `kill` command.

### check_temperature.py
This section describes the `check_temperature.py` Python script. It explains that the script utilizes the `CPUTemperature` class from the `gpiozero` module to retrieve the CPU temperature. The `get_cpu_temperature()` function is mentioned, which fetches the CPU temperature, rounds it to one decimal place, and returns the result. It also provides an example of running the script and recommends installing the `gpiozero` module using pip before executing the code.

Please note that while the documentation provides descriptions for the mentioned sections, some sections lack the actual code, making it difficult to provide comprehensive details for those sections.