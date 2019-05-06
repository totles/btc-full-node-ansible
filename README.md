# btc-full-node-ansible
run a bitcoin full node, upgradable via ansible

## Requierments and information

You will need a working `ssh` connection to your server as well as [ansible](https://github.com/ansible/ansible) installed and configured on your client system

The provided [first-install.sh](extras/first-install.sh) and [ansible playbook](btc-upgrade.yml) will create a systemctl service and the following directories `/srv/bitcoin` and `/srv/versions`

You can make changes to your node (like RPC, etc) in the config file `/srv/bitcoin/bitcoin.cfg` - for more information look up the [docs](https://en.bitcoin.it/wiki/Running_Bitcoin#Sample_Bitcoin.conf)

## Installation
-   copy [first-install.sh](extras/first-install.sh) and optionally [btc-status.sh](extras/btc-status.sh) to your host system
-   `chmod +x first-install.sh` and optionally `chmod +x btc-status.sh`
-   run `./first-install.sh`
-   run the provided ansible playbook on your client with `ansible-playbook btc-upgrade.yml`

## Updating your Bitcoin Full Node
If your Node is up and running and a new version is available just change the version number in your `btc-upgrade.yml` file -> `btc_version: '0.18.0'` to the newest and run the playbook with:
-   `ansible-playbook btc-upgrade.yml`

## Extras

-   you can run `./btc-status.sh` for a simple overview of your current node, this will display something like this:
```
Connected clients: 58

Current block:
{
  "blocks": 574841,
  "difficulty": 6702169884349.173,
  "networkhashps": 4.993386285632475e+19,
  "pooledtx": 7016,
  "chain": "main",
  "warnings": ""
}
```
-   you can check if your node is reachable via [bitnodes](https://bitnodes.earn.com/#join-the-network)