
#!/bin/bash

# Path to the file containing the list of IP addresses
IP_LIST="ip_list.txt"

# Directory to save scan results
OUTPUT_DIR="nmap_scans"
mkdir -p "$OUTPUT_DIR"

# Loop through each IP address in the list
while IFS= read -r ip; do
    # Skip empty lines
    if [ -z "$ip" ]; then
        continue
    fi
    
    # Define the output file name based on the IP address
    OUTPUT_FILE="$OUTPUT_DIR/scan_$ip.txt"
    
    # Run the Nmap scan and save the result to the output file
    nmap -A -F -Pn --min-rate 10000 --script vulners.nse --script-timeout=5s "$ip" -oN "$OUTPUT_FILE"
    
    echo "Scan for $ip saved to $OUTPUT_FILE"
done < "$IP_LIST"
