.class public Lcom/yelp/android/t/b;
.super Ljava/lang/Object;
.source "FifoPriorityThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/t/b;->a:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/t/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fifo-pool-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/t/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/yelp/android/t/c;-><init>(Lcom/yelp/android/t/b;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 55
    iget v1, p0, Lcom/yelp/android/t/b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yelp/android/t/b;->a:I

    .line 56
    return-object v0
.end method
