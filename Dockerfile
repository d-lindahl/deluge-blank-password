FROM ghcr.io/linuxserver/deluge

# using wildcard path for a tiny bit of robustness
RUN sed -i 's/onShow:function(){this.passwordField.focus(.*)}/onShow:function(){this.onLogin();}/' /usr/lib/python*/dist-packages/deluge/ui/web/js/deluge-all.js
