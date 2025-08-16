#!/bin/sh

# Ganti kalau interface default salah
IFACE=$(route -n get default 2>/dev/null | awk '/interface:/ {print $2}')
[ -z "$IFACE" ] && IFACE="re0"

get_bytes() {
    netstat -ibn | awk -v iface="$IFACE" '$1 == iface {print $8, $11; exit}'
}

read RX1 TX1 <<EOF
$(get_bytes)
EOF

sleep 1

read RX2 TX2 <<EOF
$(get_bytes)
EOF

RXBPS=$((RX2 - RX1))
TXBPS=$((TX2 - TX1))

human() {
    val=$1
    if [ $val -ge 1048576 ]; then
        echo "$(echo "$val / 1048576" | bc) MB/s"
    elif [ $val -ge 1024 ]; then
        echo "$(echo "$val / 1024" | bc) KB/s"
    else
        echo "${val} B/s"
    fi
}

RX_H=$(human $RXBPS)
TX_H=$(human $TXBPS)

echo "{\"text\": \"⬇ $RX_H ⬆ $TX_H\", \"tooltip\": \"Download: $RX_H\nUpload: $TX_H\"}"

