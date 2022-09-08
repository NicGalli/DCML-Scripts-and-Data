#!bin/bash
#create copies
cp ./exchange_dir/top_monitoring.csv ./dataset
cp ./exchange_dir/top_monitoring2.csv ./dataset
cp ./exchange_dir/top_monitoring3.csv ./dataset
cp ./exchange_dir/top_monitoring4.csv ./dataset
cp ./exchange_dir/top_monitoring5.csv ./dataset
cp ./exchange_dir/top_monitoring6.csv ./dataset
cp ./exchange_dir/tshark_output ./dataset
cp ./exchange_dir/tshark_output2 ./dataset
cp ./exchange_dir/tshark_output3 ./dataset
cp ./exchange_dir/tshark_output4 ./dataset
cp ./exchange_dir/tshark_output5 ./dataset
cp ./exchange_dir/tshark_output6 ./dataset

cd dataset


#remove database creation info
sed -i '/19:01:/d;/19:02:/d;/19:03:/d;/19:04:/d' tshark_output
sed -i '/19:01:/d;/19:02:/d;/19:03:/d;/19:04:/d' top_monitoring.csv

#trim network info
sed -i 's/^[0-9]\+ //' tshark_output
cut -c1-8 tshark_output > temp
cat temp > tshark_output
uniq -c tshark_output > temp
cat temp > tshark_output
sed -i 's/ *//' tshark_output
sed -i 's/ /,/' tshark_output

#remove database creation info
sed -i '/21:23:/d;/21:24:/d;/21:25:/d;/21:26:/d' tshark_output2
sed -i '/21:23:/d;/21:24:/d;/21:25:/d;/21:26:/d' top_monitoring2.csv

#trim network info
sed -i 's/^[0-9]\+ //' tshark_output2
cut -c1-8 tshark_output2 > temp
cat temp > tshark_output2
uniq -c tshark_output2 > temp
cat temp > tshark_output2
sed -i 's/ *//' tshark_output2
sed -i 's/ /,/' tshark_output2


#remove database creation info
sed -i '/08:09:/d;/08:10:/d;/08:11:/d;/08:12:/d;/08:13:/d;/08:14:/d;/08:15:/d' tshark_output3
sed -i '/08:09:/d;/08:10:/d;/08:11:/d;/08:12:/d;/08:13:/d;/08:14:/d;/08:15:/d' top_monitoring3.csv

#trim network info
sed -i 's/^[0-9]\+ //' tshark_output3
cut -c1-8 tshark_output3 > temp
cat temp > tshark_output3
uniq -c tshark_output3 > temp
cat temp > tshark_output3
sed -i 's/ *//' tshark_output3
sed -i 's/ /,/' tshark_output3

#remove database creation info
sed -i '/14:54:/d;/14:55:/d;/14:56:/d;/14:57:/d;/14:58:/d' tshark_output4
sed -i '/14:54:/d;/14:55:/d;/14:56:/d;/14:57:/d;/14:58:/d' top_monitoring4.csv

#trim network info
sed -i 's/^[0-9]\+ //' tshark_output4
cut -c1-8 tshark_output4 > temp
cat temp > tshark_output4
uniq -c tshark_output4 > temp
cat temp > tshark_output4
sed -i 's/ *//' tshark_output4
sed -i 's/ /,/' tshark_output4

#remove database creation info
sed -i '/15:42:/d;/15:43:/d;/15:44:/d;/15:45:/d' tshark_output5
sed -i '/15:42:/d;/15:43:/d;/15:44:/d;/15:45:/d' top_monitoring5.csv

#trim network info
sed -i 's/^[0-9]\+ //' tshark_output5
cut -c1-8 tshark_output5 > temp
cat temp > tshark_output5
uniq -c tshark_output5 > temp
cat temp > tshark_output5
sed -i 's/ *//' tshark_output5
sed -i 's/ /,/' tshark_output5


#remove database creation info
sed -i '/16:16:/d;/16:17:/d;/16:18:/d;/16:19:/d;/16:20:/d;' tshark_output6
sed -i '/16:16:/d;/16:17:/d;/16:18:/d;/16:19:/d;/16:20:/d;' top_monitoring6.csv

#trim network info
sed -i 's/^[0-9]\+ //' tshark_output6
cut -c1-8 tshark_output6 > temp
cat temp > tshark_output6
uniq -c tshark_output6 > temp
cat temp > tshark_output6
sed -i 's/ *//' tshark_output6
sed -i 's/ /,/' tshark_output6

echo "captured_packets,time" > tshark_final.csv
cat tshark_output >> tshark_final.csv
cat tshark_output2 >> tshark_final.csv
cat tshark_output3 >> tshark_final.csv
cat tshark_output4 >> tshark_final.csv
cat tshark_output5 >> tshark_final.csv
cat tshark_output6 >> tshark_final.csv

cat top_monitoring.csv > top_final.csv
sed -e 1d top_monitoring2.csv >> top_final.csv
sed -e 1d top_monitoring3.csv >> top_final.csv
sed -e 1d top_monitoring4.csv >> top_final.csv
sed -e 1d top_monitoring5.csv >> top_final.csv
sed -e 1d top_monitoring6.csv >> top_final.csv

cd ..

