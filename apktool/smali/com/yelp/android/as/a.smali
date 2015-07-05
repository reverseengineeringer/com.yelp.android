.class public Lcom/yelp/android/as/a;
.super Ljava/lang/Object;
.source "JobConsumerExecutor.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Ljava/lang/ThreadGroup;

.field private final e:Lcom/yelp/android/as/b;

.field private final f:I

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/path/android/jobqueue/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/aq/a;Lcom/yelp/android/as/b;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/as/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    invoke-virtual {p1}, Lcom/yelp/android/aq/a;->i()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/as/a;->c:I

    .line 31
    invoke-virtual {p1}, Lcom/yelp/android/aq/a;->f()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/as/a;->a:I

    .line 32
    invoke-virtual {p1}, Lcom/yelp/android/aq/a;->g()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/as/a;->b:I

    .line 33
    invoke-virtual {p1}, Lcom/yelp/android/aq/a;->d()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/as/a;->f:I

    .line 34
    iput-object p2, p0, Lcom/yelp/android/as/a;->e:Lcom/yelp/android/as/b;

    .line 35
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string/jumbo v1, "JobConsumers"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/as/a;->d:Ljava/lang/ThreadGroup;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/as/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/as/a;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/yelp/android/as/a;->f:I

    return v0
.end method

.method private a(JZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string/jumbo v0, "t"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "f"

    goto :goto_0
.end method

.method private a(Lcom/path/android/jobqueue/b;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/as/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/yelp/android/as/a;->c(Lcom/path/android/jobqueue/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/as/a;Lcom/path/android/jobqueue/b;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/yelp/android/as/a;->a(Lcom/path/android/jobqueue/b;)V

    return-void
.end method

.method private a(Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    iget-object v3, p0, Lcom/yelp/android/as/a;->d:Ljava/lang/ThreadGroup;

    monitor-enter v3

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/as/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    if-eqz p1, :cond_3

    move v2, v1

    :goto_0
    sub-int v2, v4, v2

    .line 96
    iget v4, p0, Lcom/yelp/android/as/a;->b:I

    if-lt v2, v4, :cond_0

    iget v4, p0, Lcom/yelp/android/as/a;->c:I

    mul-int/2addr v4, v2

    iget-object v5, p0, Lcom/yelp/android/as/a;->e:Lcom/yelp/android/as/b;

    invoke-interface {v5}, Lcom/yelp/android/as/b;->b()I

    move-result v5

    iget-object v6, p0, Lcom/yelp/android/as/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    :cond_0
    move v0, v1

    .line 99
    :cond_1
    invoke-static {}, Lcom/yelp/android/at/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const-string/jumbo v1, "%s: load factor check. %s = (%d < %d)|| (%d * %d < %d + %d). consumer thread: %s"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/yelp/android/as/a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x5

    iget v5, p0, Lcom/yelp/android/as/a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget-object v5, p0, Lcom/yelp/android/as/a;->e:Lcom/yelp/android/as/b;

    invoke-interface {v5}, Lcom/yelp/android/as/b;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    iget-object v5, p0, Lcom/yelp/android/as/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_2
    monitor-exit v3

    return v0

    :cond_3
    move v2, v0

    .line 95
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(ZZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/yelp/android/as/a;->e:Lcom/yelp/android/as/b;

    invoke-interface {v1}, Lcom/yelp/android/as/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/yelp/android/as/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/as/a;->d:Ljava/lang/ThreadGroup;

    monitor-enter v1

    .line 63
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yelp/android/as/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/yelp/android/as/a;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    if-eqz p2, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/yelp/android/as/a;->c()V

    .line 67
    :cond_2
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/yelp/android/as/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method private b(Lcom/path/android/jobqueue/b;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/as/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/yelp/android/as/a;->c(Lcom/path/android/jobqueue/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/as/a;Lcom/path/android/jobqueue/b;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/yelp/android/as/a;->b(Lcom/path/android/jobqueue/b;)V

    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/as/a;->a(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/as/a;)Z
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/as/a;->b()Z

    move-result v0

    return v0
.end method

.method private c(Lcom/path/android/jobqueue/b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->h()Lcom/path/android/jobqueue/BaseJob;

    move-result-object v2

    invoke-virtual {v2}, Lcom/path/android/jobqueue/BaseJob;->isPersistent()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/as/a;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 77
    const-string/jumbo v0, "adding another consumer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/yelp/android/as/a;->d:Ljava/lang/ThreadGroup;

    monitor-enter v1

    .line 79
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/yelp/android/as/a;->d:Ljava/lang/ThreadGroup;

    new-instance v3, Lcom/yelp/android/as/c;

    iget-object v4, p0, Lcom/yelp/android/as/a;->e:Lcom/yelp/android/as/b;

    invoke-direct {v3, v4, p0}, Lcom/yelp/android/as/c;-><init>(Lcom/yelp/android/as/b;Lcom/yelp/android/as/a;)V

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 80
    iget-object v2, p0, Lcom/yelp/android/as/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/yelp/android/as/a;->d:Ljava/lang/ThreadGroup;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/as/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    iget v2, p0, Lcom/yelp/android/as/a;->a:I

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/as/a;->a(ZZ)Z

    .line 44
    return-void
.end method
