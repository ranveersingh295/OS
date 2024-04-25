#include<stdio.h>
#include<stdlib.h>
#include<sys/wait.h>
#include<unistd.h>
pid_t fork(void);
int main(void)
{
int pid;
int status;
printf("Hello World!\n");
pid=fork();
if(pid==-1)
{
perror("bad fork");
exit(1);
}
if(pid==0)
{
perror("bad fork");
exit(1);
}
if(pid==0)
{
printf("\n Child: child pid =%d, Parent pid=%d\n",getpid(), getppid());
printf("I am the child process.\n");
}

else { wait(&status);
printf("I am the parent process.\n");
printf("\n Parent: Child pid=%d, Parent pid=%d\n",pid, getpid());
return 0;
}
}
