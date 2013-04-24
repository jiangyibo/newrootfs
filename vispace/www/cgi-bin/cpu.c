#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>
#include <sysinfo.h>

#define  CPU_FILE_PROC_STAT "/proc/stat"
/*the utilization of CPU */
struct cpu_usage_struct
{
	unsigned long cpu_user;
	unsigned long cpu_sys;
	unsigned long cpu_nice;
	unsigned long cpu_idle;
};

struct mem_usage_struct
{
	unsigned long total;
	unsigned long used;
	unsigned long free;
	unsigned long shared;
        unsigned long buffers ;
        unsigned long cached;
};
unsigned long getCpuUsage(struct cpu_usage_struct *usage)
{
 FILE *fp = NULL;
 char tmp[10];
 unsigned long user,sys,nice,idle,total;
 unsigned long cpu_rate;

 fp = fopen(CPU_FILE_PROC_STAT,"r");
 if(fp == NULL)
 {
   return -1;
 }
 fscanf(fp,"%s %lu %lu %lu %lu",tmp,&(usage->cpu_user),
					&(usage->cpu_nice),&(usage->cpu_sys),&(usage->cpu_idle));

 user = usage->cpu_user;
 sys = usage->cpu_sys;
 nice = usage->cpu_nice;
 idle = usage->cpu_idle;
 total = user + sys + nice + idle;
 fclose(fp);
 
 //cpu_rate = (1-idle/total)*100;
 return total;
}
unsigned long getMemUsage(struct mem_usage_struct *usage)
{
  FILE *fp = NULL;
  fp = popen("free -m| grep -n '^'  |grep  '^2:'|grep -o '[^4:].*'|cut -d : -f 3","r");

 fscanf(fp,"%lu %lu %lu %lu %lu %lu",&(usage->total),
	&(usage->used),&(usage->free),&(usage->shared),&(usage->buffers),&(usage->cached));
 pclose(fp);
}
/*
double get_cpu_use_rate(const struct cpu_usage_struct *cur,
				const struct cpu_usage_struct *old)
{
	double user,sys,nice,idle,total;
	double cpu_rate;
	user = (double)(cur->cpu_user - old->cpu_user);
	sys = (double)(cur->cpu_sys - old->cpu_sys);
	nice = (double)(cur->cpu_nice - old->cpu_nice);
	idle = (double)(cur->cpu_idle - old->cpu_idle);
	total = user + sys + nice + idle;
	cpu_rate = (1-idle/total)*100;
	return total;
}
double get_cpu_us_rate(const struct cpu_usage_struct *cur,
				const struct cpu_usage_struct *old)
{
	double user,sys,nice,idle,total;
	double cpu_rate;
	user = (double)(cur->cpu_user - old->cpu_user);
	sys = (double)(cur->cpu_sys - old->cpu_sys);
	nice = (double)(cur->cpu_nice - old->cpu_nice);
	idle = (double)(cur->cpu_idle - old->cpu_idle);
	total = user + sys + nice + idle;
	cpu_rate = (user/total)*100;
	return cpu_rate;
}
double get_cpu_free_rate(const struct cpu_usage_struct *cur,
				const struct cpu_usage_struct *old)
{
	double user,sys,nice,idle,total;
	double free_rate;
	user = (double)(cur->cpu_user - old->cpu_user);
	sys = (double)(cur->cpu_sys - old->cpu_sys);
	nice = (double)(cur->cpu_nice - old->cpu_nice);
	idle = (double)(cur->cpu_idle - old->cpu_idle);
	total = user + sys + nice + idle;
	free_rate = (idle /total)*100;
	return free_rate; 
}
int get_cpuinfo_from_proc_stat(struct cpu_usage_struct *usage)
{
	FILE *fp = NULL;
	char tmp[10];
	fp = fopen(CPU_FILE_PROC_STAT,"r");
	if(fp == NULL)
	{
		perror("fopen");
		return -1;
	}
	printf("%s,%d\n",__FILE__,__LINE__);
	fscanf(fp,"%s %lu %lu %lu %lu",tmp,&(usage->cpu_user),&(usage->cpu_sys),
					&(usage->cpu_nice),&(usage->cpu_idle));
	printf("%s %d\n",__FILE__,__LINE__);
	fclose(fp);
	printf("%s %d\n",__FILE__,__LINE__);
	return 1;
}
*/
int main()
{
	//struct cpu_usage_struct *cur,*old,cpu_usage;
        struct cpu_usage_struct cpu_usage;
        struct mem_usage_struct mem;
	double use_rate,free_rate,rate;
        unsigned long total;
	/*old = (struct cpu_usage_struct*)malloc(sizeof(struct cpu_usage_struct));
	if(old == NULL)
	{
	   perror("malloc error");
	   return -1;
	}
	cur = (struct cpu_usage_struct*)malloc(sizeof(struct cpu_usage_struct));
	if(cur == NULL)
	{
		perror("malloc error");
		return -1;
	}
       
	get_cpuinfo_from_proc_stat(old);
	sleep(1);
	get_cpuinfo_from_proc_stat(cur);
        rate=cur->cpu_user+cur->cpu_sys+cur->cpu_nice+cur->cpu_idle;
	use_rate = get_cpu_use_rate(cur,old);
	free_rate = get_cpu_free_rate(cur,old);
        //use_rate=getCpuUsage(&cpu_usage);
	printf("us:%.1f%%\n use_rate:%.1lf%%\nfree_rate:%.1lf%%\n",100*cur->cpu_user/rate,use_rate,free_rate);
        */
        total=getCpuUsage(&cpu_usage);
        if (total>0)
	printf("<h4>用户使用率\t%.1f%%\t系统使用率\t%.1f%%</h4>",cpu_usage.cpu_user*100.0/total,cpu_usage.cpu_sys*100.0/total);
        getMemUsage(&mem);
        if (mem.total>0)
        printf("总数=%lu 已用=%lu 可用=%lu 缓冲区=%lu 已缓存=%lu 使用率:%.1f%%\n",mem.total,mem.used,mem.free,mem.buffers,mem.cached,(mem.used-mem.buffers-mem.cached)*100.0/mem.total);
	return 1;
}
