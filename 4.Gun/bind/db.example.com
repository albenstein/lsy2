; example.com
$TTL    604800
@       IN      SOA     ns1.example.com. root.example.com. (
                     2006020201 ; Serial
                         604800 ; Refresh
                          86400 ; Retry
                        2419200 ; Expire
                         604800); Negative Cache TTL
;
@       IN      NS      ns1
        IN      MX      10 mail
        IN      A       127.0.0.1
ns1     IN      A       127.0.0.1
mail    IN      A       127.0.0.1 ; We have our mail server somewhere else.
www     IN      A       127.0.0.1
client1 IN      A       127.0.0.1 ; We connect to client1 very often.
