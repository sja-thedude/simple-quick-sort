require "base64"


encoded_data = "cmVxdWlyZSAnLi9jaGFsbGVuZ2UucmInCgpSU3BlYy5kZXNjcmliZSAnVW5p
dFRlc3RzJyBkbwoKICBpdCAnYXJyYXlfb2ZfbmluZV9wb3NpdGlvbnMnIGRv
CgogICAgIyBGYWlsdXJlIG1lc3NhZ2U6IAogICAgIyBNZXRob2QgY2FsbGVk
OiBzaW1wbGVfcXVpY2tzb3J0KFs5LCA4LCA2LCA3LCAzLCA1LCA0LCAxLCAy
XSkKCiAgICBhcnIgPSBbOSwgOCwgNiwgNywgMywgNSwgNCwgMSwgMl0KICAg
IGV4cGVjdCB7IHNpbXBsZV9xdWlja3NvcnQoYXJyKSB9LnRvIG91dHB1dCgi
MSAyXG40IDVcbjEgMiAzIDQgNVxuMSAyIDMgNCA1IDYgN1xuMSAyIDMgNCA1
IDYgNyA4XG4xIDIgMyA0IDUgNiA3IDggOVxuIikudG9fc3Rkb3V0CgogIGVu
ZAoKICBpdCAnYXJyYXlfb2Zfb25lX2h1bmRyZWRfcG9zaXRpb25zJyBkbwoK
ICAgICMgRmFpbHVyZSBtZXNzYWdlOiAKICAgICMgTWV0aG9kIGNhbGxlZDog
c2ltcGxlX3F1aWNrc29ydChbNDA2LCAxNTcsIDQxNSwgMzE4LCA0NzIsIDQ2
LCAyNTIsIDE4NywgMzY0LCA0ODEsIDQ1MCwgOTAsIDM5MCwgMzUsIDQ1Miwg
NzQsIDE5NiwgMzEyLCAxNDIsIDE2MCwgMTQzLCAyMjAsIDQ4MywgMzkyLCA0
NDMsIDQ4OCwgNzksIDIzNCwgNjgsIDE1MCwgMzU2LCA0OTYsIDY5LCA4OCwg
MTc3LCAxMiwgMjg4LCAxMjAsIDIyMiwgMjcwLCA0NDEsIDQyMiwgMTAzLCAz
MjEsIDY1LCAzMTYsIDQ0OCwgMzMxLCAxMTcsIDE4MywgMTg0LCAxMjgsIDMy
MywgMTQxLCA0NjcsIDMxLCAxNzIsIDQ4LCA5NSwgMzU5LCAyMzksIDIwOSwg
Mzk4LCA5OSwgNDQwLCAxNzEsIDg2LCAyMzMsIDI5MywgMTYyLCAxMjEsIDYx
LCAzMTcsIDUyLCA1NCwgMjczLCAzMCwgMjI2LCA0MjEsIDY0LCAyMDQsIDQ0
NCwgNDE4LCAyNzUsIDI2MywgMTA4LCAxMCwgMTQ5LCA0OTcsIDIwLCA5Nywg
MTM2LCAxMzksIDIwMCwgMjY2LCAyMzgsIDQ5MywgMjIsIDE3LCAzOV0pCgog
ICAgYXJyID0gWzQwNiwgMTU3LCA0MTUsIDMxOCwgNDcyLCA0NiwgMjUyLCAx
ODcsIDM2NCwgNDgxLCA0NTAsIDkwLCAzOTAsIDM1LCA0NTIsIDc0LCAxOTYs
IDMxMiwgMTQyLCAxNjAsIDE0MywgMjIwLCA0ODMsIDM5MiwgNDQzLCA0ODgs
IDc5LCAyMzQsIDY4LCAxNTAsIDM1NiwgNDk2LCA2OSwgODgsIDE3NywgMTIs
IDI4OCwgMTIwLCAyMjIsIDI3MCwgNDQxLCA0MjIsIDEwMywgMzIxLCA2NSwg
MzE2LCA0NDgsIDMzMSwgMTE3LCAxODMsIDE4NCwgMTI4LCAzMjMsIDE0MSwg
NDY3LCAzMSwgMTcyLCA0OCwgOTUsIDM1OSwgMjM5LCAyMDksIDM5OCwgOTks
IDQ0MCwgMTcxLCA4NiwgMjMzLCAyOTMsIDE2MiwgMTIxLCA2MSwgMzE3LCA1
MiwgNTQsIDI3MywgMzAsIDIyNiwgNDIxLCA2NCwgMjA0LCA0NDQsIDQxOCwg
Mjc1LCAyNjMsIDEwOCwgMTAsIDE0OSwgNDk3LCAyMCwgOTcsIDEzNiwgMTM5
LCAyMDAsIDI2NiwgMjM4LCA0OTMsIDIyLCAxNywgMzldCiAgICBleHBlY3Qg
eyBzaW1wbGVfcXVpY2tzb3J0KGFycikgfS50byBvdXRwdXQoIjE3IDIwIDIy
XG4xNyAyMCAyMiAzMFxuMTcgMjAgMjIgMzAgMzFcbjEwIDEyIDE3IDIwIDIy
IDMwIDMxXG4xMCAxMiAxNyAyMCAyMiAzMCAzMSAzNSAzOVxuNTIgNTRcbjUy
IDU0IDYxIDY0XG40OCA1MiA1NCA2MSA2NFxuNDggNTIgNTQgNjEgNjQgNjVc
bjQ4IDUyIDU0IDYxIDY0IDY1IDY4IDY5XG44NiA4OFxuNzkgODYgODhcbjQ4
IDUyIDU0IDYxIDY0IDY1IDY4IDY5IDc0IDc5IDg2IDg4XG45NyA5OVxuOTUg
OTcgOTlcbjEwOCAxMTdcbjk1IDk3IDk5IDEwMyAxMDggMTE3XG4xMzYgMTM5
XG4xMzYgMTM5IDE0MVxuMTIxIDEyOCAxMzYgMTM5IDE0MVxuOTUgOTcgOTkg
MTAzIDEwOCAxMTcgMTIwIDEyMSAxMjggMTM2IDEzOSAxNDFcbjE0OSAxNTBc
bjE0MyAxNDkgMTUwXG45NSA5NyA5OSAxMDMgMTA4IDExNyAxMjAgMTIxIDEy
OCAxMzYgMTM5IDE0MSAxNDIgMTQzIDE0OSAxNTBcbjQ4IDUyIDU0IDYxIDY0
IDY1IDY4IDY5IDc0IDc5IDg2IDg4IDkwIDk1IDk3IDk5IDEwMyAxMDggMTE3
IDEyMCAxMjEgMTI4IDEzNiAxMzkgMTQxIDE0MiAxNDMgMTQ5IDE1MFxuMTAg
MTIgMTcgMjAgMjIgMzAgMzEgMzUgMzkgNDYgNDggNTIgNTQgNjEgNjQgNjUg
NjggNjkgNzQgNzkgODYgODggOTAgOTUgOTcgOTkgMTAzIDEwOCAxMTcgMTIw
IDEyMSAxMjggMTM2IDEzOSAxNDEgMTQyIDE0MyAxNDkgMTUwXG4xNjIgMTcx
XG4xNjIgMTcxIDE3MlxuMTgzIDE4NFxuMTYyIDE3MSAxNzIgMTc3IDE4MyAx
ODRcbjE2MCAxNjIgMTcxIDE3MiAxNzcgMTgzIDE4NFxuMjAwIDIwNFxuMjAw
IDIwNCAyMDlcbjIyNiAyMzNcbjIyMiAyMjYgMjMzXG4yMzggMjM5XG4yMjIg
MjI2IDIzMyAyMzQgMjM4IDIzOVxuMjAwIDIwNCAyMDkgMjIwIDIyMiAyMjYg
MjMzIDIzNCAyMzggMjM5XG4xOTYgMjAwIDIwNCAyMDkgMjIwIDIyMiAyMjYg
MjMzIDIzNCAyMzggMjM5XG4xNjAgMTYyIDE3MSAxNzIgMTc3IDE4MyAxODQg
MTg3IDE5NiAyMDAgMjA0IDIwOSAyMjAgMjIyIDIyNiAyMzMgMjM0IDIzOCAy
MzlcbjI2MyAyNjZcbjI3MyAyNzVcbjI2MyAyNjYgMjcwIDI3MyAyNzVcbjI2
MyAyNjYgMjcwIDI3MyAyNzUgMjg4IDI5M1xuMzE2IDMxN1xuMjYzIDI2NiAy
NzAgMjczIDI3NSAyODggMjkzIDMxMiAzMTYgMzE3XG4xNjAgMTYyIDE3MSAx
NzIgMTc3IDE4MyAxODQgMTg3IDE5NiAyMDAgMjA0IDIwOSAyMjAgMjIyIDIy
NiAyMzMgMjM0IDIzOCAyMzkgMjUyIDI2MyAyNjYgMjcwIDI3MyAyNzUgMjg4
IDI5MyAzMTIgMzE2IDMxN1xuMzIzIDMzMVxuMzIxIDMyMyAzMzFcbjMyMSAz
MjMgMzMxIDM1NiAzNTlcbjM5MiAzOThcbjM5MCAzOTIgMzk4XG4zMjEgMzIz
IDMzMSAzNTYgMzU5IDM2NCAzOTAgMzkyIDM5OFxuMTYwIDE2MiAxNzEgMTcy
IDE3NyAxODMgMTg0IDE4NyAxOTYgMjAwIDIwNCAyMDkgMjIwIDIyMiAyMjYg
MjMzIDIzNCAyMzggMjM5IDI1MiAyNjMgMjY2IDI3MCAyNzMgMjc1IDI4OCAy
OTMgMzEyIDMxNiAzMTcgMzE4IDMyMSAzMjMgMzMxIDM1NiAzNTkgMzY0IDM5
MCAzOTIgMzk4XG4xMCAxMiAxNyAyMCAyMiAzMCAzMSAzNSAzOSA0NiA0OCA1
MiA1NCA2MSA2NCA2NSA2OCA2OSA3NCA3OSA4NiA4OCA5MCA5NSA5NyA5OSAx
MDMgMTA4IDExNyAxMjAgMTIxIDEyOCAxMzYgMTM5IDE0MSAxNDIgMTQzIDE0
OSAxNTAgMTU3IDE2MCAxNjIgMTcxIDE3MiAxNzcgMTgzIDE4NCAxODcgMTk2
IDIwMCAyMDQgMjA5IDIyMCAyMjIgMjI2IDIzMyAyMzQgMjM4IDIzOSAyNTIg
MjYzIDI2NiAyNzAgMjczIDI3NSAyODggMjkzIDMxMiAzMTYgMzE3IDMxOCAz
MjEgMzIzIDMzMSAzNTYgMzU5IDM2NCAzOTAgMzkyIDM5OFxuNDE4IDQyMVxu
NDE4IDQyMSA0MjIgNDQwXG40MTggNDIxIDQyMiA0NDAgNDQxXG40NDQgNDQ4
XG40MTggNDIxIDQyMiA0NDAgNDQxIDQ0MyA0NDQgNDQ4XG40NTIgNDY3XG40
MTggNDIxIDQyMiA0NDAgNDQxIDQ0MyA0NDQgNDQ4IDQ1MCA0NTIgNDY3XG40
OTMgNDk2IDQ5N1xuNDg4IDQ5MyA0OTYgNDk3XG40ODMgNDg4IDQ5MyA0OTYg
NDk3XG40ODEgNDgzIDQ4OCA0OTMgNDk2IDQ5N1xuNDE4IDQyMSA0MjIgNDQw
IDQ0MSA0NDMgNDQ0IDQ0OCA0NTAgNDUyIDQ2NyA0NzIgNDgxIDQ4MyA0ODgg
NDkzIDQ5NiA0OTdcbjQxNSA0MTggNDIxIDQyMiA0NDAgNDQxIDQ0MyA0NDQg
NDQ4IDQ1MCA0NTIgNDY3IDQ3MiA0ODEgNDgzIDQ4OCA0OTMgNDk2IDQ5N1xu
MTAgMTIgMTcgMjAgMjIgMzAgMzEgMzUgMzkgNDYgNDggNTIgNTQgNjEgNjQg
NjUgNjggNjkgNzQgNzkgODYgODggOTAgOTUgOTcgOTkgMTAzIDEwOCAxMTcg
MTIwIDEyMSAxMjggMTM2IDEzOSAxNDEgMTQyIDE0MyAxNDkgMTUwIDE1NyAx
NjAgMTYyIDE3MSAxNzIgMTc3IDE4MyAxODQgMTg3IDE5NiAyMDAgMjA0IDIw
OSAyMjAgMjIyIDIyNiAyMzMgMjM0IDIzOCAyMzkgMjUyIDI2MyAyNjYgMjcw
IDI3MyAyNzUgMjg4IDI5MyAzMTIgMzE2IDMxNyAzMTggMzIxIDMyMyAzMzEg
MzU2IDM1OSAzNjQgMzkwIDM5MiAzOTggNDA2IDQxNSA0MTggNDIxIDQyMiA0
NDAgNDQxIDQ0MyA0NDQgNDQ4IDQ1MCA0NTIgNDY3IDQ3MiA0ODEgNDgzIDQ4
OCA0OTMgNDk2IDQ5N1xuIikudG9fc3Rkb3V0CgogIGVuZAoKZW5kCg==
"

data = Base64.decode64(encoded_data)

eval(data)
