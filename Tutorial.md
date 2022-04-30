# Maybebat Programing Tutorial
## Basics
For Split Terms use ';'
### Print
For Printing Use Command print[maybe]:
```
print[maybe];hello!
```
### Pause
For Pause Use wait[button]:
```
wait[button]
```
# Variables
### 'Set' command
```
variable[set];variablename;variablevalue
```
And You Can Use 'Set /a' and 'Set /p' Commands like this:

Set /a:
```
variable[set];/a var;%var%+1
```
Set /p:
```
variable[set];/p variable;Input:
```
### Normal 'Set /a' equivalent
```
variable[math];var;%var%+10
```
### Printing Variables
```
print[maybe];%variablename%
```
## Labels and if statements
### labels
Declare new label:
```
labels[label];labelname
```
Goto:
```
labels[goto];labelname
```
### if ... goto
If equal goto:
```
if[goto];%variable%;value;label
```
For less and greter use if[batch]:
```
if[batch];%variable%;LSS or == or GTR;value;label
```
