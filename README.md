# Old PyCon CZ websites

This is an archive of older PyCon CZ websites archived as static mirrors.

It is deployed automatically with the [current website](https://cz.pycon.org).

## Adding a new version

### 1. Create mirror

```shell
$ ./backup.sh <year>
```

for example

```shell
$ ./backup.sh 2022
```

### 2. Commit to this repository

### 3. Add the mirror to the cz.pycon.org nginx configuration

Change the [nginx config](https://github.com/pyvec/cz.pycon.org/blob/main/docker/nginx/cz.pycon.org.conf#L60) in the cz.pycon.org repository.

### 4. Deploy cz.pycon.org

Which should happen by pushing to main branch but check current documentation [in the repository](https://github.com/pyvec/cz.pycon.org).

## License

This work is licensed under a [MIT License](./LICENSE.md)
