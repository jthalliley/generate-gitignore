# generate-gitignore

Generates a ```.gitignore``` file from a list of keywords/technologies.

## How to Use

First, clone this repo.

### What technologies are supported?

Execute:

```
   generate-gitignore.sh --keywords
```

This will show you the list of keywords you can choose from (case-sensitive).

### How to generate ```.gitignore``` file

To generate a ```.gitignore``` file, execute, for example:

```
   generate-gitignore.sh Java Eclipse Emacs
```

You'll now have a ```/tmp/generated.gitignore``` file which you can then copy to ```~/.gitignore```.

### What if you don't have a ```/tmp``` directory?

You can edit ```generate-gitignore.sh``` and modify ```tempDir``` to point somewhere else.

# Acknowledgements

This generator uses https://github.com/github/gitignore as input to generate a merged ```.gitignore``` file.
