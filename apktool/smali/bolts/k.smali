.class public Lbolts/k;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbolts/j",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lbolts/g;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbolts/k;->a:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {}, Lbolts/g;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/k;->c:Ljava/util/concurrent/Executor;

    .line 43
    invoke-static {}, Lbolts/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/k;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/k;->d:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/k;->i:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static a(Ljava/lang/Exception;)Lbolts/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lbolts/k",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lbolts/k;->a()Lbolts/s;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Lbolts/s;->b(Ljava/lang/Exception;)V

    .line 139
    invoke-virtual {v0}, Lbolts/s;->a()Lbolts/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lbolts/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lbolts/k",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lbolts/k;->a()Lbolts/s;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lbolts/s;->b(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, Lbolts/s;->a()Lbolts/k;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lbolts/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/k",
            "<TTResult;>.bolts/s;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lbolts/k;

    invoke-direct {v0}, Lbolts/k;-><init>()V

    .line 64
    new-instance v1, Lbolts/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbolts/s;-><init>(Lbolts/k;Lbolts/l;)V

    return-object v1
.end method

.method static synthetic a(Lbolts/k;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbolts/k;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic a(Lbolts/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbolts/k;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lbolts/k;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbolts/k;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lbolts/s;Lbolts/j;Lbolts/k;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lbolts/k;->c(Lbolts/s;Lbolts/j;Lbolts/k;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic a(Lbolts/k;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lbolts/k;->e:Z

    return p1
.end method

.method static synthetic b(Lbolts/s;Lbolts/j;Lbolts/k;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lbolts/k;->d(Lbolts/s;Lbolts/j;Lbolts/k;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic b(Lbolts/k;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lbolts/k;->e:Z

    return v0
.end method

.method static synthetic b(Lbolts/k;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lbolts/k;->f:Z

    return p1
.end method

.method static synthetic c(Lbolts/k;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lbolts/k;->h()V

    return-void
.end method

.method private static c(Lbolts/s;Lbolts/j;Lbolts/k;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/k",
            "<TTContinuationResult;>.bolts/s;",
            "Lbolts/j",
            "<TTResult;TTContinuationResult;>;",
            "Lbolts/k",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lbolts/r;

    invoke-direct {v0, p1, p2, p0}, Lbolts/r;-><init>(Lbolts/j;Lbolts/k;Lbolts/s;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method private static d(Lbolts/s;Lbolts/j;Lbolts/k;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/k",
            "<TTContinuationResult;>.bolts/s;",
            "Lbolts/j",
            "<TTResult;",
            "Lbolts/k",
            "<TTContinuationResult;>;>;",
            "Lbolts/k",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Lbolts/m;

    invoke-direct {v0, p1, p2, p0}, Lbolts/m;-><init>(Lbolts/j;Lbolts/k;Lbolts/s;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method public static g()Lbolts/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/k",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lbolts/k;->a()Lbolts/s;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lbolts/s;->c()V

    .line 148
    invoke-virtual {v0}, Lbolts/s;->a()Lbolts/k;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 512
    iget-object v1, p0, Lbolts/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, Lbolts/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :try_start_1
    invoke-interface {v0, p0}, Lbolts/j;->then(Lbolts/k;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    :try_start_2
    throw v0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 518
    :catch_1
    move-exception v0

    .line 519
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 522
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbolts/k;->i:Ljava/util/List;

    .line 523
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    return-void
.end method


# virtual methods
.method public a(Lbolts/j;)Lbolts/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/j",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 334
    sget-object v0, Lbolts/k;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/k;->a(Lbolts/j;Ljava/util/concurrent/Executor;)Lbolts/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbolts/j;Ljava/util/concurrent/Executor;)Lbolts/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/j",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lbolts/k;->a()Lbolts/s;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lbolts/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lbolts/k;->b()Z

    move-result v2

    .line 312
    if-nez v2, :cond_0

    .line 313
    iget-object v3, p0, Lbolts/k;->i:Ljava/util/List;

    new-instance v4, Lbolts/o;

    invoke-direct {v4, p0, v0, p1, p2}, Lbolts/o;-><init>(Lbolts/k;Lbolts/s;Lbolts/j;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    if-eqz v2, :cond_1

    .line 323
    invoke-static {v0, p1, p0, p2}, Lbolts/k;->c(Lbolts/s;Lbolts/j;Lbolts/k;Ljava/util/concurrent/Executor;)V

    .line 325
    :cond_1
    invoke-virtual {v0}, Lbolts/s;->a()Lbolts/k;

    move-result-object v0

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lbolts/j;)Lbolts/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/j",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 398
    sget-object v0, Lbolts/k;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/k;->c(Lbolts/j;Ljava/util/concurrent/Executor;)Lbolts/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbolts/j;Ljava/util/concurrent/Executor;)Lbolts/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/j",
            "<TTResult;",
            "Lbolts/k",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Lbolts/k;->a()Lbolts/s;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lbolts/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    invoke-virtual {p0}, Lbolts/k;->b()Z

    move-result v2

    .line 347
    if-nez v2, :cond_0

    .line 348
    iget-object v3, p0, Lbolts/k;->i:Ljava/util/List;

    new-instance v4, Lbolts/p;

    invoke-direct {v4, p0, v0, p1, p2}, Lbolts/p;-><init>(Lbolts/k;Lbolts/s;Lbolts/j;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-eqz v2, :cond_1

    .line 358
    invoke-static {v0, p1, p0, p2}, Lbolts/k;->d(Lbolts/s;Lbolts/j;Lbolts/k;Ljava/util/concurrent/Executor;)V

    .line 360
    :cond_1
    invoke-virtual {v0}, Lbolts/s;->a()Lbolts/k;

    move-result-object v0

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lbolts/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lbolts/k;->e:Z

    monitor-exit v1

    return v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lbolts/j;Ljava/util/concurrent/Executor;)Lbolts/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/j",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Lbolts/q;

    invoke-direct {v0, p0, p1}, Lbolts/q;-><init>(Lbolts/k;Lbolts/j;)V

    invoke-virtual {p0, v0, p2}, Lbolts/k;->b(Lbolts/j;Ljava/util/concurrent/Executor;)Lbolts/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lbolts/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lbolts/k;->f:Z

    monitor-exit v1

    return v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lbolts/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lbolts/k;->h:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lbolts/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lbolts/k;->g:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lbolts/k;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lbolts/k;->h:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
