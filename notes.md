###handle missing season/episode
change season episode format to 00.00 in XML file
- Set variables:
- - sn = awk -F '.' $1
- - ep = awk -F '.' $2
- - SNEP = 's' + $sn + 'e' + $ep  <== "s00e00"
