#cat logs/fast.log | awk -F' ' 'BEGIN {OFS="|"}; {if (NR > 1) {split($9, src_ip, ":"); split($11, dest_ip, ":"); print substr($1, 1, 19), $5, $6, $7, $8, src_ip[1], src_ip[2], dest_ip[1], dest_ip[2]}}' > teste.txt
#cat logs/fast.log | awk -F'\\[\\*\\*\\]' 'BEGIN {OFS="|"}; {start_index = index($2, "]") + 2; print substr($1, 1, 19), substr($2, start_index, length($2)-start_index), $3}' > teste.txt


cat logs/fast.log | 
awk -F'\\[\\*\\*\\]' 'BEGIN {OFS="|"}; {start_index = index($2, "]") + 2;
part1 = substr($3, 1, index($3, "{") - 1);
part2 = substr($3, index($3, "{") + 1, index($3, "}") - index($3, "{") - 1);
part3 = substr($3, index($3, "}") + 1);
print substr($1, 1, 19), substr($2, start_index, length($2)-start_index), part1, part2, part3;}' > teste.txt
