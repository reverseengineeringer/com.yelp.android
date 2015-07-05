.class final Lcom/kahuna/sdk/q;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 484
    invoke-static {}, Lcom/kahuna/sdk/h;->q()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 485
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    .line 486
    invoke-static {v0}, Lcom/kahuna/sdk/h;->h(Lcom/kahuna/sdk/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 488
    sget-boolean v3, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v3, :cond_0

    .line 489
    const-string/jumbo v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Called stop, remaining activities in foreground is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    if-nez v2, :cond_2

    .line 493
    invoke-static {v0}, Lcom/kahuna/sdk/h;->l(Lcom/kahuna/sdk/h;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 494
    invoke-static {v0}, Lcom/kahuna/sdk/h;->l(Lcom/kahuna/sdk/h;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 495
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Ljava/util/Timer;)Ljava/util/Timer;

    .line 498
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Ljava/util/Timer;)Ljava/util/Timer;

    .line 499
    invoke-static {v0}, Lcom/kahuna/sdk/h;->l(Lcom/kahuna/sdk/h;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/kahuna/sdk/r;

    invoke-direct {v3, p0}, Lcom/kahuna/sdk/r;-><init>(Lcom/kahuna/sdk/q;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 536
    invoke-static {v0}, Lcom/kahuna/sdk/h;->d(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 537
    :try_start_1
    invoke-static {v0}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kahuna/sdk/ag;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 538
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    :try_start_2
    invoke-static {v0}, Lcom/kahuna/sdk/h;->f(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 541
    :try_start_3
    invoke-static {v0}, Lcom/kahuna/sdk/h;->g(Lcom/kahuna/sdk/h;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kahuna/sdk/ag;->a(Ljava/util/Set;Landroid/content/Context;)V

    .line 542
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 544
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 545
    return-void

    .line 538
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 544
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 542
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method
