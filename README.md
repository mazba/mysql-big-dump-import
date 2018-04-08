# MySQL Big Dump-Import


## Credits

This code is originally written by [Mazba Kamal][1]

## Usage(Dump)

1. Clone [MySQL Big Dump-Import][2] on your PC.
2. Open _mysqldump.sh_ in a text editor, adjust the database configuration and dump file encoding.
3. Run **sudo chmod +x  mysqldump.sh**
4. Run **nohup sh mysqldump.sh**

## Usage(Import)

1. Clone [MySQL Big Dump-Import][2] on your PC.
2. Move to SQL file in import folder (must be in sql.gz format)
3. Open _mysqlimport.sh_ in a text editor, adjust the database configuration and import file.
4. Run **sudo chmod +x  _mysqlimport.sh_**
5. Run **nohup sh mysqlimport.sh**
## Advanced notes

**Note:** Check the .log files for dump/import status.  

[1]: https://github.com/mazba
[2]: https://github.com/mazba/mysql-big-dump-import