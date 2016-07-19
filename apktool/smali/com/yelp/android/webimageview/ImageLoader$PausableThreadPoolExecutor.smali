.class public Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/webimageview/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PausableThreadPoolExecutor"
.end annotation


# instance fields
.field private isPaused:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mPauseCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<+",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 504
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 505
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    .line 506
    return-void
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 529
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 530
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 532
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 534
    :try_start_1
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 537
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 543
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 512
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 516
    return-void

    .line 514
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 521
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->isPaused:Z

    .line 522
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 526
    return-void

    .line 524
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
