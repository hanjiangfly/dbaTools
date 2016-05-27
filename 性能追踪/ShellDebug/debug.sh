#!/bin/bash
#2013-01-01
#debug.sh

#### func ####
usage() {
cat <<'EOF'
usage: debug [option] script arguments
possible options are:
 
- help|usage: print this screen
- verbose: sets -xv flags
- noexec: sets -xvn flags
- no parameter sets -x flags
EOF
 
fmt << 'EOF'
 
 if the script takes arguments remember to enclose the script and arugments
 in ""
EOF
}
 
debug_cmd() {
   /bin/bash $FLAGS $SCRIPT
}
 
#### main ####
lc="$(tput bold; tput setaf 6)"	#level_color
sc="$(tput setaf 3)"			#script_color
lnc="$(tput setaf 1)"			#lineno_color
fc="$(tput setaf 2)"			#func_color
cc="$(tput bold; tput setaf 7)" #code_color 
PS4="${lc}+${sc}"'(${BASH_SOURCE##*/}'":${lnc}"'${LINENO}'"${sc}): ${fc}"'${FUNCNAME[0]:+${FUNCNAME[0]}(): }'"${cc}"
export PS4
if [ $# -gt 0 ]; then
   case "$1" in
         "verbose")
            FLAGS=-xv
            SCRIPT=$2
         ;;
         "noexec")
            FLAGS=-xvn
            SCRIPT=$2
         ;;
         "help"|"usage")
            usage
            exit 3
         ;;
         *)
            FLAGS=-x
            SCRIPT="$@"
         ;;
   esac
   debug_cmd
else
   usage
fi

tput sgr0
