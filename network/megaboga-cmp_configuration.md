# Configuration of megaboga-cmp network

## The Router

The router in use is a *D-Link DMG-6661*

It's IP address is *192.168.1.1* and it does not ask for a password to basic
configuration.

### Advanced Configuration

To access router advanced configuration is at `192.168.1.1/padrao` address.
Now it will require the password.

The username and password is basicly default:

* username: **admin**
* password: _the last 4 letter/number of it's own MAC address_

If getting your ass out of bed and go there and check the MAC address is too
hard.
Use the `arp` command at terminal.

```sh
# option 1
$ arp -a

#option 2
$ arp -n 192.168.1.1

# option 3
$ arp 192.168.1.1
```

The output of `arp` will be something like

```
? (192.168.1.1) at aD:1e:4a:x0:a8:x8 on en1 ifscope [ethernet]
```

Now, go to `192.168.1.1/padrao` and use `admin` as username and the password
will be `A8X8` or `a8x8`, the correct one was the uppercase.
