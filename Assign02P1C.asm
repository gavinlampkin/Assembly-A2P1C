# Gavin Lampkini, CS 2318-002, Assignment 2 Part 1 Program c.
#############################################################
# Allocates global memory for a length of five array and displays
# all values with their corresponding label.
# Then a swap is conducted to swap elements one with three and
# two and five.
# The array contents are then redisplayed to the user but in
# reverse order, as well with the labels.
#############################################################

			.data
Arr:			.word 808, 707, 303, 909, 404
ArrPrompt:		.asciiz "Array Contents:	"
Elm1:			.asciiz "Element 1: "
Elm2:			.asciiz "Element 2: "
Elm3:			.asciiz "Element 3: "
Elm4:			.asciiz "Element 4: "
Elm5:			.asciiz "Element 5: "

			.text
			.globl main
main:
			la $a0, ArrPrompt
			li $v0, 4
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $t0, Arr
			
			la $a0 Elm1
			li $v0, 4
			syscall
			
			li $v0, 1
			lw $a0,0($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $a0 Elm2
			li $v0, 4
			syscall
			
			li $v0, 1
			lw $a0,4($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $a0 Elm3
			li $v0, 4
			syscall
			
			li $v0, 1
			lw $a0,8($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $a0 Elm4
			li $v0, 4
			syscall
			
			li $v0, 1
			lw $a0,12($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $a0 Elm5
			li $v0, 4
			syscall
			
			
			li $v0, 1
			lw $a0,16($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			
####################### SWAP ############################################	
		
			la $t0, Arr
		
			lw $t1, 0($t0)	 	# Load $t1 with first elm		
			lw $t2, 12($t0)		# Load $t2 with third elm
			sw $t2, 0($t0)		# Swap in array to first
			sw $t1, 12($t0)		# Swap in array to third
			
			lw $t3, 4($t0)		# Load $t3 with second elm		
			lw $t4, 16($t0)		# Load $t4 with fifth elm
			sw $t4, 4($t0)		# Swap in array to second		
			sw $t3, 16($t0)		# Swap in array to fifth
			
#########################################################################
			
			la $a0, ArrPrompt
			li $v0, 4
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $t0, Arr
			
			la $a0 Elm5
			li $v0, 4
			syscall
			
			li $v0, 1
			lw $a0,16($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $a0 Elm4
			li $v0, 4
			syscall
			
			li $v0, 1
			lw $a0,12($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $a0 Elm3
			li $v0, 4
			syscall
			
			li $v0, 1
			lw $a0,8($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $a0 Elm2
			li $v0, 4
			syscall
			
			li $v0, 1
			lw $a0,4($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $a0 Elm1
			li $v0, 4
			syscall
			
			
			li $v0, 1
			lw $a0,0($t0)
			syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			li $v0, 10		# graceful exit
			syscall
			
			
			
			
