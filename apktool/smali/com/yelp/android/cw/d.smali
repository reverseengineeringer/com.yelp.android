.class public final Lcom/yelp/android/cw/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/line/android/sdk/api/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljp/line/android/sdk/api/b",
        "<TRO;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljp/line/android/sdk/api/FutureStatus;

.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/line/android/sdk/api/c",
            "<TRO;>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/line/android/sdk/api/d",
            "<TRO;>;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRO;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Throwable;

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljp/line/android/sdk/api/FutureStatus;->PROCESSING:Ljp/line/android/sdk/api/FutureStatus;

    iput-object v0, p0, Lcom/yelp/android/cw/d;->b:Ljp/line/android/sdk/api/FutureStatus;

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljp/line/android/sdk/api/c",
            "<TRO;>;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/line/android/sdk/api/c;

    invoke-direct {p0, v0}, Lcom/yelp/android/cw/d;->b(Ljp/line/android/sdk/api/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(Ljp/line/android/sdk/api/d;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/line/android/sdk/api/d",
            "<TRO;>;JJ)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Ljp/line/android/sdk/api/d;->a(Ljp/line/android/sdk/api/b;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljp/line/android/sdk/api/FutureStatus;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/yelp/android/cw/d;->a:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/yelp/android/cw/d;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/cw/d;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    iput-boolean v0, p0, Lcom/yelp/android/cw/d;->a:Z

    iput-object p1, p0, Lcom/yelp/android/cw/d;->b:Ljp/line/android/sdk/api/FutureStatus;

    goto :goto_0
.end method

.method private final b(Ljp/line/android/sdk/api/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/line/android/sdk/api/c",
            "<TRO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p0}, Ljp/line/android/sdk/api/c;->a(Ljp/line/android/sdk/api/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/cw/d;->a:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    :cond_0
    return-void

    :cond_1
    iput-wide p1, p0, Lcom/yelp/android/cw/d;->h:J

    iput-wide p3, p0, Lcom/yelp/android/cw/d;->i:J

    iget-object v0, p0, Lcom/yelp/android/cw/d;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/cw/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/cw/d;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/line/android/sdk/api/d;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/cw/d;->a(Ljp/line/android/sdk/api/d;JJ)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRO;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yelp/android/cw/d;->f:Ljava/lang/Object;

    sget-object v0, Ljp/line/android/sdk/api/FutureStatus;->SUCCESS:Ljp/line/android/sdk/api/FutureStatus;

    invoke-direct {p0, v0}, Lcom/yelp/android/cw/d;->a(Ljp/line/android/sdk/api/FutureStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/cw/d;->e:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/yelp/android/cw/d;->a(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yelp/android/cw/d;->g:Ljava/lang/Throwable;

    sget-object v0, Ljp/line/android/sdk/api/FutureStatus;->FAILED:Ljp/line/android/sdk/api/FutureStatus;

    invoke-direct {p0, v0}, Lcom/yelp/android/cw/d;->a(Ljp/line/android/sdk/api/FutureStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/cw/d;->e:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/yelp/android/cw/d;->a(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yelp/android/cw/d;->a:Z

    return v0
.end method

.method public final a(Ljp/line/android/sdk/api/c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/line/android/sdk/api/c",
            "<TRO;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/cw/d;->a:Z

    if-eqz v2, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/yelp/android/cw/d;->b(Ljp/line/android/sdk/api/c;)V

    :cond_0
    return v1

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/yelp/android/cw/d;->a:Z

    if-eqz v2, :cond_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    :cond_3
    iget-object v2, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final b()Ljp/line/android/sdk/api/FutureStatus;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/cw/d;->b:Ljp/line/android/sdk/api/FutureStatus;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yelp/android/cw/d;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/cw/d;->g:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Ljp/line/android/sdk/api/FutureStatus;->CANCELED:Ljp/line/android/sdk/api/FutureStatus;

    invoke-direct {p0, v0}, Lcom/yelp/android/cw/d;->a(Ljp/line/android/sdk/api/FutureStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/cw/d;->d:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/cw/d;->e:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/yelp/android/cw/d;->a(Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApiRequestFuture ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    isDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yelp/android/cw/d;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/cw/d;->b:Ljp/line/android/sdk/api/FutureStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    responseObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/cw/d;->f:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yelp/android/cw/d;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/cw/d;->g:Ljava/lang/Throwable;

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
    iget-wide v2, p0, Lcom/yelp/android/cw/d;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-string/jumbo v0, "    progress="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/cw/d;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/cw/d;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
