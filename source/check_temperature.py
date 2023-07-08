from gpiozero import CPUTemperature

def get_cpu_temperature():
    temp = CPUTemperature()
    cpu_temp = round(temp.temperature, 1)
    return cpu_temp

if __name__ == "__main__":
    # Example usage
    cpu_temperature = get_cpu_temperature()
    print("CPU temperature is " + str(cpu_temperature) + "°C")
