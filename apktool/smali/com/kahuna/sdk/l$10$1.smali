.class Lcom/kahuna/sdk/l$10$1;
.super Ljava/util/TimerTask;
.source "KahunaCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/l$10;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l$10;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/kahuna/sdk/l$10$1;->a:Lcom/kahuna/sdk/l$10;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 495
    invoke-static {}, Lcom/kahuna/sdk/l;->v()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$10$1;->a:Lcom/kahuna/sdk/l$10;

    iget-object v0, v0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->k(Lcom/kahuna/sdk/l;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/kahuna/sdk/l$10$1;->a:Lcom/kahuna/sdk/l$10;

    iget-object v0, v0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->k(Lcom/kahuna/sdk/l;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 499
    iget-object v0, p0, Lcom/kahuna/sdk/l$10$1;->a:Lcom/kahuna/sdk/l$10;

    iget-object v0, v0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Ljava/util/Timer;)Ljava/util/Timer;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$10$1;->a:Lcom/kahuna/sdk/l$10;

    iget-object v0, v0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->g(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 503
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    :goto_0
    return-void

    .line 506
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kahuna/sdk/l$10$1;->a:Lcom/kahuna/sdk/l$10;

    iget-object v0, v0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    const-string/jumbo v2, "k_app_bg"

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 508
    :catch_0
    move-exception v0

    .line 510
    :try_start_4
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_2

    .line 511
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Handled exception in KahunaCommon.stop() timer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
