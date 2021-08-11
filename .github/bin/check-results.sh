#!/bin/bash
exitcode=0
for file in ca_certificate.pem client_client1_key.pem client_client3_certificate.pem client_client4_key.p12 client_client5_key.pem server_server1_certificate.pem ca_key.pem client_client2_certificate.pem client_client3_key.p12 client_client4_key.pem client_server1_certificate.pem server_server1_key.p12 client_client1_certificate.pem client_client2_key.p12 client_client3_key.pem client_client5_certificate.pem client_server1_key.p12 server_server1_key.pem client_client1_key.p12 client_client2_key.pem client_client4_certificate.pem client_client5_key.p12 client_server1_key.pem
do 
	if test -f "basic/result/$file"; then
		    echo "$file exists."
	else
		echo "$file" does not exist
		exitcode=1	
	fi
done
exit $exitcode
		
