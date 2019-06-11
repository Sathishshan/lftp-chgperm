### lftp_chgperm_files_alone | Change  permission  mask  on remote files.

#### Script USAGE: 
"For MAN page use -m [help command]"  
./lftp_chgperm_files_alone.sh -u Username -p 'Password' -h Host -d Domain.com -f path_to_remotefile.txt"

#### LFTP USAGE:
`lftp -f script_file`

```
chmod [OPTS] mode files...

       Change  permission  mask  on remote files. The mode can be an octal number or a symbolic mode
       (see chmod(1)).

            -c, --changes     like verbose but report only when a change is made
            -f, --quiet       suppress most error messages
            -v, --verbose     output a diagnostic for every file processed
            -R, --recursive   change files and directories recursively
```
