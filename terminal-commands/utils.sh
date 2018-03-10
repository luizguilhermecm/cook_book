# get the last command it was ran coppied but not run
!!

# another way
#
!-1

# and to get it done, replace the number and get it on
!-50 #will get the fifth past command runned 



# to copy the command from history to run it agina
# $ !<nb>: copy the command with number <nb> to be ran
!342


# average file size of current directory in kb
ls -l | awk '{s+=$5} END {print "Average file size: " s/NR/1024 "k"}'
# Average file size: 89.3511k
ls -l | awk '{s+=$5} END {print s/NR/1024}'
#650843

# average file size of current directory in mb
ls -l | awk '{s+=$5} END {print "Average file size: " s/NR/1024/1024 "mb"}'
# Average file size: 635.589mb
ls -l | awk '{s+=$5} END {print s/NR/1024/1024}' # 1024/1024 == 1048576 (kb/1024) == mb
# 635.589
ls -l | awk '{s+=$5} END {print s/NR/1048576}' # 1048576 == 1024/1024 == mb
# 635.589

# two decimal n.dd
echo "scale=2;$(ls -l | awk '{s+=$5} END {print s/NR/1024}' | bc)/1024" | bc
# 635.58 

# math 10/3 with 1 decimal precision
echo "scale=1;10/3" | bc 


