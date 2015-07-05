.class final Lcom/yelp/android/webimageview/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    .prologue
    .line 118
    iput-object p1, p0, Lcom/yelp/android/webimageview/ImageLoader$1;->val$exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$1;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/yelp/android/webimageview/ImageLoader$1$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/webimageview/ImageLoader$1$1;-><init>(Lcom/yelp/android/webimageview/ImageLoader$1;Ljava/lang/Runnable;)V

    .line 129
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImageLoader-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/webimageview/ImageLoader$1;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$1;->val$exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoader$1;->val$exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 135
    :cond_0
    return-object v1
.end method
