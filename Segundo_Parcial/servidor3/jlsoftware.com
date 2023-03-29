$ORIGIN jlsoftware.com.
$TTL 3H
@	IN 	SOA	servidor3.jlsoftware.com. root@jlsoftware.com (
				  	 0	; serial
					1D	; refresh
					1H	; retry
					1W	; expire
					3H )	; minimum
	IN	NS	servidor3.jlsoftware.com.
	IN	NS	servidor2.jlsoftware.com.
	IN	NS	firewall.jlsoftware.com.

;host en la zona

servidor3	IN	A	192.168.50.5
servidor2	IN	A	192.168.50.4
firewall	IN	A	192.168.50.3
www		IN	CNAME	servidor2
