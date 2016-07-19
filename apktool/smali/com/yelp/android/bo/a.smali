.class public Lcom/yelp/android/bo/a;
.super Ljava/lang/Object;
.source "JobConsumerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/bo/a$b;,
        Lcom/yelp/android/bo/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Ljava/lang/ThreadGroup;

.field private final e:Lcom/yelp/android/bo/a$a;

.field private final f:I

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/path/android/jobqueue/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/bm/a;Lcom/yelp/android/bo/a$a;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/bo/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    invoke-virtual {p1}, Lcom/yelp/android/bm/a;->i()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/bo/a;->c:I

    .line 37
    invoke-virtual {p1}, Lcom/yelp/android/bm/a;->f()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/bo/a;->a:I

    .line 38
    invoke-virtual {p1}, Lcom/yelp/android/bm/a;->g()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/bo/a;->b:I

    .line 39
    invoke-virtual {p1}, Lcom/yelp/android/bm/a;->d()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/bo/a;->f:I

    .line 40
    iput-object p2, p0, Lcom/yelp/android/bo/a;->e:Lcom/yelp/android/bo/a$a;

    .line 41
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string/jumbo v1, "JobConsumers"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/bo/a;->d:Ljava/lang/ThreadGroup;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/bo/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/bo/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/yelp/android/bo/a;->f:I

    return v0
.end method

.method private a(JZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
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

.method private a(Lcom/path/android/jobqueue/a;)V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/yelp/android/bo/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/bo/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/yelp/android/bo/a;->c(Lcom/path/android/jobqueue/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/yelp/android/bo/a;Lcom/path/android/jobqueue/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/bo/a;->a(Lcom/path/android/jobqueue/a;)V

    return-void
.end method

.method private a(Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    iget-object v3, p0, Lcom/yelp/android/bo/a;->d:Ljava/lang/ThreadGroup;

    monitor-enter v3

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/bo/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    if-eqz p1, :cond_3

    move v2, v1

    :goto_0
    sub-int v2, v4, v2

    .line 102
    iget v4, p0, Lcom/yelp/android/bo/a;->b:I

    if-lt v2, v4, :cond_0

    iget v4, p0, Lcom/yelp/android/bo/a;->c:I

    mul-int/2addr v4, v2

    iget-object v5, p0, Lcom/yelp/android/bo/a;->e:Lcom/yelp/android/bo/a$a;

    invoke-interface {v5}, Lcom/yelp/android/bo/a$a;->b()I

    move-result v5

    iget-object v6, p0, Lcom/yelp/android/bo/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    :cond_0
    move v0, v1

    .line 105
    :cond_1
    invoke-static {}, Lcom/yelp/android/bp/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
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

    iget v6, p0, Lcom/yelp/android/bo/a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x5

    iget v5, p0, Lcom/yelp/android/bo/a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget-object v5, p0, Lcom/yelp/android/bo/a;->e:Lcom/yelp/android/bo/a$a;

    invoke-interface {v5}, Lcom/yelp/android/bo/a$a;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    iget-object v5, p0, Lcom/yelp/android/bo/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_2
    monitor-exit v3

    return v0

    :cond_3
    move v2, v0

    .line 101
    goto :goto_0

    .line 111
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

    .line 61
    iget-object v1, p0, Lcom/yelp/android/bo/a;->e:Lcom/yelp/android/bo/a$a;

    invoke-interface {v1}, Lcom/yelp/android/bo/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/yelp/android/bo/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/bo/a;->d:Ljava/lang/ThreadGroup;

    monitor-enter v1

    .line 69
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yelp/android/bo/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/yelp/android/bo/a;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    if-eqz p2, :cond_2

    .line 71
    invoke-direct {p0}, Lcom/yelp/android/bo/a;->c()V

    .line 73
    :cond_2
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 75
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

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/yelp/android/bo/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method private b(Lcom/path/android/jobqueue/a;)V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/yelp/android/bo/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/bo/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/yelp/android/bo/a;->c(Lcom/path/android/jobqueue/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/yelp/android/bo/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/yelp/android/bo/a;Lcom/path/android/jobqueue/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/bo/a;->b(Lcom/path/android/jobqueue/a;)V

    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/bo/a;->a(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/bo/a;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/bo/a;->b()Z

    move-result v0

    return v0
.end method

.method private c(Lcom/path/android/jobqueue/a;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->h()Lcom/path/android/jobqueue/Job;

    move-result-object v2

    invoke-virtual {v2}, Lcom/path/android/jobqueue/Job;->isPersistent()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/bo/a;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 83
    const-string/jumbo v0, "adding another consumer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/yelp/android/bo/a;->d:Ljava/lang/ThreadGroup;

    monitor-enter v1

    .line 85
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/yelp/android/bo/a;->d:Ljava/lang/ThreadGroup;

    new-instance v3, Lcom/yelp/android/bo/a$b;

    iget-object v4, p0, Lcom/yelp/android/bo/a;->e:Lcom/yelp/android/bo/a$a;

    invoke-direct {v3, v4, p0}, Lcom/yelp/android/bo/a$b;-><init>(Lcom/yelp/android/bo/a$a;Lcom/yelp/android/bo/a;)V

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 86
    iget-object v2, p0, Lcom/yelp/android/bo/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
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
    .line 92
    iget-object v1, p0, Lcom/yelp/android/bo/a;->d:Ljava/lang/ThreadGroup;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/bo/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    iget v2, p0, Lcom/yelp/android/bo/a;->a:I

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
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
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/bo/a;->a(ZZ)Z

    .line 50
    return-void
.end method
