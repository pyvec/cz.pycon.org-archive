# Old PyCon CZ websites

This is an archive of older PyCon CZ websites archived as static mirrors.

It is deployed automatically with the [current website](https://cz.pycon.org).

## Adding a new version

### Create mirror

```shell
$ ./backup.sh <year>
```

for example

```shell
$ ./backup.sh 2022
```

and commit to this repository.

### Add the mirror to the website

Change the [nginx config](https://github.com/pyvec/cz.pycon.org/blob/main/docker/nginx/cz.pycon.org.conf#L60) in the cz.pycon.org repository.

## License

This work is licensed under a [MIT License](./LICENSE.md)
