zone "example.com" {
    type master;
    file "/etc/bind/db.example.com";
    
    allow-query { any; };
};
