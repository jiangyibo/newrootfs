#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>
#include <sysinfo.h>

//arm-linux-gcc -o cpu cpumem.c -I./../../../include -L/home/visint/src/arm/lib -lvispace -liconv -lsqlite3
int main()
{
    float sys_usage, user_usage,mem_usage;
    struct mem_usage_t memery;
    if (!getCpuUsage(&sys_usage,&user_usage))
    {
      printf("<h5>用户使用率\t%.1f%%\t系统使用率\t%.1f%%</h5>",sys_usage,user_usage);
    }
    mem_usage=getMemUsage(&memery);
    if (mem_usage>0)
    {
      printf("总数=%lu 已用=%lu 可用=%lu 缓冲区=%lu 已缓存=%lu 使用率:%.1f%%\n",memery.total,
	memery.used,memery.free,memery.shared,memery.buffers,memery.cached,mem_usage);
    }
   return 1;
}
