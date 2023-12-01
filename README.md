# ntp-server
NTP Server on Container

## 1. git clone
```
git clone https://github.com/braveantony/ntp-server.git
```

## 2. Build Container Image
```
sudo podman build -t ntp/ntp_server:latest -f Containerfile
```

## 3. Run Container
```
sudo podman run -d                  \
            --name chrony           \
            --network=host          \
            --cap-add SYS_NICE      \
            --cap-add SYS_TIME      \
            --cap-add SYS_RESOURCE  \
            -v /home/bigred/ntp_server/chrony.conf:/etc/chrony/chrony.conf:ro     \
            localhost/ntp/ntp_server
```
