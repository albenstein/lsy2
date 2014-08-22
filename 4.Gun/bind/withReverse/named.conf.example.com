zone "example.com" {
    type master;
    file "/etc/bind/db.example.com";
    
    allow-query { any; };
};

zone "3.2.1.in-addr.arpa" {
        type master;
        file "/etc/bind/db.3";
};
