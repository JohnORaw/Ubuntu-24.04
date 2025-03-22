""""
Script name: idrac.py
By: Kiran Gopal
Date: 24JAN25
Version history:

    v0.1    24JAN25     initial version 

"""
import requests
from requests.auth import HTTPBasicAuth
import json

# iDRAC credentials
IDRAC_IP = "*.*.*.*"
IDRAC_USER = "*****"
IDRAC_PASSWORD = "******"

# Output file
output_file = "idrac_hardware_details.txt"

# Function to collect and write hardware details to a file
def get_hardware_details():
    # Base URL for iDRAC Redfish API
    base_url = f"https://{IDRAC_IP}/redfish/v1"

    # Endpoints for hardware details
    endpoints = {
        "System": "/Systems/System.Embedded.1",
        "Processors": "/Systems/System.Embedded.1/Processors",
        "Memory": "/Systems/System.Embedded.1/Memory",
        "PCIeDevices": "/Chassis/System.Embedded.1/PCIeDevices",
        "Storage": "/Systems/System.Embedded.1/Storage",
        "NetworkAdapters": "/Chassis/System.Embedded.1/NetworkAdapters"
    }

    # Open the output file in write mode
    with open(output_file, "w") as file:
        # Fetch and write details for each endpoint
        for key, endpoint in endpoints.items():
            url = base_url + endpoint
            response = requests.get(url, auth=HTTPBasicAuth(IDRAC_USER, IDRAC_PASSWORD), verify=False)

            if response.status_code == 200:
                file.write(f"\n{key} Details:\n")
                file.write(json.dumps(response.json(), indent=4) + "\n")
            else:
                file.write(f"Failed to retrieve {key} details. Status code: {response.status_code}\n")
                file.write(f"Response: {response.text}\n")

    print(f"Hardware details have been saved to {output_file}")

if __name__ == "__main__":
    get_hardware_details()
