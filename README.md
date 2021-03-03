# deluge-blank-password
Small modification to https://docs.linuxserver.io/images/docker-deluge

I'm using Deluge behind oauth2 proxy so I don't need the separate password. The idea is to set a blank password in the web UI. 

Simply changes the javascript to autosubmit a blank password when the login prompt is shown.

```bash
sed -i 's/onShow:function(){this.passwordField.focus(.*)}/onShow:function(){this.onLogin();}/' /usr/lib/python*/dist-packages/deluge/ui/web/js/deluge-all.js
```

From https://forum.deluge-torrent.org/viewtopic.php?f=7&t=54769&p=227493
