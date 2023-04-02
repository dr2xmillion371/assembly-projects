.text                        

			                      
    .global _start          
			                         

_start:

                            

	  movl    $len,%edx          
	  movl    $msg,%ecx          
	  movl    $1,%ebx             # first argument: file handle (stdout)
	  movl    $4,%eax             # system call number (sys_write)
	  int     $0x80               # call kernel

                                # and exit

	  movl    $0,%ebx             # first argument: exit code
	  movl    $1,%eax             # system call number (sys_exit)
	  int     $0x80               # call kernel

.data                           # section declaration

msg:
	.ascii    "Hello, world!\n"   # our dear string
	len = . - msg                 # length of our dear string
