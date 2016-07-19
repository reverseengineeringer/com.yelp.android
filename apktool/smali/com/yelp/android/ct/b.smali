.class public abstract Lcom/yelp/android/ct/b;
.super Ljava/lang/Object;
.source "EnabledEventsStrategy.java"

# interfaces
.implements Lcom/yelp/android/ct/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ct/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final c:Landroid/content/Context;

.field protected final d:Lcom/yelp/android/ct/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ct/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/ScheduledExecutorService;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field volatile g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/yelp/android/ct/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/yelp/android/ct/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ct/b;->g:I

    .line 50
    iput-object p1, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/yelp/android/ct/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    iput-object p3, p0, Lcom/yelp/android/ct/b;->d:Lcom/yelp/android/ct/d;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ct/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 4

    .prologue
    .line 108
    iput p1, p0, Lcom/yelp/android/ct/b;->g:I

    .line 109
    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/yelp/android/ct/b;->g:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yelp/android/ct/b;->a(JJ)V

    .line 110
    return-void
.end method

.method a(JJ)V
    .locals 9

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ct/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 114
    :goto_0
    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Lcom/yelp/android/ct/n;

    iget-object v0, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, Lcom/yelp/android/ct/n;-><init>(Landroid/content/Context;Lcom/yelp/android/ct/j;)V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scheduling time based file roll over every "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :try_start_0
    iget-object v7, p0, Lcom/yelp/android/ct/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/yelp/android/ct/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_1
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    iget-object v1, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    const-string/jumbo v2, "Failed to schedule time based file roll over"

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ct/b;->d:Lcom/yelp/android/ct/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ct/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ct/b;->f()V

    .line 95
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    const-string/jumbo v2, "Failed to write event."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ct/b;->g()V

    .line 68
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ct/b;->d:Lcom/yelp/android/ct/d;

    invoke-virtual {v0}, Lcom/yelp/android/ct/d;->f()V

    .line 84
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ct/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    const-string/jumbo v1, "Cancelling time-based rollover because no events are currently being generated."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ct/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ct/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ct/b;->d:Lcom/yelp/android/ct/d;

    invoke-virtual {v0}, Lcom/yelp/android/ct/d;->d()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    iget-object v1, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    const-string/jumbo v2, "Failed to roll file over."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 4

    .prologue
    .line 58
    iget v0, p0, Lcom/yelp/android/ct/b;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 60
    :goto_0
    if-eqz v0, :cond_0

    .line 61
    iget v0, p0, Lcom/yelp/android/ct/b;->g:I

    int-to-long v0, v0

    iget v2, p0, Lcom/yelp/android/ct/b;->g:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yelp/android/ct/b;->a(JJ)V

    .line 63
    :cond_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ct/b;->a()Lcom/yelp/android/ct/k;

    move-result-object v3

    .line 140
    if-nez v3, :cond_1

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    const-string/jumbo v1, "skipping files send because we don\'t yet know the target endpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    const-string/jumbo v2, "Sending all files"

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ct/b;->d:Lcom/yelp/android/ct/d;

    invoke-virtual {v0}, Lcom/yelp/android/ct/d;->e()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 151
    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "attempt to send batch of %d files"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-interface {v3, v2}, Lcom/yelp/android/ct/k;->a(Ljava/util/List;)Z

    move-result v4

    .line 156
    if-eqz v4, :cond_2

    .line 157
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v1, v0

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/yelp/android/ct/b;->d:Lcom/yelp/android/ct/d;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ct/d;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 161
    :cond_2
    if-nez v4, :cond_4

    .line 172
    :cond_3
    :goto_2
    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ct/b;->d:Lcom/yelp/android/ct/d;

    invoke-virtual {v0}, Lcom/yelp/android/ct/d;->g()V

    goto :goto_0

    .line 165
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/yelp/android/ct/b;->d:Lcom/yelp/android/ct/d;

    invoke-virtual {v1}, Lcom/yelp/android/ct/d;->e()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 166
    goto :goto_1

    .line 167
    :catch_0
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    .line 168
    :goto_3
    iget-object v2, p0, Lcom/yelp/android/ct/b;->c:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to send batch of analytics files to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    .line 167
    :catch_1
    move-exception v0

    goto :goto_3
.end method
