.class public final Lcom/yelp/android/cz/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/line/android/sdk/login/LineLoginFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/cz/d$1;
    }
.end annotation


# instance fields
.field private final a:J

.field private b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field private c:Z

.field private final d:Z

.field private e:Lcom/yelp/android/db/f;

.field private f:Lcom/yelp/android/db/i;

.field private g:Lcom/yelp/android/db/a;

.field private h:Ljava/lang/Throwable;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/line/android/sdk/login/b;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/line/android/sdk/login/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/Executor;


# direct methods
.method protected constructor <init>(JLjp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;Lcom/yelp/android/db/f;Lcom/yelp/android/db/i;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v0, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    iput-wide p1, p0, Lcom/yelp/android/cz/d;->a:J

    iput-object p4, p0, Lcom/yelp/android/cz/d;->e:Lcom/yelp/android/db/f;

    iput-object p5, p0, Lcom/yelp/android/cz/d;->f:Lcom/yelp/android/db/i;

    iput-boolean p6, p0, Lcom/yelp/android/cz/d;->d:Z

    iget v0, p3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v1, v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/yelp/android/cz/d;->e:Lcom/yelp/android/db/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/cz/d;->e:Lcom/yelp/android/db/f;

    iget-object v0, v0, Lcom/yelp/android/db/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/cz/d;->e:Lcom/yelp/android/db/f;

    iget-object v0, v0, Lcom/yelp/android/db/f;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v0, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    :goto_0
    return-void

    :cond_1
    iget v0, p3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_REQUEST_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v1, v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/yelp/android/cz/d;->f:Lcom/yelp/android/db/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/cz/d;->f:Lcom/yelp/android/db/i;

    iget-object v0, v0, Lcom/yelp/android/db/i;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v0, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    goto :goto_0

    :cond_3
    iget v0, p3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->SUCCESS:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v1, v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/yelp/android/cz/d;->g:Lcom/yelp/android/db/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/cz/d;->g:Lcom/yelp/android/db/a;

    iget-object v0, v0, Lcom/yelp/android/db/a;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    sget-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v0, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    goto :goto_0

    :cond_5
    iput-object p3, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/cz/d;->c:Z

    goto :goto_0
.end method

.method protected constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v0, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/cz/d;->a:J

    iput-boolean p1, p0, Lcom/yelp/android/cz/d;->d:Z

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljp/line/android/sdk/login/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/cz/d;->i()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/cz/e;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/cz/e;-><init>(Lcom/yelp/android/cz/d;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljp/line/android/sdk/login/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/cz/d;->i()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/cz/f;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/cz/f;-><init>(Lcom/yelp/android/cz/d;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private final i()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/cz/d;->k:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/cz/d;->k:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cz/d;->k:Ljava/util/concurrent/Executor;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/cz/d;->k:Ljava/util/concurrent/Executor;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yelp/android/cz/d;->d:Z

    return v0
.end method

.method public final a(Lcom/yelp/android/db/a;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->SUCCESS:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->SUCCESS:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_2

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->SUCCESS:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v1, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object p1, p0, Lcom/yelp/android/cz/d;->g:Lcom/yelp/android/db/a;

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v3, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-direct {p0, v1}, Lcom/yelp/android/cz/d;->a(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/cz/d;->b(Ljava/util/List;)V

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move v2, v1

    move-object v1, v0

    goto :goto_2
.end method

.method public final a(Lcom/yelp/android/db/f;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_0

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v1, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object p1, p0, Lcom/yelp/android/cz/d;->e:Lcom/yelp/android/db/f;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/yelp/android/cz/d;->b(Ljava/util/List;)V

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/yelp/android/db/i;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_REQUEST_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_REQUEST_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_0

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_REQUEST_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v1, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object p1, p0, Lcom/yelp/android/cz/d;->f:Lcom/yelp/android/db/i;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/yelp/android/cz/d;->b(Ljava/util/List;)V

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->FAILED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->FAILED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_2

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->FAILED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v1, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object p1, p0, Lcom/yelp/android/cz/d;->h:Ljava/lang/Throwable;

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v3, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-direct {p0, v1}, Lcom/yelp/android/cz/d;->a(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/cz/d;->b(Ljava/util/List;)V

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move v2, v1

    move-object v1, v0

    goto :goto_2
.end method

.method public final a(Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    iget v3, p1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    iget v3, p1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_0

    iput-object p1, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/yelp/android/cz/d;->b(Ljava/util/List;)V

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljp/line/android/sdk/login/b;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/cz/d;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/yelp/android/cz/d;->b(Ljp/line/android/sdk/login/b;)V

    :cond_0
    return v0

    :cond_1
    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljp/line/android/sdk/login/c;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/cz/d;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v4, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v4, v4, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-le v3, v4, :cond_1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yelp/android/cz/d;->b(Ljp/line/android/sdk/login/c;)V

    :cond_0
    return v2

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/yelp/android/cz/d;->a:J

    return-wide v0
.end method

.method final b(Ljp/line/android/sdk/login/b;)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p0}, Ljp/line/android/sdk/login/b;->a(Ljp/line/android/sdk/login/LineLoginFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final b(Ljp/line/android/sdk/login/c;)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p0}, Ljp/line/android/sdk/login/c;->a(Ljp/line/android/sdk/login/LineLoginFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    sget-object v0, Lcom/yelp/android/cz/d$1;->a:[I

    iget-object v1, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    invoke-virtual {v1}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    return-object v0
.end method

.method public final e()Lcom/yelp/android/db/f;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/cz/d;->e:Lcom/yelp/android/db/f;

    return-object v0
.end method

.method public final f()Lcom/yelp/android/db/i;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/cz/d;->f:Lcom/yelp/android/db/i;

    return-object v0
.end method

.method public final g()Lcom/yelp/android/db/a;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/cz/d;->g:Lcom/yelp/android/db/a;

    return-object v0
.end method

.method public final h()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->CANCELED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v2, v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->CANCELED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v3, v3, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v2, v3, :cond_2

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->CANCELED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iput-object v1, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/yelp/android/cz/d;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v3, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/yelp/android/cz/d;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-direct {p0, v1}, Lcom/yelp/android/cz/d;->a(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/cz/d;->b(Ljava/util/List;)V

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move v2, v1

    move-object v1, v0

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LineLoginFuture : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    progress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/cz/d;->b:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    createdTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/yelp/android/cz/d;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    otp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/cz/d;->e:Lcom/yelp/android/db/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    requestToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/cz/d;->f:Lcom/yelp/android/db/i;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    accessToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/cz/d;->g:Lcom/yelp/android/db/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yelp/android/cz/d;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/cz/d;->h:Ljava/lang/Throwable;

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string/jumbo v2, "    cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
