# Was it Rufus?

Check facts for a local git repository by running the script details

## Getting Started

Git needs to be installed to check the details.

To install git, check [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

If you are using windows try to use a shell that supports bash scripts.

## Usage

The script will print the following details:
1. active branch (boolean)
2. whether repository files have been modified (boolean)
3. whether the current head commit was authored in the last week (boolean)
4. whether the current head commit was authored by Rufus (boolean)

To get details, run the following by passing appropriate path to the repository
```
bash details.sh "path-to-repo"
```

After running the command, you will see something like
```
active branch: main
local changes: True
recent commit: True
blame Rufus: False
```