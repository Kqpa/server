<div align="center">

# [server.kqpa.me](https://server.kqpa.me)

#### Minecraft server tools & website for the ngrok tunnel

</div>

<div align="center">

## Initialization

</div>

In order to setup a Minecraft server, you have to create a specific directory structure for both the website & the Minecraft server. You can change the directory where you store the Minecraft servers, the current server name and the website directory over [`mc::tmux`](./scripts/mc::tmux).

- <ins>**Default Minecraft Server Structure**</ins>:

```
~/Documents/Minecraft
└── Server-X
    ├── Backups
    │   └── # Periodic server backups
    └── Contents
        └── # Stores the Minecraft server
```

- <ins>**Default Website Structure**</ins>:

```
~/Documents/Repositories
└── server
    ├── assets
    │── scripts
    └── ...
```

After making sure that your directories are setup properly, add this following line to your shell-rc so that the scripts can be accessed globally. And also, don't forget to change the directory of the server to your modified directory if you changed the variable over [`mc::tmux`](./scripts/mc::tmux).

<div align="center">

```sh
export PATH="$HOME/Documents/Repositories/server/scripts:$PATH" 
```

## Commands

</div>

| Commands                          | Descriptions                                                                                                                                                                                                                 |
|-----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [`mc::ip`](./scripts/mc::ip)         | Updates the IP address of the server over [`server.kqpa.me`](https://server.kqpa.me)                                                                                                                                         |
| [`mc::ngrok`](./scripts/mc::ngrok)   | Creates a ngrok tunnel with the port `25565` (default Minecraft port) over Europe.                                                                                                                                           |
| [`mc::server`](./scripts/mc::server) | Starts the Minecraft server.                                                                                                                                                                                                 |
| [`mc::backup`](./scripts/mc::backup) | Backs up the current state of the Minecraft server at the `Backups` folder.                                                                                                                                                  |
| [`mc::tmux`](./scripts/mc::tmux)     | Starts the tmux session so that everything can continue to operate after shell logout.  <br> <br> **Startup Windows**: <br>  • `[0]`: **server**  <br>  • `[1]`: **ngrok**  <br> • `[2]`: **web**  <br>  • `[3]`: **backup** |
