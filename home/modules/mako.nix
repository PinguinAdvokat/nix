{

  services.mako = {
    enable = true;
    extraConfig = "
anchor=top-right
font=monospace 10
background-color=#24273a
text-color=#cad3f5
width=350
margin=20,20,0,0
padding=10
border-size=2
border-color=#b7bdf8
border-radius=5
default-timeout=10000
group-by=summary

[grouped]
format=<b>%s</b>\n%b
    ";
  };

}
