A python script that uses nmap to scan from ip_list.txt using vulners script to look for exploits. It saves scans to nmap_scans. After running lazyscan.sh You can take things further by running lazyexploit.py and this takes any mention of EXPLOIT in the nmap_scans output files and moves them to possible_exploit folder. This makes for easier originaztion for exploit testing. 

usage: ./lazyscan
