.class Lcom/kahuna/sdk/r;
.super Ljava/util/TimerTask;
.source "KahunaAnalytics.java"


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/q;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/q;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/kahuna/sdk/r;->a:Lcom/kahuna/sdk/q;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 503
    invoke-static {}, Lcom/kahuna/sdk/h;->q()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 505
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    .line 506
    invoke-static {v0}, Lcom/kahuna/sdk/h;->l(Lcom/kahuna/sdk/h;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 507
    invoke-static {v0}, Lcom/kahuna/sdk/h;->l(Lcom/kahuna/sdk/h;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 508
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Ljava/util/Timer;)Ljava/util/Timer;

    .line 511
    :cond_0
    invoke-static {v0}, Lcom/kahuna/sdk/h;->h(Lcom/kahuna/sdk/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 512
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    :goto_0
    return-void

    .line 515
    :cond_1
    :try_start_2
    invoke-static {v0}, Lcom/kahuna/sdk/h;->p(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    :try_start_3
    invoke-static {v0}, Lcom/kahuna/sdk/h;->q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 517
    invoke-static {v0}, Lcom/kahuna/sdk/h;->q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kahuna/sdk/u;->cancel()V

    .line 518
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/u;)Lcom/kahuna/sdk/u;

    .line 520
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 523
    :try_start_4
    const-string/jumbo v2, "k_app_bg"

    invoke-static {v0, v2}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 530
    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 520
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 525
    :catch_0
    move-exception v0

    .line 527
    :try_start_8
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_3

    .line 528
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Handled exception in KahunaAnalytics.stop() timer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method
