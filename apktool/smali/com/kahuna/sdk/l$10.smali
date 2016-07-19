.class Lcom/kahuna/sdk/l$10;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/l;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 477
    invoke-static {}, Lcom/kahuna/sdk/l;->v()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->g(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 480
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_0

    .line 481
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Called stop, remaining activities in foreground is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    if-nez v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->k(Lcom/kahuna/sdk/l;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->k(Lcom/kahuna/sdk/l;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 487
    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Ljava/util/Timer;)Ljava/util/Timer;

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Ljava/util/Timer;)Ljava/util/Timer;

    .line 491
    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->k(Lcom/kahuna/sdk/l;)Ljava/util/Timer;

    move-result-object v0

    new-instance v2, Lcom/kahuna/sdk/l$10$1;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/l$10$1;-><init>(Lcom/kahuna/sdk/l$10;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 519
    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->d(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v3}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kahuna/sdk/s;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 521
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :try_start_2
    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->f(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kahuna/sdk/l$10;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/kahuna/sdk/s;->b(JLandroid/content/Context;)V

    .line 524
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 525
    return-void

    .line 521
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 524
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
