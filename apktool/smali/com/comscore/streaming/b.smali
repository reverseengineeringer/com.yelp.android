.class public Lcom/comscore/streaming/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method private a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method protected a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseEventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_4

    :goto_0
    const-string/jumbo v0, "ns_st_cn"

    invoke-virtual {p0}, Lcom/comscore/streaming/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ns_st_bt"

    invoke-virtual {p0}, Lcom/comscore/streaming/b;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "ns_st_sq"

    iget v1, p0, Lcom/comscore/streaming/b;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->KEEP_ALIVE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->HEART_BEAT:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    const-string/jumbo v0, "ns_st_pt"

    invoke-virtual {p0}, Lcom/comscore/streaming/b;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ns_st_pc"

    iget v1, p0, Lcom/comscore/streaming/b;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/comscore/streaming/b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p2

    :cond_4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 0

    iput p1, p0, Lcom/comscore/streaming/b;->b:I

    return-void
.end method

.method protected a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/b;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/b;->h:Ljava/lang/String;

    return-void
.end method

.method protected a(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/StreamSenseState;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "ns_st_cn"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/b;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "ns_st_cn"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v0, "ns_st_bt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/b;->d:J

    const-string/jumbo v0, "ns_st_bt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_0
    const-string/jumbo v0, "ns_st_cl"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/b;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v0, "ns_st_pn"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/b;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v0, "ns_st_tp"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/b;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v0, "ns_st_ub"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/b;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v0, "ns_st_br"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/b;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const-string/jumbo v0, "ns_st_sq"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/b;->c:I

    const-string/jumbo v0, "ns_st_sq"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_4

    const-string/jumbo v0, "ns_st_pt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/b;->f:J

    const-string/jumbo v0, "ns_st_pt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_2
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_5

    if-nez p2, :cond_6

    :cond_5
    const-string/jumbo v0, "ns_st_pc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/b;->b:I

    const-string/jumbo v0, "ns_st_pc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/comscore/streaming/e;->a(Ljava/util/Map;Ljava/util/Set;)V

    :goto_0
    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ns_st_cl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ns_st_cl"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ns_st_pn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ns_st_pn"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ns_st_tp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ns_st_tp"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, v3}, Lcom/comscore/streaming/b;->a(I)V

    invoke-virtual {p0, v3}, Lcom/comscore/streaming/b;->b(I)V

    invoke-virtual {p0, v6, v7}, Lcom/comscore/streaming/b;->a(J)V

    invoke-virtual {p0, v4, v5}, Lcom/comscore/streaming/b;->d(J)V

    invoke-virtual {p0, v6, v7}, Lcom/comscore/streaming/b;->b(J)V

    invoke-virtual {p0, v4, v5}, Lcom/comscore/streaming/b;->c(J)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/b;->b:I

    return-void
.end method

.method protected b(I)V
    .locals 0

    iput p1, p0, Lcom/comscore/streaming/b;->c:I

    return-void
.end method

.method protected b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/b;->f:J

    return-void
.end method

.method protected c()V
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/b;->c:I

    return-void
.end method

.method protected c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/b;->g:J

    return-void
.end method

.method protected d()J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/streaming/b;->d:J

    iget-wide v2, p0, Lcom/comscore/streaming/b;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/streaming/b;->e:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected d(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/b;->e:J

    return-void
.end method

.method protected e()J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/streaming/b;->f:J

    iget-wide v2, p0, Lcom/comscore/streaming/b;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/streaming/b;->g:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected f()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/streaming/b;->g:J

    return-wide v0
.end method

.method protected g()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/streaming/b;->e:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/b;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/comscore/utils/n;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/comscore/streaming/b;->h:Ljava/lang/String;

    return-object v0
.end method
