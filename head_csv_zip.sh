#!/bin/bash
# Bash Script to get first n lines of a csv file in a zip file

# Usage: ./head_csv_zip.sh <zip_file> -n <n_lines>

# Example: ./head_csv_zip.sh my_zip_file.zip -n 1000000

# Example: ./head_csv_zip.sh my_zip_file.zip --n_lines 1000000

# Example: ./head_csv_zip.sh --n_lines 1000000 --filename my_zip_file.zip

# Example: ./head_csv_zip.sh --filename my_zip_file.zip --n_lines 1000000

# Example: ./head_csv_zip.sh -f my_zip_file.zip -n 1000000

# Example: ./head_csv_zip.sh -f my_zip_file.zip --n_lines 1000000

# Example: ./head_csv_zip.sh -n 100 my_zip_file.zip 

while [[ $# -gt 0 ]] # while there are arguments to process
do
case $1 in
    -n|--n_lines)
    nlines="$2"
    shift # shifts out the -n or --n_lines
    shift # shifts out the number of lines
    ;;
    -f|--filename)
    zip_file="$2"
    shift # shifts out the -f or --filename
    shift # shifts out the filename
    ;;
    *.zip|*.csv.zip)
    zip_file="$1"
    shift # shifts out the filename if it passed without -f or --filename
    ;;
esac # bash grammar is kinda cool case -> esac, do -> done, if -> fi
done


# unzip the first n lines of file
# extract filename (unzip -l lists the files in the zip file since it could containe more than one file)
# head -n 1 gets the first line of the list (the file we want)
# awk '{print $4}' gets the 4th column of the first line (the filename in the output length, date, time, filename)
# output of awk is  various lines, tail 3 works (it will be last file if there are more but ok)

# Ignore __MACOSX files and .DS_Store files

filename=$(unzip -l $zip_file | grep -v "__MACOSX" | grep -v ".DS_Store" | tail -n 3 | awk '{print $4}')



echo "Extracting $nlines lines from $filename in $zip_file to ${nlines}_$filename"
unzip -p $zip_file | head -n $nlines > ${nlines}_$filename

# chmod +x head_csv_zip.sh to give permission to execute