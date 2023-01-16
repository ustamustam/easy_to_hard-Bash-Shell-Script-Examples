https://www.digitalocean.com/community/tutorials/the-basics-of-using-the-sed-stream-editor-to-manipulate-text-in-linux

komut yapısı aşağıdaki gibidir. 

sed [options] commands [file-to-edit]

sed '' BSD       # BSD isimli dosyanın içini ekrana basar.
cat BSD | sed ''
#sed otomatik olarak satırları ekrana basar
sed 'p'  dosyaismi
#fakat eğer "p" parametresi verirsek iki defa ekrana yazılacaktır. 
#bunu önlemek için  'n' parametersi kullanırız. 
set -n 'p' dosyaismi
#herhangi bir satır almak için 
$ sed -n '1p' sed_deneme.txt
$ sed -n '1,4p' sed_deneme.txt   # 1 ile 4 arasını listeler.
$ sed -n '1~4p' sed_deneme.txt  # 1 den başlar ve 1-4 arası dışındakileri listeler. 
sed -i '1~2d' everyother.txt