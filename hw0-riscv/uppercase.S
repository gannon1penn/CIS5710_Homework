        .section .data
input_string:   .asciz "Hello world!"

        # tohost/fromhost are data locations used by Spike
        .align 8
tohost: .byte 0
        .align 8
fromhost: .byte 0

        
        .section .text
        .globl _start
_start:
        # Load the address of the input string into a0
        la a0, input_string

        # Your code here!

        lui a1, 0 # Repeat for all registers
        lui a2, 0

        addi a3, x0, 97
        addi a4, x0, 123
        

        add a1, a1, a0  # Add address to the x10 counter to get full address of the next byte

        Loop:  

        lb a2, 0(a1)  # Load the character byte into x1 reg

        # Do I need constants in registers for branching statements, or can I use the numbers?

        beq x0, a2, end_program

        bltu a2, a3, Increment  # If the character is less than 97 (caps or other character) then skip the rest and increment

        bgeu a2, a4, Increment  # If the character is greater than 123 (beyond lowercase characters) increment
        
        addi a2, a2, -32  # Subtract 32 to the character byte, changing a lowercase character to an uppercase

        sb a2, 0(a1)

        Increment: addi a1, a1, 1  # Increment the i counter by 1
        
        beq x0, x0, Loop  # Return to beginning of loop
        
end_program:
        # jump here when you're done
        j end_program

