#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main()
{
 pid_t pid;
 pid = fork();
 if (pid<0)
  { 
    printf("Fork failed");
    return 1;
  }
 if(pid==0)
  {
    printf("child process:my PID is %d\n", getpid());
  }
 else 
  {
 printf("Parent Process:My PID is %d child PID %d\n",getpid(),getppid());         
  }
  return 0;
}
