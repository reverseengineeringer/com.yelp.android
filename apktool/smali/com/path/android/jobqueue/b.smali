.class public Lcom/path/android/jobqueue/b;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Lcom/yelp/android/bq/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/path/android/jobqueue/b$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private volatile b:Z

.field private final c:Landroid/content/Context;

.field private final d:Lcom/yelp/android/bq/b;

.field private final e:Lcom/yelp/android/bn/a;

.field private final f:Lcom/path/android/jobqueue/c;

.field private final g:Lcom/path/android/jobqueue/c;

.field private final h:Lcom/path/android/jobqueue/g;

.field private final i:Lcom/yelp/android/bo/a;

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ScheduledExecutorService;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private final p:Ljava/lang/Runnable;

.field private final q:Lcom/yelp/android/bo/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/bm/a;)V
    .locals 4

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->j:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->n:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->o:Ljava/lang/Object;

    .line 495
    new-instance v0, Lcom/path/android/jobqueue/b$1;

    invoke-direct {v0, p0}, Lcom/path/android/jobqueue/b$1;-><init>(Lcom/path/android/jobqueue/b;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->p:Ljava/lang/Runnable;

    .line 661
    new-instance v0, Lcom/path/android/jobqueue/b$2;

    invoke-direct {v0, p0}, Lcom/path/android/jobqueue/b$2;-><init>(Lcom/path/android/jobqueue/b;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->q:Lcom/yelp/android/bo/a$a;

    .line 81
    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->h()Lcom/yelp/android/bp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->h()Lcom/yelp/android/bp/a;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/bp/b;->a(Lcom/yelp/android/bp/a;)V

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->c:Landroid/content/Context;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/path/android/jobqueue/b;->b:Z

    .line 86
    new-instance v0, Lcom/path/android/jobqueue/g;

    invoke-direct {v0}, Lcom/path/android/jobqueue/g;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    .line 87
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/path/android/jobqueue/b;->a:J

    .line 88
    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->b()Lcom/path/android/jobqueue/e;

    move-result-object v0

    iget-wide v2, p0, Lcom/path/android/jobqueue/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->j()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/path/android/jobqueue/e;->a(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Z)Lcom/path/android/jobqueue/c;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    .line 90
    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->b()Lcom/path/android/jobqueue/e;

    move-result-object v0

    iget-wide v2, p0, Lcom/path/android/jobqueue/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->j()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/path/android/jobqueue/e;->b(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Z)Lcom/path/android/jobqueue/c;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->e()Lcom/yelp/android/bq/b;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->d:Lcom/yelp/android/bq/b;

    .line 96
    invoke-virtual {p2}, Lcom/yelp/android/bm/a;->c()Lcom/yelp/android/bn/a;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->e:Lcom/yelp/android/bn/a;

    .line 97
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->d:Lcom/yelp/android/bq/b;

    instance-of v0, v0, Lcom/yelp/android/bq/a;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->d:Lcom/yelp/android/bq/b;

    check-cast v0, Lcom/yelp/android/bq/a;

    invoke-interface {v0, p0}, Lcom/yelp/android/bq/a;->a(Lcom/yelp/android/bq/a$a;)V

    .line 101
    :cond_1
    new-instance v0, Lcom/yelp/android/bo/a;

    iget-object v1, p0, Lcom/path/android/jobqueue/b;->q:Lcom/yelp/android/bo/a$a;

    invoke-direct {v0, p2, v1}, Lcom/yelp/android/bo/a;-><init>(Lcom/yelp/android/bm/a;Lcom/yelp/android/bo/a$a;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->i:Lcom/yelp/android/bo/a;

    .line 102
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/b;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 103
    invoke-virtual {p0}, Lcom/path/android/jobqueue/b;->a()V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/path/android/jobqueue/b;Z)I
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/b;->b(Z)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/path/android/jobqueue/b;Ljava/lang/Boolean;)J
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/b;->a(Ljava/lang/Boolean;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/Boolean;)J
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 443
    if-nez p1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->d:Lcom/yelp/android/bq/b;

    instance-of v0, v0, Lcom/yelp/android/bq/a;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/path/android/jobqueue/b;->c()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/g;->b()Ljava/lang/Long;

    move-result-object v1

    .line 452
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/g;->a()Ljava/util/Collection;

    move-result-object v4

    .line 454
    iget-object v5, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    monitor-enter v5

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v0, v6, v4}, Lcom/path/android/jobqueue/c;->c(ZLjava/util/Collection;)Ljava/lang/Long;

    move-result-object v0

    .line 456
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    :cond_1
    move-object v1, v0

    .line 460
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_4

    .line 461
    invoke-direct {p0}, Lcom/path/android/jobqueue/b;->b()V

    move-wide v0, v2

    .line 485
    :goto_1
    return-wide v0

    .line 447
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 465
    :cond_4
    iget-object v5, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    monitor-enter v5

    .line 466
    :try_start_2
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v0, v6, v4}, Lcom/path/android/jobqueue/c;->c(ZLjava/util/Collection;)Ljava/lang/Long;

    move-result-object v0

    .line 467
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    if-eqz v0, :cond_7

    .line 469
    if-nez v1, :cond_6

    .line 475
    :cond_5
    :goto_2
    if-eqz v0, :cond_9

    .line 477
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_8

    .line 478
    invoke-direct {p0}, Lcom/path/android/jobqueue/b;->b()V

    move-wide v0, v2

    .line 479
    goto :goto_1

    .line 467
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 471
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    :cond_7
    move-object v0, v1

    goto :goto_2

    .line 481
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 482
    invoke-direct {p0, v0, v1}, Lcom/path/android/jobqueue/b;->a(J)V

    goto :goto_1

    .line 485
    :cond_9
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->m:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/path/android/jobqueue/b;->p:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 504
    return-void
.end method

.method private a(Lcom/path/android/jobqueue/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 554
    const-string/jumbo v0, "re-adding job %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 556
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->h()Lcom/path/android/jobqueue/Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/Job;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/c;->b(Lcom/path/android/jobqueue/a;)J

    .line 559
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :goto_0
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/g;->b(Ljava/lang/String;)V

    .line 571
    :cond_0
    return-void

    .line 559
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    monitor-enter v1

    .line 562
    :try_start_2
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/c;->b(Lcom/path/android/jobqueue/a;)J

    .line 563
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 566
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not re-adding cancelled job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/path/android/jobqueue/b;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/path/android/jobqueue/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/path/android/jobqueue/b;Lcom/path/android/jobqueue/a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/a;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    return-void
.end method

.method private b(Z)I
    .locals 4

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    iget-object v3, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    invoke-virtual {v3}, Lcom/path/android/jobqueue/g;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/path/android/jobqueue/c;->a(ZLjava/util/Collection;)I

    move-result v2

    add-int/2addr v0, v2

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    monitor-enter v1

    .line 148
    :try_start_1
    iget-object v2, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    iget-object v3, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    invoke-virtual {v3}, Lcom/path/android/jobqueue/g;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/path/android/jobqueue/c;->a(ZLjava/util/Collection;)I

    move-result v2

    add-int/2addr v0, v2

    .line 149
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    return v0

    .line 146
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 149
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 489
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 491
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->i:Lcom/yelp/android/bo/a;

    invoke-virtual {v0}, Lcom/yelp/android/bo/a;->a()V

    .line 493
    return-void

    .line 491
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lcom/path/android/jobqueue/a;)V
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->h()Lcom/path/android/jobqueue/Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/Job;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/c;->c(Lcom/path/android/jobqueue/a;)V

    .line 619
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :goto_0
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/g;->b(Ljava/lang/String;)V

    .line 628
    :cond_0
    return-void

    .line 619
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    monitor-enter v1

    .line 622
    :try_start_2
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/c;->c(Lcom/path/android/jobqueue/a;)V

    .line 623
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic b(Lcom/path/android/jobqueue/b;Lcom/path/android/jobqueue/a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/b;->b(Lcom/path/android/jobqueue/a;)V

    return-void
.end method

.method private b(Ljava/util/concurrent/ConcurrentHashMap;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 417
    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 421
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    const-string/jumbo v1, "could not wait for onAdded lock"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/bp/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/path/android/jobqueue/b;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/path/android/jobqueue/b;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/path/android/jobqueue/b;)Lcom/path/android/jobqueue/g;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    return-object v0
.end method

.method private c(Ljava/util/concurrent/ConcurrentHashMap;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 430
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 433
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->d:Lcom/yelp/android/bq/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/path/android/jobqueue/b;->d:Lcom/yelp/android/bq/b;

    iget-object v1, p0, Lcom/path/android/jobqueue/b;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yelp/android/bq/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/path/android/jobqueue/a;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 511
    invoke-direct {p0}, Lcom/path/android/jobqueue/b;->c()Z

    move-result v3

    .line 514
    const-string/jumbo v2, "looking for next job"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    iget-object v4, p0, Lcom/path/android/jobqueue/b;->o:Ljava/lang/Object;

    monitor-enter v4

    .line 516
    :try_start_0
    iget-object v2, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    invoke-virtual {v2}, Lcom/path/android/jobqueue/g;->a()Ljava/util/Collection;

    move-result-object v5

    .line 517
    invoke-static {}, Lcom/yelp/android/bp/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    const-string/jumbo v2, "running groups %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, ","

    invoke-static {v8, v5}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :cond_0
    iget-object v6, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 521
    :try_start_1
    iget-object v2, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    invoke-interface {v2, v3, v5}, Lcom/path/android/jobqueue/c;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v2

    .line 522
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :try_start_2
    const-string/jumbo v6, "non persistent result %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    if-nez v2, :cond_5

    .line 526
    iget-object v2, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 527
    :try_start_3
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    invoke-interface {v1, v3, v5}, Lcom/path/android/jobqueue/c;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v1

    .line 529
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 530
    :try_start_4
    const-string/jumbo v2, "persistent result %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 532
    :goto_0
    if-nez v0, :cond_1

    .line 533
    const/4 v0, 0x0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 550
    :goto_1
    return-object v0

    .line 522
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 541
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 529
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    .line 535
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/path/android/jobqueue/b;->e:Lcom/yelp/android/bn/a;

    if-eqz v2, :cond_2

    .line 536
    iget-object v2, p0, Lcom/path/android/jobqueue/b;->e:Lcom/yelp/android/bn/a;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->h()Lcom/path/android/jobqueue/Job;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/yelp/android/bn/a;->a(Lcom/path/android/jobqueue/Job;)V

    .line 538
    :cond_2
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 539
    iget-object v2, p0, Lcom/path/android/jobqueue/b;->h:Lcom/path/android/jobqueue/g;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/path/android/jobqueue/g;->a(Ljava/lang/String;)V

    .line 541
    :cond_3
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 544
    if-eqz v1, :cond_4

    .line 545
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/path/android/jobqueue/b;->b(Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 549
    :goto_2
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->h()Lcom/path/android/jobqueue/Job;

    move-result-object v1

    iget-object v2, p0, Lcom/path/android/jobqueue/b;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/path/android/jobqueue/Job;->setApplicationContext(Landroid/content/Context;)V

    goto :goto_1

    .line 547
    :cond_4
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/path/android/jobqueue/b;->b(Ljava/util/concurrent/ConcurrentHashMap;J)V

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic d(Lcom/path/android/jobqueue/b;)Lcom/path/android/jobqueue/a;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/path/android/jobqueue/b;->d()Lcom/path/android/jobqueue/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/path/android/jobqueue/b;)Lcom/yelp/android/bq/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->d:Lcom/yelp/android/bq/b;

    return-object v0
.end method

.method static synthetic f(Lcom/path/android/jobqueue/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/path/android/jobqueue/b;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/path/android/jobqueue/b;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/path/android/jobqueue/Job;)J
    .locals 12

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 160
    new-instance v1, Lcom/path/android/jobqueue/a;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->getPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->getDelayInMs()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->getDelayInMs()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    :goto_0
    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/path/android/jobqueue/a;-><init>(ILcom/path/android/jobqueue/Job;JJ)V

    .line 164
    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v4, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    monitor-enter v4

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, v1}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/a;)J

    move-result-wide v2

    .line 167
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/path/android/jobqueue/b;->a(Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 168
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :goto_1
    invoke-static {}, Lcom/yelp/android/bp/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "added job id: %d class: %s priority: %d delay: %d group : %s persistent: %s requires network: %s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->getPriority()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->getDelayInMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->getRunGroupId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->isPersistent()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->requiresNetwork()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->e:Lcom/yelp/android/bn/a;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->e:Lcom/yelp/android/bn/a;

    invoke-interface {v0, p1}, Lcom/yelp/android/bn/a;->a(Lcom/path/android/jobqueue/Job;)V

    .line 184
    :cond_1
    invoke-virtual {v1}, Lcom/path/android/jobqueue/a;->h()Lcom/path/android/jobqueue/Job;

    move-result-object v0

    iget-object v4, p0, Lcom/path/android/jobqueue/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/path/android/jobqueue/Job;->setApplicationContext(Landroid/content/Context;)V

    .line 185
    invoke-virtual {v1}, Lcom/path/android/jobqueue/a;->h()Lcom/path/android/jobqueue/Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/Job;->onAdded()V

    .line 186
    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->f:Lcom/path/android/jobqueue/c;

    monitor-enter v1

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/path/android/jobqueue/b;->c(Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 189
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 195
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/b;->a(Ljava/lang/Boolean;)J

    .line 196
    return-wide v2

    :cond_2
    move-wide v4, v6

    .line 160
    goto/16 :goto_0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    monitor-enter v4

    .line 171
    :try_start_3
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, v1}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/a;)J

    move-result-wide v2

    .line 172
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/path/android/jobqueue/b;->a(Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 173
    monitor-exit v4

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 189
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->g:Lcom/path/android/jobqueue/c;

    monitor-enter v1

    .line 192
    :try_start_5
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/path/android/jobqueue/b;->c(Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 193
    monitor-exit v1

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/path/android/jobqueue/b;->b:Z

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/path/android/jobqueue/b;->b:Z

    .line 122
    invoke-direct {p0}, Lcom/path/android/jobqueue/b;->b()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 658
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/b;->a(Ljava/lang/Boolean;)J

    .line 659
    return-void
.end method
