<div align="center">

## Miscellaneous Scripts for the Minecraft Server

Export these scripts to your `$PATH` by adding the following line to your `~/.zshrc` or `~/.bashrc`.

```sh
export PATH="$HOME/Documents/Repositories/server/misc:$PATH"
```

</div>

<br>


| Commands                     | Descriptions                                                                                                                                                                                    |
|------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|         [`mc::ip`](./mc::ip) | Updates the IP address of the server over [`server.kqpa.me`](https://server.kqpa.me)                                                                                                            |
| [`mc::ngrok`](./mc::ngrok)   | Creates a ngrok tunnel with the port `25565` (default Minecraft port) over Europe.                                                                                                              |
| [`mc::server`](./mc::server) | Starts the Minecraft server.                                                                                                                                                                    |
| [`mc::tmux`](./mc::tmux)     | Starts the tmux session so that everything can continue to operate after shell logout. <br> <br>  **Startup Windows**: <br> • `[0]`: **server** <br>  • `[1]`: **ngrok** <br>  • `[2]`: **web** |
