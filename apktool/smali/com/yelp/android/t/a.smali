.class public Lcom/yelp/android/t/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "FifoPriorityThreadPoolExecutor.java"


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 8

    .prologue
    .line 27
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/yelp/android/t/b;

    invoke-direct {v7}, Lcom/yelp/android/t/b;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/yelp/android/t/a;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 28
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9

    .prologue
    .line 32
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/t/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    return-void
.end method


# virtual methods
.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/t/d;

    iget-object v1, p0, Lcom/yelp/android/t/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/t/d;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V

    return-object v0
.end method
