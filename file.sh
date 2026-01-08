find_file_type()
{
 if [ -e "$1" ]; then
       echo "File in directory $1"
       file "$1"
 else
       echo "Directory doest not exist"
       fi
}

list_files()
{
 if [ -d "$1" ]; then
          echo "files in directory $1"
          ls -l "$1"
 else
          echo "Directory does not exist"
          fi
}

echo "Enter the directory to list files"
read dir 

echo "enter the file name to check type"
read filename

list_files "$dir"
find_file_type "$filename"           
