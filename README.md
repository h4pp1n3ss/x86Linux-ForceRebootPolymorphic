# Linux/x86 Force Reboot shellcode for Linux/x86 - Polymorphic 
 
## Description: 

Linux/x86 Force Reboot shellcode for Linux/x86 - Polymorphic. The shellcode is not encoded.

- Author: h4pp1n3s
- Tested on: Linux 4.18.0-25-generic #26 Ubuntu
- Size: 51 bytes

# Linux API

This shellcode uses the execve linux API

### WinExec

[execve Function Prototype](https://man7.org/linux/man-pages/man2/execve.2.html)
```c
 int execve(const char *pathname, char *const argv[],
                  char *const envp[]);
```


# Resources

- [Corelan - Exploit writing tutorial part 9](https://www.corelan.be/index.php/2010/02/25/exploit-writing-tutorial-part-9-introduction-to-win32-shellcoding/)
- [Shell-storm](http://shell-storm.org/shellcode/)
- [Phrack - History and Advances in Windows Shellcode](http://www.phrack.org/issues/62/7.html#article)
- [Skape - Understanding Windows Shellcode ](http://www.hick.org/code/skape/papers/win32-shellcode.pdf)
