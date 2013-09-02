## mathdrill 

This is application for sharing database of math drill problems
mainly for college mathematics, linear algebra, calculus etc...

Initially this app created as follows. 
#-headed lines are only for memo.

rails new mathdrill -d mysql
cd mathdrill
vi config/database.yml
git config --global core.editor "subl -w"
git init
git add .
git commit -m "Initial commit"
git remote add origin git@github.com:yositomi-opu/mathdrill.git
git push -u origin master
# git checkout -f etc...
# git checkout -b modify-README
# git branch
# git mv README.rdoc README.md
# git status
# git checkout master
# git merge modify-README
# git branch -d modify-README # not needed
# git branch -D modify-README # not needed / delete branch without merging
#rails generate scaffold target grade:string
#rails generate scaffold subject name:string
#rails generate scaffold unit name:string summary:text
#rails generate scaffold theme title:string

#rake db:create
