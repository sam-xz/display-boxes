#!/bin/sh -e
# Deposit vpn dns configuration profile in /etc https://lendable-uk.atlassian.net/wiki/spaces/ITSM/pages/404488197/VPN+on+Ubuntu+the+easy+way

rm -f /etc/NetworkManager/dispatcher.d/02-lendable-vpn
touch /etc/NetworkManager/dispatcher.d/02-lendable-vpn
cat <<'EOF' >/etc/NetworkManager/dispatcher.d/02-lendable-vpn

case "$2" in
  vpn-up)
    resolvectl dns ${VPN_IP_IFACE} ${VPN_IP4_NAMESERVERS}
    resolvectl dns ${DEVICE_IP_IFACE} ${VPN_IP4_NAMESERVERS}
    resolvectl default-route ${VPN_IP_IFACE} true
    ;;
  vpn-down)
    resolvectl dns ${DEVICE_IP_IFACE} ${IP4_NAMESERVERS}
    ;;
esac

EOF

chmod 775 /etc/NetworkManager/dispatcher.d/02-lendable-vpn
