.class public Lcom/yelp/android/cn/b;
.super Lcom/yelp/android/cn/c;
.source "BusinessFullyLoadedTimer.java"


# instance fields
.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;Lcom/yelp/android/analytics/iris/a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/cn/c;-><init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;Lcom/yelp/android/analytics/iris/a;)V

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 4

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/cl;

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/cn/b;->e:J

    .line 54
    :cond_0
    :goto_0
    iget v0, p0, Lcom/yelp/android/cn/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/cn/b;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 43
    :cond_1
    :try_start_1
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_2

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/cn/b;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 45
    :cond_2
    :try_start_2
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/dw;

    if-eqz v0, :cond_3

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/cn/b;->g:J

    goto :goto_0

    .line 47
    :cond_3
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ck;

    if-eqz v0, :cond_4

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/cn/b;->h:J

    goto :goto_0

    .line 49
    :cond_4
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_5

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/cn/b;->i:J

    goto :goto_0

    .line 51
    :cond_5
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ae;

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/cn/b;->j:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected d()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 59
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 60
    iget-wide v2, p0, Lcom/yelp/android/cn/b;->e:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 61
    const-string/jumbo v1, "interval_local_ads"

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    iget-wide v2, p0, Lcom/yelp/android/cn/b;->f:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 64
    const-string/jumbo v1, "interval_media"

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    iget-wide v2, p0, Lcom/yelp/android/cn/b;->g:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 67
    const-string/jumbo v1, "interval_highlights"

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    iget-wide v2, p0, Lcom/yelp/android/cn/b;->h:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 70
    const-string/jumbo v1, "interval_tips"

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_3
    iget-wide v2, p0, Lcom/yelp/android/cn/b;->i:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 73
    const-string/jumbo v1, "interval_reviews"

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_4
    iget-wide v2, p0, Lcom/yelp/android/cn/b;->j:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 76
    const-string/jumbo v1, "interval_regular"

    iget-wide v2, p0, Lcom/yelp/android/cn/b;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_5
    return-object v0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 86
    iget v0, p0, Lcom/yelp/android/cn/b;->k:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lcom/yelp/android/cn/b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
