# ntp-server
Run NTP Server with Podman Pod

## 1. git clone
```
git clone https://github.com/braveantony/ntp_server.git
```

## 2. Build Container Image
```
sudo podman build -t ntp_server:latest -f ntp_server/Containerfile
```

## 3. Run Container
```
sudo podman kube play ntp_server/ntp_server.yaml
```

## 4. Testing From anthor machine
```
sntpc -n <NTP Server IP>
```
> `sudo apk update; sudo apk add sntpc`

螢幕輸出 :
```
sntpc[4396]: offset=-0.001558, delay=0.000023
```
