# ntp-server
Run NTP Server with Podman Pod

## 1. git clone
```
git clone https://github.com/braveantony/ntp_server.git
```

## 2. Edit NTP Configuration

```
nano ntp_server/Containerfile
```

- 修改 allow ip 範圍

## 3. Build Container Image
```
sudo podman build -t ntp_server:latest -f ntp_server/Containerfile
```

## 4. Run Container
```
sudo podman kube play ntp_server/ntp_server.yaml
```

## 4. Check Pod Status
```
sudo podman ps -a --pod
```
螢幕輸出 :
```
CONTAINER ID  IMAGE                                    COMMAND     CREATED         STATUS         PORTS       NAMES               POD ID        PODNAME
ab2fc7e93236  localhost/podman-pause:4.4.4-1680004800              39 seconds ago  Up 35 seconds              d709efb8d672-infra  d709efb8d672  chrony
d2a616434c9a  quay.io/hahappyman/ntp_server:latest                 35 seconds ago  Up 35 seconds              chrony-chrony       d709efb8d672  chrony
```

## 5. Testing From anthor machine
```
sntpc -n <NTP Server IP>
```
> `sudo apk update; sudo apk add sntpc`

螢幕輸出 :
```
sntpc[4396]: offset=-0.001558, delay=0.000023
```
