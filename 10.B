#include<stdio.h>
void main(){
int pid[10],bt[10],pr[10],wt[10],tat[10],n,twt=0,ttat=0,i,j,t;
float awt,atat;
printf("Enter no.of processes:");
scanf("%d",&n);
printf("\nEnter burst times:");
for(i=0;i<n;i++)
scanf("%d",&bt[i]);
printf("\nEnter PID:");
for(i=0;i<n;i++)
scanf("%d",&pid[i]);
printf("\nEnter priorities:");
for(i=0;i<n;i++)
scanf("%d",&pr[i]);
for(i=0;i<n;i++){
for(j=i+1;j<n;j++){
if(pr[i]>pr[j]){
t=pr[i];
pr[i]=pr[j];
pr[j]=t;
t=bt[i];
bt[i]=bt[j];
bt[j]=t;
t=pid[i];
pid[i]=pid[j];
pid[j]=t;
}
}
}
wt[0]=0;
tat[0]=bt[0];
for(i=1;i<n;i++){
wt[i]=tat[i-1];
tat[i]=bt[i]+wt[i];
}
for(i=0;i<n;i++){
ttat = ttat+tat[i];
twt = twt+wt[i];
}
printf("\nPID\tPriority\tBT\tWT\tTAT");
for(i=0;i<n;i++){
printf("\n%d\t%d\t\t%d\t%d\t%d\t",pid[i],pr[i],bt[i],wt[i],tat[i]);
}
awt = (float)twt/n;
atat = (float)ttat/n;
printf("\n Avg waiting time : %f",awt);
printf("\n Avg turn around time = %f",atat);
}
