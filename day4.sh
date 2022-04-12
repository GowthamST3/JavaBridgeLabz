for list in `ls *.java *.py *.js`

do

filename=`echo $list | awk -F. '{print $1}'`
        if [ -d $filename ]
             then
              rm -rf $filename
          fi 

mkdir $filename
filename1=`echo $list | awk -F. '{print  $2}'`

if [ -d $filename1 ]
      then 
           rm -rf $filename1

  fi
mkdir $filename1

mv $filename1 $filename

mv ~/Desktop/stage1-review/$list ~/Desktop/stage1-review/$filename/$filename1

done
