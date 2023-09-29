management 0.0.0.0 2080  # Don't change this line. OpenVPN UI uses this feature to manage the server 

dev {{ .Device }}
port {{ .Port }}
proto {{ .Proto }}

topology {{ .OVConfigTopology }}
keepalive {{ .Keepalive }}
max-clients {{ .MaxClients }}

persist-key
persist-tun
explicit-exit-notify 1

user {{ .OVConfigUser }}
group {{ .OVConfigGroup }}

client-config-dir {{ .OVConfigClientConfigDir }}
ifconfig-pool-persist {{ .IfconfigPoolPersist }}

ca {{ .Ca }}
cert {{ .Cert }}
key {{ .Key }}
crl-verify {{ .Crl }}
dh {{ .Dh }}

{{ .TLSControlChannel }}
{{ .TLSMinVersion }}
{{ .TLSRemoteCert }}

cipher {{ .Cipher }}
ncp-ciphers {{ .OVConfigNcpCiphers }}   # Will be deprecated in future OpenVPN versions. we have to use data-ciphers below instead
#data-ciphers {{ .OVConfigNcpCiphers }}

auth {{ .Auth }}

{{ .Server }}           # Trusted VPN subnet
{{ .Route }}            # Route to Guest VPN subnet
{{ .PushRoute }}     # Route to Home VPN subnet
{{ .DNSServer1 }}             # DNS1 server for VPN clients
{{ .DNSServer2 }}             # DNS2 server for VPN clients
{{ .RedirectGW }}    # Redirect gateway for VPN clients


log {{ .OVConfigLogfile }}
verb {{ .OVConfigLogVerbose }}
status {{ .OVConfigStatusLog }}
status-version {{ .OVConfigStatusLogVersion }}

{{ .ScriptSecurity }}
{{ .UserPassVerify }}

{{ .CustomOptOne }}
{{ .CustomOptTwo }}
{{ .CustomOptThree }}

# Auto generated by OpenVPN-UI
