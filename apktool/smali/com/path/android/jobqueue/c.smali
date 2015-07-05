.class public Lcom/path/android/jobqueue/c;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Lcom/yelp/android/au/b;


# instance fields
.field private final a:J

.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Lcom/yelp/android/au/c;

.field private final e:Lcom/yelp/android/ar/a;

.field private final f:Lcom/path/android/jobqueue/g;

.field private final g:Lcom/path/android/jobqueue/g;

.field private final h:Lcom/path/android/jobqueue/a;

.field private final i:Lcom/yelp/android/as/a;

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

.field private final m:Ljava/util/concurrent/ScheduledExecutorService;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Runnable;

.field private final p:Lcom/yelp/android/as/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/aq/a;)V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->j:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->n:Ljava/lang/Object;

    .line 246
    new-instance v0, Lcom/path/android/jobqueue/d;

    invoke-direct {v0, p0}, Lcom/path/android/jobqueue/d;-><init>(Lcom/path/android/jobqueue/c;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->o:Ljava/lang/Runnable;

    .line 392
    new-instance v0, Lcom/path/android/jobqueue/e;

    invoke-direct {v0, p0}, Lcom/path/android/jobqueue/e;-><init>(Lcom/path/android/jobqueue/c;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->p:Lcom/yelp/android/as/b;

    .line 70
    invoke-virtual {p2}, Lcom/yelp/android/aq/a;->h()Lcom/yelp/android/at/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p2}, Lcom/yelp/android/aq/a;->h()Lcom/yelp/android/at/a;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/at/b;->a(Lcom/yelp/android/at/a;)V

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->c:Landroid/content/Context;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/path/android/jobqueue/c;->b:Z

    .line 75
    new-instance v0, Lcom/path/android/jobqueue/a;

    invoke-direct {v0}, Lcom/path/android/jobqueue/a;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->h:Lcom/path/android/jobqueue/a;

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/path/android/jobqueue/c;->a:J

    .line 77
    invoke-virtual {p2}, Lcom/yelp/android/aq/a;->b()Lcom/path/android/jobqueue/i;

    move-result-object v0

    iget-wide v2, p0, Lcom/path/android/jobqueue/c;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/aq/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/path/android/jobqueue/i;->a(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Lcom/path/android/jobqueue/g;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    .line 78
    invoke-virtual {p2}, Lcom/yelp/android/aq/a;->b()Lcom/path/android/jobqueue/i;

    move-result-object v0

    iget-wide v2, p0, Lcom/path/android/jobqueue/c;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/aq/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/path/android/jobqueue/i;->b(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Lcom/path/android/jobqueue/g;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    invoke-virtual {p2}, Lcom/yelp/android/aq/a;->e()Lcom/yelp/android/au/c;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->d:Lcom/yelp/android/au/c;

    .line 83
    invoke-virtual {p2}, Lcom/yelp/android/aq/a;->c()Lcom/yelp/android/ar/a;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->e:Lcom/yelp/android/ar/a;

    .line 84
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->d:Lcom/yelp/android/au/c;

    instance-of v0, v0, Lcom/yelp/android/au/a;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->d:Lcom/yelp/android/au/c;

    check-cast v0, Lcom/yelp/android/au/a;

    invoke-interface {v0, p0}, Lcom/yelp/android/au/a;->a(Lcom/yelp/android/au/b;)V

    .line 88
    :cond_1
    new-instance v0, Lcom/yelp/android/as/a;

    iget-object v1, p0, Lcom/path/android/jobqueue/c;->p:Lcom/yelp/android/as/b;

    invoke-direct {v0, p2, v1}, Lcom/yelp/android/as/a;-><init>(Lcom/yelp/android/aq/a;Lcom/yelp/android/as/b;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->i:Lcom/yelp/android/as/a;

    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/c;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    invoke-virtual {p0}, Lcom/path/android/jobqueue/c;->a()V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/path/android/jobqueue/c;Z)I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/c;->b(Z)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/path/android/jobqueue/c;Ljava/lang/Boolean;)J
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/c;->a(Ljava/lang/Boolean;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/Boolean;)J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 199
    if-nez p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->d:Lcom/yelp/android/au/c;

    instance-of v0, v0, Lcom/yelp/android/au/a;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/path/android/jobqueue/c;->c()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    monitor-enter v4

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/path/android/jobqueue/g;->a(Z)Ljava/lang/Long;

    move-result-object v1

    .line 210
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/path/android/jobqueue/c;->b()V

    move-wide v0, v2

    .line 236
    :goto_1
    return-wide v0

    .line 203
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 216
    :cond_2
    iget-object v4, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    monitor-enter v4

    .line 217
    :try_start_2
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v5}, Lcom/path/android/jobqueue/g;->a(Z)Ljava/lang/Long;

    move-result-object v0

    .line 218
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 219
    if-eqz v0, :cond_5

    .line 220
    if-nez v1, :cond_4

    .line 226
    :cond_3
    :goto_2
    if-eqz v0, :cond_7

    .line 228
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    .line 229
    invoke-direct {p0}, Lcom/path/android/jobqueue/c;->b()V

    move-wide v0, v2

    .line 230
    goto :goto_1

    .line 218
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 222
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    :cond_5
    move-object v0, v1

    goto :goto_2

    .line 232
    :cond_6
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

    .line 233
    invoke-direct {p0, v0, v1}, Lcom/path/android/jobqueue/c;->a(J)V

    goto :goto_1

    .line 236
    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->m:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/path/android/jobqueue/c;->o:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 255
    return-void
.end method

.method private a(Lcom/path/android/jobqueue/b;)V
    .locals 4

    .prologue
    .line 299
    const-string/jumbo v0, "re-adding job %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->h()Lcom/path/android/jobqueue/BaseJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/BaseJob;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/g;->b(Lcom/path/android/jobqueue/b;)J

    .line 303
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :goto_0
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->h:Lcom/path/android/jobqueue/a;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/a;->b(Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void

    .line 303
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    monitor-enter v1

    .line 306
    :try_start_2
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/g;->b(Lcom/path/android/jobqueue/b;)J

    .line 307
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic a(Lcom/path/android/jobqueue/c;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/path/android/jobqueue/c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/path/android/jobqueue/c;Lcom/path/android/jobqueue/b;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/b;)V

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
    .line 167
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method private b(Z)I
    .locals 4

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    iget-object v3, p0, Lcom/path/android/jobqueue/c;->h:Lcom/path/android/jobqueue/a;

    invoke-virtual {v3}, Lcom/path/android/jobqueue/a;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/path/android/jobqueue/g;->a(ZLjava/util/Collection;)I

    move-result v2

    add-int/2addr v0, v2

    .line 133
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    monitor-enter v1

    .line 135
    :try_start_1
    iget-object v2, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    iget-object v3, p0, Lcom/path/android/jobqueue/c;->h:Lcom/path/android/jobqueue/a;

    invoke-virtual {v3}, Lcom/path/android/jobqueue/a;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/path/android/jobqueue/g;->a(ZLjava/util/Collection;)I

    move-result v2

    add-int/2addr v0, v2

    .line 136
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    return v0

    .line 133
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 136
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
    .line 240
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->i:Lcom/yelp/android/as/a;

    invoke-virtual {v0}, Lcom/yelp/android/as/a;->a()V

    .line 244
    return-void

    .line 242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lcom/path/android/jobqueue/b;)V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->h()Lcom/path/android/jobqueue/BaseJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/BaseJob;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/g;->c(Lcom/path/android/jobqueue/b;)V

    .line 360
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :goto_0
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->h:Lcom/path/android/jobqueue/a;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/a;->b(Ljava/lang/String;)V

    .line 369
    :cond_0
    return-void

    .line 360
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    monitor-enter v1

    .line 363
    :try_start_2
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/g;->c(Lcom/path/android/jobqueue/b;)V

    .line 364
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic b(Lcom/path/android/jobqueue/c;Lcom/path/android/jobqueue/b;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/c;->b(Lcom/path/android/jobqueue/b;)V

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
    .line 172
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 173
    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string/jumbo v1, "could not wait for onAdded lock"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/at/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/path/android/jobqueue/c;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/path/android/jobqueue/c;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/path/android/jobqueue/c;)Lcom/path/android/jobqueue/b;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/path/android/jobqueue/c;->d()Lcom/path/android/jobqueue/b;

    move-result-object v0

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
    .line 185
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 189
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->d:Lcom/yelp/android/au/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/path/android/jobqueue/c;->d:Lcom/yelp/android/au/c;

    iget-object v1, p0, Lcom/path/android/jobqueue/c;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yelp/android/au/c;->a(Landroid/content/Context;)Z

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

.method private d()Lcom/path/android/jobqueue/b;
    .locals 7

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/path/android/jobqueue/c;->c()Z

    move-result v2

    .line 264
    const/4 v0, 0x0

    .line 265
    iget-object v3, p0, Lcom/path/android/jobqueue/c;->n:Ljava/lang/Object;

    monitor-enter v3

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->h:Lcom/path/android/jobqueue/a;

    invoke-virtual {v1}, Lcom/path/android/jobqueue/a;->a()Ljava/util/Collection;

    move-result-object v4

    .line 267
    iget-object v5, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    :try_start_1
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    invoke-interface {v1, v2, v4}, Lcom/path/android/jobqueue/g;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/b;

    move-result-object v1

    .line 269
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    if-nez v1, :cond_4

    .line 272
    :try_start_2
    iget-object v5, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 273
    :try_start_3
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, v2, v4}, Lcom/path/android/jobqueue/g;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/b;

    move-result-object v1

    .line 274
    const/4 v0, 0x1

    .line 275
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v6, v0

    move-object v0, v1

    move v1, v6

    .line 277
    :goto_0
    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 295
    :goto_1
    return-object v0

    .line 269
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 286
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 275
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    .line 280
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/path/android/jobqueue/c;->e:Lcom/yelp/android/ar/a;

    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/path/android/jobqueue/c;->e:Lcom/yelp/android/ar/a;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->h()Lcom/path/android/jobqueue/BaseJob;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/yelp/android/ar/a;->a(Lcom/path/android/jobqueue/BaseJob;)V

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/path/android/jobqueue/c;->h:Lcom/path/android/jobqueue/a;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/path/android/jobqueue/a;->a(Ljava/lang/String;)V

    .line 286
    :cond_2
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 289
    if-eqz v1, :cond_3

    .line 290
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/path/android/jobqueue/c;->b(Ljava/util/concurrent/ConcurrentHashMap;J)V

    goto :goto_1

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/path/android/jobqueue/c;->b(Ljava/util/concurrent/ConcurrentHashMap;J)V

    goto :goto_1

    :cond_4
    move v6, v0

    move-object v0, v1

    move v1, v6

    goto :goto_0
.end method

.method static synthetic d(Lcom/path/android/jobqueue/c;)Lcom/yelp/android/au/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->d:Lcom/yelp/android/au/c;

    return-object v0
.end method

.method static synthetic e(Lcom/path/android/jobqueue/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/path/android/jobqueue/c;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/path/android/jobqueue/c;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(IJLcom/path/android/jobqueue/BaseJob;)J
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 495
    new-instance v1, Lcom/path/android/jobqueue/b;

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, p2

    add-long/2addr v4, v2

    :goto_0
    move v2, p1

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/path/android/jobqueue/b;-><init>(ILcom/path/android/jobqueue/BaseJob;JJ)V

    .line 497
    invoke-virtual {p4}, Lcom/path/android/jobqueue/BaseJob;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    iget-object v4, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    monitor-enter v4

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, v1}, Lcom/path/android/jobqueue/g;->a(Lcom/path/android/jobqueue/b;)J

    move-result-wide v2

    .line 500
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/path/android/jobqueue/c;->a(Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 501
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    :goto_1
    invoke-static {}, Lcom/yelp/android/at/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const-string/jumbo v0, "added job id: %d class: %s priority: %d delay: %d group : %s persistent: %s requires network: %s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p4}, Lcom/path/android/jobqueue/BaseJob;->getRunGroupId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {p4}, Lcom/path/android/jobqueue/BaseJob;->isPersistent()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {p4}, Lcom/path/android/jobqueue/BaseJob;->requiresNetwork()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->e:Lcom/yelp/android/ar/a;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->e:Lcom/yelp/android/ar/a;

    invoke-interface {v0, p4}, Lcom/yelp/android/ar/a;->a(Lcom/path/android/jobqueue/BaseJob;)V

    .line 517
    :cond_1
    invoke-virtual {v1}, Lcom/path/android/jobqueue/b;->h()Lcom/path/android/jobqueue/BaseJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/BaseJob;->onAdded()V

    .line 518
    invoke-virtual {p4}, Lcom/path/android/jobqueue/BaseJob;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 519
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->f:Lcom/path/android/jobqueue/g;

    monitor-enter v1

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/path/android/jobqueue/c;->c(Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 521
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 527
    :goto_2
    invoke-direct {p0}, Lcom/path/android/jobqueue/c;->b()V

    .line 528
    return-wide v2

    :cond_2
    move-wide v4, v6

    .line 495
    goto/16 :goto_0

    .line 501
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 503
    :cond_3
    iget-object v4, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    monitor-enter v4

    .line 504
    :try_start_3
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, v1}, Lcom/path/android/jobqueue/g;->a(Lcom/path/android/jobqueue/b;)J

    move-result-wide v2

    .line 505
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/path/android/jobqueue/c;->a(Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 506
    monitor-exit v4

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 521
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 523
    :cond_4
    iget-object v1, p0, Lcom/path/android/jobqueue/c;->g:Lcom/path/android/jobqueue/g;

    monitor-enter v1

    .line 524
    :try_start_5
    iget-object v0, p0, Lcom/path/android/jobqueue/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/path/android/jobqueue/c;->c(Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 525
    monitor-exit v1

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public a(Lcom/path/android/jobqueue/Job;)J
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/path/android/jobqueue/Job;->getDelayInMs()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/path/android/jobqueue/c;->a(IJLcom/path/android/jobqueue/BaseJob;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/path/android/jobqueue/c;->b:Z

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/path/android/jobqueue/c;->b:Z

    .line 109
    invoke-direct {p0}, Lcom/path/android/jobqueue/c;->b()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 389
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/c;->a(Ljava/lang/Boolean;)J

    .line 390
    return-void
.end method
