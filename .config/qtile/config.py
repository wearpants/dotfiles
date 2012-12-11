from libqtile.manager import Key, Screen, Group
from libqtile.command import lazy
from libqtile import layout, bar, widget

keys = [
    Key(
        ["mod4"], "k",
        lazy.layout.down()
    ),
    Key(
        ["mod4"], "j",
        lazy.layout.up()
    ),
    Key(
        ["mod4", "control"], "k",
        lazy.layout.shuffle_down()
    ),
    Key(
        ["mod4", "control"], "j",
        lazy.layout.shuffle_up()
    ),
    Key(
        ["mod4"], "l",
        lazy.layout.next()
    ),
    Key(
        ["mod4"], "h",
        lazy.layout.previous()
    ),
    Key(
        ["mod4", "control"], "l",
        lazy.layout.client_to_next()
    ),
    Key(
        ["mod4", "control"], "h",
        lazy.layout.client_to_previous()
    ),
    Key(
        ["mod4", "control"], "space",
        lazy.layout.rotate()
    ),
    Key(
        ["mod4", "shift"], "space",
        lazy.layout.toggle_split()
    ),
    Key(["mod4"], "Return", lazy.spawn("xterm")),
    Key(["mod4"], "Tab",    lazy.nextlayout()),
    Key(["mod4"], "w",      lazy.window.kill()),

    Key(["mod4", "control"], "r", lazy.restart()),
    Key(["mod4", "control"], "q", lazy.shutdown()),
]

groups = [
    Group("a"),
    Group("s"),
    Group("d"),
    Group("f"),
    Group("u"),
    Group("i"),
    Group("o"),
    Group("p"),
]
for i in groups:
    keys.append(
        Key(["mod4"], i.name, lazy.group[i.name].toscreen())
    )
    keys.append(
        Key(["mod4", "control"], i.name, lazy.window.togroup(i.name))
    )

layouts = [
    layout.Max(),
    layout.Stack(stacks=2, border_focus="#0000FF", border_normal="#888888", border_width=1)
]

screens = [
    Screen(
        bottom = bar.Bar(
                    [
                        widget.GroupBox(),
                        widget.WindowName(),
                        widget.TextBox("default", "default config")
                    ],
                    30,
                ),
    ),
]
