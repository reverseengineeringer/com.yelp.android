.class Lcom/yelp/android/t/c;
.super Ljava/lang/Thread;
.source "FifoPriorityThreadPoolExecutor.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/t/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/t/b;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/t/c;->a:Lcom/yelp/android/t/b;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 52
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 53
    return-void
.end method
