Auto prepend a commit message with a ticket name from current branch. This applies to all of your repos. No needs to configure one by one.
Multi-message commit is also supported.
Ticket name should be in format `projectname-ticketnumber`

For example:
```
git checkout -b PRJ-101-refactor
Switched to a new branch 'PRJ-101-refactor'

touch x

git add x

git commit -m "Add a file named x"
[PRJ-101-refactor 2d61504] PRJ-101 | Add a file named x
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 x

git log --oneline | head -1
2d61504 (HEAD -> PRJ-101-refactor) PRJ-101 | Add a file named x
```

## Installation

```
curl -sL https://raw.githubusercontent.com/minhdanh/git-auto-commit-prefix/master/install.sh | bash
```

Credit: https://medium.com/better-programming/how-to-automatically-add-the-ticket-number-in-git-commit-message-bda5426ded05
