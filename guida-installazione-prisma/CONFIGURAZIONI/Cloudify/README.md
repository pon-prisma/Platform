Da questa cartella è possibile scaricare Cloudify ricompilato da Reply S.p.A. nel quale sono stati risolti i seguenti bugs:
- mancato bootstrap delle VMs in presenza di macchine virtuali in stato di SHUTOFF nel tenant;
- uso di una sola subnet anche nel caso di più subnet


La cartella *cloudify-2.7.2reply* contiene 3 file compressi (.zip) che è necessario scaricare ed estrarre nella stessa cartella che li ospita. A processo terminato, cancellare i file compressi. Il contenuto finale della cartella *cloudify-2.7.2reply* sarà:

bin/
clouds/
config/
deploy/
lib/
logs/
notice.txt
policy/
README.txt
recipes/
START_HERE.htm
tools/

La cartella *file-per-SWIFT* contiene i file chè necessario caricare in un container pubblico SWIFT di OpenStack. Questi file verranno utilizzati nel processo di installazione di Cloudify nella VM Managere e nelle VM Application. Nella suddetta cartella sono presenti due parti (cloudify-2.7.2reply.tar.gz.aa e cloudify-2.7.2reply.tar.gz.ab) di un unico file che andrà ricostruito eseguendo il comando:

# cat cloudify-2.7.2reply.tar.gz.* | tar xzvf -

Si otterrà cos' il file cloudify-2.7.2reply.tar.gz che dovrà essere caricato nel container SWIFT insieme ai file jdk-6u32-linux-i586.bin e jdk-6u32-linux-x64.bin.
