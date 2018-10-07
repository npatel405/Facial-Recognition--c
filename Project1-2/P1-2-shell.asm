#     Find George Variably Scaled
#
#
# This routine finds an exact match of George's face which may be
# scaled in a crowd of faces.
#
# <date>                               <your name here>

.data
Array:  .alloc	1024

.text

FindGeorge:	addi	$1, $0, Array		# point to array base
		swi	592			# generate crowd

# your code goes here

		# The following instructions only demo the swi's.
	        # They should be replaced with your code.
                addi    $2, $0, 160             # mark the 160th pixel
		swi	552			# with this swi
                addi    $2, $0, 161             # mark the 161th pixel
		swi	552			# with this swi
	
		lui     $2, 300                 # guess the 300th pixel for top left corner
	        ori     $2, $2, 1015            # and the 1015th pixel for bottom right
		### The above instructions are temporary (replace them).

		swi	593			# submit answer and check
		# TEMPORARY (can omit):
		srl     $4, $3, 16              # top left pixel location
		andi    $5, $3, 0xFFFF		# bottom right pixel location

		jr	$31			# return to caller
