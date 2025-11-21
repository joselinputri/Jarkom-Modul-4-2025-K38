# Router Fornost
# FORNOST (Router) 

# Interface ke Switch12 (ke Valinor eth2, Valmar eth2) - A4
auto eth0
iface eth0 inet static
    address 192.230.15.177
    netmask 255.255.255.248

# Interface ke Amonsul (eth3) - A5
auto eth2
iface eth2 inet static
    address 192.230.15.193
    netmask 255.255.255.252

# Routing ke Valinor side (A1)
up route add -net 192.230.12.0 netmask 255.255.254.0 gw 192.230.15.178

# Routing ke Valmar side (A2, A3)
up route add -net 192.230.15.128 netmask 255.255.255.224 gw 192.230.15.179
up route add -net 192.230.15.64 netmask 255.255.255.192 gw 192.230.15.179

# Routing ke Amonsul side (A6–A23)
up route add -net 192.230.15.196 netmask 255.255.255.252 gw 192.230.15.194
up route add -net 192.230.15.200 netmask 255.255.255.252 gw 192.230.15.194
up route add -net 192.230.15.204 netmask 255.255.255.252 gw 192.230.15.194
up route add -net 192.230.14.0 netmask 255.255.255.128 gw 192.230.15.194
up route add -net 192.230.14.128 netmask 255.255.255.128 gw 192.230.15.194
up route add -net 192.230.0.0 netmask 255.255.252.0 gw 192.230.15.194
up route add -net 192.230.15.208 netmask 255.255.255.252 gw 192.230.15.194
up route add -net 192.230.15.212 netmask 255.255.255.252 gw 192.230.15.194
up route add -net 192.230.8.0 netmask 255.255.254.0 gw 192.230.15.194
up route add -net 192.230.10.0 netmask 255.255.254.0 gw 192.230.15.194
up route add -net 192.230.15.216 netmask 255.255.255.252 gw 192.230.15.194
up route add -net 192.230.15.220 netmask 255.255.255.252 gw 192.230.15.194
up route add -net 192.230.15.224 netmask 255.255.255.252 gw 192.230.15.194
up route add -net 192.230.4.0 netmask 255.255.252.0 gw 192.230.15.194
up route add -net 192.230.15.184 netmask 255.255.255.248 gw 192.230.15.194
up route add -net 192.230.15.0 netmask 255.255.255.192 gw 192.230.15.194
up route add -net 192.230.15.228 netmask 255.255.255.252 gw 192.230.15.194
up route add -net 192.230.15.160 netmask 255.255.255.240 gw 192.230.15.194


#Valinor 
# VALINOR (Router)

# Interface ke Switch10 - A1
auto eth0
iface eth0 inet static
    address 192.230.12.1
    netmask 255.255.254.0

# Interface ke Switch12 - A4
auto eth2
iface eth2 inet static
    address 192.230.15.178
    netmask 255.255.255.248

# Default Route ke Fornost
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.177

#Valmar 
# VALMAR (Router)

# Switch11 - A2
auto eth0
iface eth0 inet static
    address 192.230.15.129
    netmask 255.255.255.224

# Switch14 - A3
auto eth1
iface eth1 inet static
    address 192.230.15.65
    netmask 255.255.255.192

# Switch12 - A4
auto eth2
iface eth2 inet static
    address 192.230.15.179
    netmask 255.255.255.248

# Default Route
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.177

#Amonsul
# AMONSUL (Router)

# Eregion - A6
auto eth0
iface eth0 inet static
    address 192.230.15.197
    netmask 255.255.255.252

# Minastir - A16
auto eth2
iface eth2 inet static
    address 192.230.15.217
    netmask 255.255.255.252

# Fornost - A5
auto eth3
iface eth3 inet static
    address 192.230.15.194
    netmask 255.255.255.252

# Routing ke Fornost
up route add -net 192.230.12.0 netmask 255.255.254.0 gw 192.230.15.193
up route add -net 192.230.15.128 netmask 255.255.255.224 gw 192.230.15.193
up route add -net 192.230.15.64 netmask 255.255.255.192 gw 192.230.15.193
up route add -net 192.230.15.176 netmask 255.255.255.248 gw 192.230.15.193

# Routing ke Eregion
up route add -net 192.230.15.200 netmask 255.255.255.252 gw 192.230.15.198
up route add -net 192.230.15.204 netmask 255.255.255.252 gw 192.230.15.198
up route add -net 192.230.14.0 netmask 255.255.255.128 gw 192.230.15.198
up route add -net 192.230.14.128 netmask 255.255.255.128 gw 192.230.15.198
up route add -net 192.230.0.0 netmask 255.255.252.0 gw 192.230.15.198
up route add -net 192.230.15.208 netmask 255.255.255.252 gw 192.230.15.198
up route add -net 192.230.15.212 netmask 255.255.255.252 gw 192.230.15.198
up route add -net 192.230.8.0 netmask 255.255.254.0 gw 192.230.15.198
up route add -net 192.230.10.0 netmask 255.255.254.0 gw 192.230.15.198
up route add -net 192.230.15.160 netmask 255.255.255.240 gw 192.230.15.198

# Routing ke Minastir
up route add -net 192.230.15.220 netmask 255.255.255.252 gw 192.230.15.218
up route add -net 192.230.15.224 netmask 255.255.255.252 gw 192.230.15.218
up route add -net 192.230.4.0 netmask 255.255.252.0 gw 192.230.15.218
up route add -net 192.230.15.184 netmask 255.255.255.248 gw 192.230.15.218
up route add -net 192.230.15.0 netmask 255.255.255.192 gw 192.230.15.218
up route add -net 192.230.15.228 netmask 255.255.255.252 gw 192.230.15.218

#Eregion
# EREGION (Router)

# Switch4 - A9
auto eth0
iface eth0 inet static
    address 192.230.14.1
    netmask 255.255.255.128

# Numenor - A7
auto eth1
iface eth1 inet static
    address 192.230.15.201
    netmask 255.255.255.252

# Amonsul - A6
auto eth2
iface eth2 inet static
    address 192.230.15.198
    netmask 255.255.255.252

# Default Route
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.197

# Routing Numenor
up route add -net 192.230.15.204 netmask 255.255.255.252 gw 192.230.15.202
up route add -net 192.230.14.128 netmask 255.255.255.128 gw 192.230.15.202
up route add -net 192.230.0.0 netmask 255.255.252.0 gw 192.230.15.202
up route add -net 192.230.15.208 netmask 255.255.255.252 gw 192.230.15.202
up route add -net 192.230.15.212 netmask 255.255.255.252 gw 192.230.15.202
up route add -net 192.230.8.0 netmask 255.255.254.0 gw 192.230.15.202
up route add -net 192.230.10.0 netmask 255.255.254.0 gw 192.230.15.202
up route add -net 192.230.15.160 netmask 255.255.255.240 gw 192.230.15.202

#Numenor 
# NUMENOR (Router)

auto eth0
iface eth0 inet static
    address 192.230.0.1
    netmask 255.255.252.0

auto eth1
iface eth1 inet static
    address 192.230.15.209
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 192.230.15.202
    netmask 255.255.255.252

auto eth3
iface eth3 inet static
    address 192.230.15.205
    netmask 255.255.255.252

# Default route
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.201

# Gudur side
up route add -net 192.230.14.128 netmask 255.255.255.128 gw 192.230.15.206
up route add -net 192.230.15.160 netmask 255.255.255.240 gw 192.230.15.206

# Mordor side
up route add -net 192.230.15.212 netmask 255.255.255.252 gw 192.230.15.210
up route add -net 192.230.8.0 netmask 255.255.254.0 gw 192.230.15.210
up route add -net 192.230.10.0 netmask 255.255.254.0 gw 192.230.15.210

#==========================================
#============== GUDUR =====================
#==========================================
auto eth0
iface eth0 inet static
    address 192.230.14.129
    netmask 255.255.255.128

auto eth1
iface eth1 inet static
    address 192.230.15.206
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 192.230.15.161
    netmask 255.255.255.240

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.205


#==========================================
#============== MORDOR ====================
#==========================================
auto eth1
iface eth1 inet static
    address 192.230.15.210
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 192.230.15.213
    netmask 255.255.255.252

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.209

# Routing ke Erain
up route add -net 192.230.8.0 netmask 255.255.254.0 gw 192.230.15.214
up route add -net 192.230.10.0 netmask 255.255.254.0 gw 192.230.15.214


#==========================================
#============== ERAIN =====================
#==========================================
auto eth0
iface eth0 inet static
    address 192.230.15.214
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.230.10.1
    netmask 255.255.254.0

auto eth2
iface eth2 inet static
    address 192.230.8.1
    netmask 255.255.254.0

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.213


#==========================================
#============= MINASTIR ===================
#==========================================
auto eth0
iface eth0 inet static
    address 192.230.15.218
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.230.15.221
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 192.230.15.225
    netmask 255.255.255.252

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.217

# Routing ke Amroth
up route add -net 192.230.15.184 netmask 255.255.255.248 gw 192.230.15.222
up route add -net 192.230.15.0 netmask 255.255.255.192 gw 192.230.15.222
up route add -net 192.230.15.228 netmask 255.255.255.252 gw 192.230.15.222

# Routing ke Anor
up route add -net 192.230.4.0 netmask 255.255.252.0 gw 192.230.15.226


#==========================================
#============== AMROTH ====================
#==========================================
auto eth0
iface eth0 inet static
    address 192.230.15.222
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.230.15.185
    netmask 255.255.255.248

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.221

# Routing ke Morgoth
up route add -net 192.230.15.0 netmask 255.255.255.192 gw 192.230.15.186

# Routing ke Throne
up route add -net 192.230.15.228 netmask 255.255.255.252 gw 192.230.15.187


#==========================================
#============== MORGOTH ===================
#==========================================
auto eth0
iface eth0 inet static
    address 192.230.15.1
    netmask 255.255.255.192

auto eth1
iface eth1 inet static
    address 192.230.15.186
    netmask 255.255.255.248

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.185


#==========================================
#============== THRONE ====================
#==========================================
auto eth0
iface eth0 inet static
    address 192.230.15.229
    netmask 255.255.255.252

auto eth1
iface eth1 inet static
    address 192.230.15.187
    netmask 255.255.255.248

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.185


#==========================================
#=============== ANOR =====================
#==========================================
auto eth1
iface eth1 inet static
    address 192.230.15.226
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 192.230.4.1
    netmask 255.255.252.0

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.230.15.225


echo 1 > /proc/sys/net/ipv4/ip_forward 
# Enable IP forwarding di setiap router 