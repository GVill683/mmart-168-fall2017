# MMART 168: Course Repository
## Berkeley City College, Fall 2017
This course repository will house homework assignments, useful scripts, and code samples.

To install the software needed for the course on a Mac, please execute the following:

```shell

bash utilities/mmart168-installation.sh

```

### Setup

* Fork the repository from here to your personal
account

* Clone it down to your computer through the following
terminal command. This will create a folder on your local machine.
```
git clone https://github.com/<YOUR_USERNAME>/mmart-168-fall2017.git
```

* In order to merge in the latest assignments you'll need
to create a remote to the base homework repo. If this is confusing, don't worry too much - just use the following command:
```
git remote add upstream https://github.com/mmart168/mmart-168-fall2017.git
```

### Rebasing

Each week, we'll add a new folder for that week's homework. In order to get the new homework, use the following command:

* Each week, you'll rebase from the class repo, which will give you access to the latest homework assignment on your local machine.
```
git pull --rebase upstream master
```

### Submitting Homework

In order to submit your homework, you'll need to push your changes to your github repository. This will take a couple of steps.

#### Create a new branch
Before you start your homework, make sure you're working on the branch `master`. If you are not, use the following command:
```
git checkout master
```

To create a new branch, use:
```
git checkout -b <branch-name>
```

_Note: Branch names should be semantic. We recommend using something like hw01_

#### Do homework
Unfortunately, there's not a simple git command for this. Just use your favorite text editor. (:

#### Add changes

Once you've finished the homework and are ready to submit, check to see which files you've changed using
```
git status
```

Add the appropriate files using
```
git add <file1> <file2>
```

_Note: if you want to add all files, use:_
```
git add -A
```

#### Commit changes

Commit changes using the following command:
```
git commit -m "<your commit message here>"
```

_Note: make sure to use a semantic commit message in the PRESENT TENSE, e.g., "Add DOM manipulation function to HW01"_

#### Push changes to master
Finally, push your changes to your github repository with the following:
```
git push origin <branch_name>
```
