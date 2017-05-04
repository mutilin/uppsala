GREEN="\033[32m"
YELLOW="\033[33m"
RED="\033[31m"
DEFAULT="\033[0m"

R_OK=0
GCC_FAIL=0
CIL_FAIL=0

MODELS="-I model"
CIL=/home/mutilin/LDV/ldv-new/ldv-tools/dscv/rcv/cil/obj/x86_LINUX/cilly.asm.exe

for file in "$@"
do 
	gcc $MODELS -c -w "$file"
	if [[ $? = '0' ]]; then
		NAME=`basename $file .c`;
		gcc $MODELS -w -E $file -o $NAME.i;
		$CIL --printCilAsIs --domakeCFG --decil --noInsertImplicitCasts --useLogicalOperators --ignore-merge-conflicts --no-convert-direct-calls --no-convert-field-offsets --no-split-structs --rmUnusedInlines --out $NAME.cil.i $NAME.i
		if [[ $? = '0' ]]; then
		        echo -e "\t${GREEN}ok${DEFAULT}"
		        (( R_OK++ ))		
		else
			echo -e "\t${RED}CIL FAIL${DEFAULT}"
		        (( CIL_FAIL++ ))
		fi
	else 
		echo -e "\t${RED}GCC FAIL${DEFAULT}"
	        (( GCC_FAIL++ ))		
	fi
done
echo -e "${GREEN}OK:\t\t $R_OK${DEFAULT}"
echo -e "${RED}GCC FAIL:\t $GCC_FAIL${DEFAULT}"
echo -e "${RED}CIL FAIL:\t $CIL_FAIL${DEFAULT}"
