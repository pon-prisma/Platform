README:
In this modified release is integrated a particular plugin gateway respect playSMS-1.0-rc.2 ufficial version

--- PLUGIN GATEWAY SMSMACHINE ---
The following software is been modified in order to add "smsmachine" plugin.
In the following folder /web/plugin/gateway, there is "smsmachine" directory with correlated folder.

###IMPORTANT###
After playsms installation, Please change admin pwd by the WebUI playsms. 
And after open file config.php inside smsmachine folder, and fill information about IP of 
smsmachine and password used in order to send SMS.


--- ADD TABLE IN PLAYSMS DB ---
This software already contains the playsms_sql dump updated with the addition of the following table:
playsms_tblNotifyInfo
with admin initial value inserted.
You can find also the latest ufficial version of dump file (not modified) in the db folder.
The table playsms_tblNotifyInfo has been added for the project.
