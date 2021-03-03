# deluge-skip-login
Small modification to https://docs.linuxserver.io/images/docker-deluge

When using Deluge behind oauth2 proxy password is not needed. By setting the password to blank in the web ui and then using this modification the password prompt is bypassed.

Simply changes the javascript to autosubmit a blank password when the login prompt is shown.

```bash
sed -i 's/onShow:function(){this.passwordField.focus(.*)}/onShow:function(){this.onLogin();}/' /usr/lib/python*/dist-packages/deluge/ui/web/js/deluge-all.js
```

From https://forum.deluge-torrent.org/viewtopic.php?f=7&t=54769&p=227493
