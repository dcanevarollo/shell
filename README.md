# Important Commands for Shell Scripting

## Redirect

`>` sign

```
$ echo "hello there" > newtext.txt
```

It will overwrite the content if the file is already present. To avoid this, use `>>` to append to the file

```
$ echo "I want to add this line" >> newtext.txt
```

You can redirect commands outputs to a file

```
$ ls -l . >> newtext.txt
```

You can use this to concat two files into a third one

```
$ cat newtext.txt tmp.txt > concat.txt
```
---
## Pipe

`|` sign

You can use this to make a command output as another command input

```
$ ls . | less
```

<sub>*`less` command will display a given content into the terminal in a way you can navigate into pages

You can pipe as many as command you want

```
$ ls . | tail -3 | sort > mynewfile.txt
```
---
## Find

`find` command

Used to find files (of course) using the `-name` parameter

```
$ find newFolder/ -name aaa.txt
newFolder/A-folder/aaa.txt
``` 

If you want to find everything that is inside *newFolder*

```
$ find newFolder/
newFolder/
newFolder/A-folder
newFolder/A-folder/aaa.txt
```

One can also use the star sign

```
$ find newFolder/ -name 1.t*
newFolder/A-folder/1.txt
```

Find only files (`f`) or directories (`d`) inside a folder

```
$ find newFolder/ -type f
newFolder/A-folder/1.txt
newFolder/A-folder/aaa.txt
```
---
## Grep

`grep` command

Used to find content **inside** a file

It is **case sensitive**

```
$ grep hell concat.txt 
hello there
```

Use `-i` to **not be case sensitive**

```
$ grep -i so concat.txt 
something
Son
```

Technically, it says "find the line that contains *so*"

Really useful with `pipe` command

```
$ ls | grep n
concat.txt
mynewfile.txt
newFolder/   
newtext.txt  
notes.md 
```

You can use `-v` to **exclude** the input. The command below will show every line that does not contain *n*

```
$ ls | grep -v n
tmp.txt
```
---
## AWK

The `awk` command is useful for table files, for example
```
$ cat text1.txt 
NAME    COUNTRY SEX     AGE  POINTS     
Frank   usa     M       32      4323:001
John    usa     M       61      232:002 
Mark    italy   M       43      2243:013
Lara    spain   F       32      2321:007
Daila   spain   F       32      1928:032
Robert  germany M       51      219:121 
Lisa    usa     F       22      2314:000
BOB     france  M       27      576:002 
R       italy   M       32      32
```

### Print whole file
```
$ awk '{print}' text1.txt
```
### Print first column
```
$ awk '{print $1}' text1.txt
```
### Print first and second columns
```
$ awk '{print $1,$2}' text1.txt
```
### Print last column and second-to-last column
```
$ awk '{print $(NF),$(NF-1)}' text1.txt
```
### Print second row
```
$ awk 'NR==2 {print}' text1.txt
```
<sub>*`NR` = Number of Row

### Print second to fifth row
```
$ awk 'NR==2,NR==5 {print}' text1.txt
```
### Print second and fifth row
```
$ awk 'NR==2;NR==5 {print $1,$4}' text1.txt
```
### Define the file separator
```
$ awk -F ";" '{print}' text1.txt
```
### Find rows with usa strings or ita
```
awk '/usa|ita/ {print}' text1.txt
```

---
## Sudo

The `sudo` command let you act as the root user
```
$ sudo rm text.txt
```

You can also create another terminal as the root
```
$ sudo bash
```

## Chown

Used to change the ownership of a given file or directory

```
$ sudo chown dcanevarollo text.txt
```

## Chgrp

Used to change the group ownership of a given file or directory

```
$ sudo chgrp users text.txt
```

## Chmod

Used to change the permissions of a given file or directory

For the user (`u`), group (`g`) or any other (`o`)
```
$ chmod u=wrx
```

<sub>* `wrx` = write, read, execute

One can also add (`+`) or remove (`-`) a permission

```
chmod +x text.txt
```

---
## Variables

```
$ var=753
```
```
$ echo "The value of var is ${var}"
The value of var is 753
```

One can unset a variable using `unset`
```
unset var
```

You can put an command output to a variable
```
d=$(ls)
```
This is called **command substitution**

---
## UNIX Login file

This depends on your system, but can be **.profile**, **.bashrc**, **.bash_profile** or **.login**

This file is read when you login into your system

You can use this to set a variable the goes 'permanently'

The command `source` will rerun the login script so you don't need to exit the terminal to get the variable after it is defined

---
## Read

Use `read` command to set variable 'at runtime'
```
$ read var
```

Use `-p` to add a line to the reader and `-s` to secure it
```
$ read -sp "Password: " pass
Password: 
```
