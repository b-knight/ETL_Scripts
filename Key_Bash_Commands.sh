# ------------------------------------------------------------------
# Count files in a directory:
ls | wc -l

# ------------------------------------------------------------------
# Count files in a directory by file type:
 
ls | awk -F . '{print $NF}' | sort | uniq -c | awk '{print $2,$1}'

# ------------------------------------------------------------------
# Move first n files to a new directory:

mv `ls | head -500` /net/mapr-nfs/mapr/mapr5/user/bknight/Reveal_sub_01/

# ------------------------------------------------------------------
# List files in lexicographical order with file size:

ls -lah

# ------------------------------------------------------------------
# See total disk space used by directory:

du -h 

# ------------------------------------------------------------------
# For all csv files in a directory, create a new verison of that file
# with the "out" extension where commas bounded by balanced
# quotes are replaced with a semi-colon.

for i in *.csv; do
    awk -F\" '{for(i=2;i<=NF;i+=2)gsub(",",";",$i);print}' OFS=\" $i > $i.out
done

# ------------------------------------------------------------------
# List all files with .csv extension

find . -name "*.csv" -type f

# ------------------------------------------------------------------
# DELETE all files with .csv extension

find . -name "*.csv" -type f -delete

# ------------------------------------------------------------------
# List all lines of a file that contain some string "x"

grep "x" filename.csv

# ------------------------------------------------------------------
# Trim ".out" file extension from all files in directory
find -type f -name '*.out' | while read f; do mv "$f" "${f%.out}"; done;

# ------------------------------------------------------------------
# For all files in a directory with the .csv extension, create a new 
# file with a version *.out extension) where all quotes are removed.

for i in *.csv; do sed s/\"//g $i > $i.out; done;

# ------------------------------------------------------------------
# Create a new file (b) from a subset of rows from file (a) based 
# on row number (in this case, rows [1,10].

tail -n +1 original_file.txt | head -n 10 - > output_file.txt
