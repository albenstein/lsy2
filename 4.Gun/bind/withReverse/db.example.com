; example.com
$TTL    604800
@       IN      SOA     ns1.example.com. root.example.com. (
                     2006020202 ; Serial
                         604800 ; Refresh
                          86400 ; Retry
                        2419200 ; Expire
                         604800); Negative Cache TTL
;
@       IN      NS      ns1
        IN      MX      10 mail
        IN      A       1.2.3.4
ns1     IN      A       1.2.3.4
mail    IN      A       1.2.3.5 ; We have our mail server somewhere else.
www     IN      A       1.2.3.6
client1 IN      A       1.2.3.7 ; We connect to client1 very often.
