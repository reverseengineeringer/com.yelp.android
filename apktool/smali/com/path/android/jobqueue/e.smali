.class Lcom/path/android/jobqueue/e;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Lcom/yelp/android/as/b;


# instance fields
.field final synthetic a:Lcom/path/android/jobqueue/c;


# direct methods
.method constructor <init>(Lcom/path/android/jobqueue/c;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/concurrent/TimeUnit;)Lcom/path/android/jobqueue/b;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->c(Lcom/path/android/jobqueue/c;)Lcom/path/android/jobqueue/b;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_1

    .line 460
    :cond_0
    return-object v0

    .line 416
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 417
    int-to-long v6, p1

    invoke-virtual {p2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 418
    add-long/2addr v4, v6

    .line 420
    iget-object v1, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v1, v2}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/c;Ljava/lang/Boolean;)J

    move-result-wide v6

    .line 421
    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->b(Lcom/path/android/jobqueue/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->c(Lcom/path/android/jobqueue/c;)Lcom/path/android/jobqueue/b;

    move-result-object v0

    move-object v1, v0

    .line 424
    :goto_1
    if-nez v1, :cond_6

    .line 425
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v8, v4, v8

    .line 426
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    .line 429
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 430
    const-wide/16 v10, 0x1

    cmp-long v0, v8, v10

    if-gez v0, :cond_3

    move-object v0, v1

    .line 431
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 423
    goto :goto_1

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->d(Lcom/path/android/jobqueue/c;)Lcom/yelp/android/au/c;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/au/a;

    if-eqz v0, :cond_5

    .line 439
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->e(Lcom/path/android/jobqueue/c;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->e(Lcom/path/android/jobqueue/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :goto_2
    :try_start_1
    monitor-exit v3

    :cond_4
    :goto_3
    move-object v0, v1

    .line 458
    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    const-string/jumbo v8, "exception while waiting for a new job."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/yelp/android/at/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 449
    :cond_5
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->e(Lcom/path/android/jobqueue/c;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 451
    :try_start_2
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->e(Lcom/path/android/jobqueue/c;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 455
    :goto_4
    :try_start_3
    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 452
    :catch_1
    move-exception v0

    .line 453
    :try_start_4
    const-string/jumbo v8, "exception while waiting for a new job."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/yelp/android/at/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(Lcom/path/android/jobqueue/b;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0, p1}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/c;Lcom/path/android/jobqueue/b;)V

    .line 402
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->b(Lcom/path/android/jobqueue/c;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 467
    iget-object v1, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->d(Lcom/path/android/jobqueue/c;)Lcom/yelp/android/au/c;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/au/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->f(Lcom/path/android/jobqueue/c;)Z

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/c;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/path/android/jobqueue/b;)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/path/android/jobqueue/e;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0, p1}, Lcom/path/android/jobqueue/c;->b(Lcom/path/android/jobqueue/c;Lcom/path/android/jobqueue/b;)V

    .line 407
    return-void
.end method
