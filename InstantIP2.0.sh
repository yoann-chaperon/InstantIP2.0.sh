#!/bin/bash



while (true) do

    clear
    base64 -d <<<"CiAgX19fX18gICAgICAgICAgIF8gICAgICAgICAgICAgIF8gICAgX19fX18gIF9fXyBfX19fICAgIF9fXyAgCiAgXF8gICBcXyBfXyAgX19ffCB8XyBfXyBfIF8gX18gfCB8XyAgXF8gICBcLyBfIFxfX18gXCAgLyBfIFwgCiAgIC8gL1wvICdfIFwvIF9ffCBfXy8gX2AgfCAnXyBcfCBfX3wgIC8gL1wvIC9fKS8gX18pIHx8IHwgfCB8Ci9cLyAvXyB8IHwgfCBcX18gXCB8fCAoX3wgfCB8IHwgfCB8Xy9cLyAvXy8gX19fLyAvIF9fLyB8IHxffCB8ClxfX19fLyB8X3wgfF98X19fL1xfX1xfXyxffF98IHxffFxfX1xfX19fL1wvICAgIHxfX19fXyhfKV9fXy8gCgkJCQkJCQkJQnkgQ2hhcHMgLVYyLjAgMDEuMjIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAoK"
    echo
    
    if test "$mod" == "raw" ; then
        arp -a
    elif test "$mod" == "ipv4" ; then
        arp -a | awk '{print $2}' | tr -d "()"
    elif test "$mod" == "mac" ; then
        arp -a | awk '{print $4}'
    elif test "$mod" == "smr" ; then
        arp -a | awk '{printf $2}{print $4}'
    elif test "$mod" == "name" ; then
        arp -a | awk '{print $1}'
    elif test "$mod" == "exit" ; then
        clear
        break
    elif test "$mod" == "help" ; then
        base64 -d <<<"cmF3IDogcmV0b3VybmUgbGVzIGFkcmVzc2VzIGRlIHByb3RvY29sCmlwdjQgOiByZXRvdXJuZSBsZXMgYWRyZXNzZXMgaXAgCm1hYyA6IHJldG91cm5lIGxlcyBhZHJlc3NlcyBtYWMKc21yIDogcmV0b3VybmUgbGVzIGFkcmVzc2VzIG1hYyBldCBpcApzc2ggOiBhdHRlbXB0IFNTSCBjb25uZWN0aW9uIHRvIGhvc3RzIG9uIHlvdXIgbmV0d29yayAoYsOqdGEpCm5hbWUgOiBuYW1lIGRlcyBhZHJlc3NlcwpoZWxwIDogYWZmaWNoZSBsZXMgY29tbWFuZGVzIGRlIEluc3RhbnRJUApleGl0IDogY2xlYXIgbGUgdGVybWluYWwgZXQgZmVybWUgSW5zdGFudElQCgpEw6l2ZWxvcHBlciBwYXIgQ2hhcCQsIDIwMjIK"
    fi

    echo
    echo
    printf InstantIP-
    read -t 5 mod
    echo
    echo
    echo Refresh....
    sleep 1
done