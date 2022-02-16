older="META_INF"
path="path"
temp=1
path1="/Users/preetbai/Downloads/arvind/office_1"
path2="/Users/preetbai/Downloads/arvind/office_2"

echo "now the path is $path"


while [ $temp -le 2 ]
do 

	echo "inside do"
	dir=$path$temp
	dir=${dir}
    #dir=`echo"$(($dir))"`
	echo "path is $dir"
	cd $dir
	pwd
    if [ -d "$folder" ];
    	ls -lrt
    	echo "inside if"
    then
        mv "$folder" "${folder}_BK"
        temp=`expr $temp + 1`

        echo $temp

echo "Successfully reanmed $folder"
