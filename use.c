#include <stdio.h>
#include <unistd.h>
int main()
{
 // Get the real user ID and group ID
 uid_t user_id=getuid();
 gid_t group_id=getgid();

 printf("user ID:%d \n",user_id);
 printf("group ID:%d \n",group_id);
 
 return 0;
}
