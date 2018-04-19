function FindProxyForURL(url, host) {
    var list = [
        "rutracker.org",
        "spotify.com"
    ];

    for(var i = 0; i < list.length; i++) {
        var item = list[i];
        if(host === item || host.substr(host.length - item.length - 1) === "." + item)
            return "PROXY squid.amartynov.ru:3128";
    }

    return null;
}
