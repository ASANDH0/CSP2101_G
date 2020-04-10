#STUDENT_NAME: ANMOLDEEP SANDHU
#STUDENT_ID: 10440057
#AGE GUESSING SYSYTEM

#!/bin/bash
#Random value of age generated between 1-100
Age_Generated=$(($RANDOM % 100))
# number chances to guess age
no_of_try=1

# FOR STATEMENT TO REPEAT THE LOOP.
for (( ; ; ))                   
 do
 # read function to get the input from user

  read -p  "This is your chance no. $no_of_try to guess the age: " Guessed_Age 
# function -eg used to check whether the user's guess is equal to generated age or not.
  if [ $Guessed_Age -eq $Age_Generated ]      
   then
   # command echo used to print message
   echo "your guess is correct"
# break statement will stop the program if the user's guess is equal to generated age.
   break                                    
   # if the user's gyess is not equal.
    else 
     echo "wrong guess"

    # to check whether the user' input is greater or smaller than the generated age.
   if [ $Guessed_Age -ge $Age_Generated ] 
    then 
    # if user input greater.
      echo "too high try again!"
     else 
    # If user input smaller.
      echo "too low try again!"
     fi                                   
  fi    
# no of chances after every try will increase by 1.
no_of_try=$((no_of_try+1))
done                              
