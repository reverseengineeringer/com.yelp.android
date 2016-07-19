.class public final Ljp/line/android/sdk/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/line/android/sdk/c$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/concurrent/CountDownLatch;

.field static b:Ljp/line/android/sdk/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljp/line/android/sdk/a;
    .locals 4

    sget-object v0, Ljp/line/android/sdk/c;->b:Ljp/line/android/sdk/a;

    if-nez v0, :cond_2

    sget-object v0, Ljp/line/android/sdk/c;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    sget-object v0, Ljp/line/android/sdk/c;->a:Ljava/util/concurrent/CountDownLatch;

    :goto_0
    const-wide/16 v2, 0x7d0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Ljp/line/android/sdk/c;->b:Ljp/line/android/sdk/a;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "LineSdkConfig was not initialized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-class v1, Ljp/line/android/sdk/c;

    monitor-enter v1

    :try_start_1
    sget-object v0, Ljp/line/android/sdk/c;->a:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "LineSdkConfig was not initialized."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Ljp/line/android/sdk/c;->a:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    sget-object v0, Ljp/line/android/sdk/c;->b:Ljp/line/android/sdk/a;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, v0, v1, v1}, Ljp/line/android/sdk/c;->a(Landroid/content/Context;ILjp/line/android/sdk/Phase;Ljp/line/android/sdk/b;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;ILjp/line/android/sdk/Phase;Ljp/line/android/sdk/b;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Ljp/line/android/sdk/c;->b:Ljp/line/android/sdk/a;

    if-nez v2, :cond_1

    sget-object v2, Ljp/line/android/sdk/c;->a:Ljava/util/concurrent/CountDownLatch;

    if-nez v2, :cond_1

    const-class v2, Ljp/line/android/sdk/c;

    monitor-enter v2

    :try_start_0
    sget-object v3, Ljp/line/android/sdk/c;->b:Ljp/line/android/sdk/a;

    if-nez v3, :cond_0

    sget-object v3, Ljp/line/android/sdk/c;->a:Ljava/util/concurrent/CountDownLatch;

    if-nez v3, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Ljp/line/android/sdk/c;->a:Ljava/util/concurrent/CountDownLatch;

    move v0, v1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ljp/line/android/sdk/d;

    invoke-direct {v1, p3, p0, p1, p2}, Ljp/line/android/sdk/d;-><init>(Ljp/line/android/sdk/b;Landroid/content/Context;ILjp/line/android/sdk/Phase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
