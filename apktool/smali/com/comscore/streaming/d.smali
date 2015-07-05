.class public Lcom/comscore/streaming/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/comscore/streaming/b;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:Ljava/util/HashMap;
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

.field private i:Z


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

    iget-object v0, p0, Lcom/comscore/streaming/d;->h:Ljava/util/HashMap;

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

    if-eqz p2, :cond_5

    :goto_0
    const-string/jumbo v0, "ns_st_bp"

    invoke-virtual {p0}, Lcom/comscore/streaming/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ns_st_sp"

    iget v1, p0, Lcom/comscore/streaming/d;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ns_st_id"

    iget-object v1, p0, Lcom/comscore/streaming/d;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/comscore/streaming/d;->e:I

    if-lez v0, :cond_0

    const-string/jumbo v0, "ns_st_bc"

    iget v1, p0, Lcom/comscore/streaming/d;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->KEEP_ALIVE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->HEART_BEAT:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string/jumbo v0, "ns_st_pa"

    invoke-virtual {p0}, Lcom/comscore/streaming/d;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ns_st_pp"

    iget v1, p0, Lcom/comscore/streaming/d;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/comscore/streaming/d;->h()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "ns_st_pb"

    const-string/jumbo v1, "1"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/d;->a(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/comscore/streaming/d;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p2

    :cond_5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_0
.end method

.method protected a(I)V
    .locals 0

    iput p1, p0, Lcom/comscore/streaming/d;->c:I

    return-void
.end method

.method protected a(J)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addPlaybackTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v0}, Lcom/comscore/streaming/b;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v0}, Lcom/comscore/streaming/b;->f()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/comscore/streaming/b;->c(J)V

    iget-object v2, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    iget-object v3, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v3}, Lcom/comscore/streaming/b;->e()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/comscore/streaming/b;->b(J)V

    invoke-virtual {p0}, Lcom/comscore/streaming/d;->e()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/comscore/streaming/d;->d(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addPlaybackTime("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
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

    const-string/jumbo v0, "ns_st_sp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/d;->c:I

    const-string/jumbo v0, "ns_st_sp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    const-string/jumbo v0, "ns_st_bc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/d;->e:I

    const-string/jumbo v0, "ns_st_bc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    const-string/jumbo v0, "ns_st_bp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/d;->f:J

    const-string/jumbo v0, "ns_st_bp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    const-string/jumbo v0, "ns_st_id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/comscore/streaming/d;->b:Ljava/lang/String;

    const-string/jumbo v0, "ns_st_id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_4

    const-string/jumbo v0, "ns_st_pa"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    :try_start_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/d;->g:J

    const-string/jumbo v0, "ns_st_pa"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_5

    if-nez p2, :cond_6

    :cond_5
    const-string/jumbo v0, "ns_st_pp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/d;->d:I

    const-string/jumbo v0, "ns_st_pp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/streaming/d;->i:Z

    return-void
.end method

.method public b()Lcom/comscore/streaming/b;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    return-object v0
.end method

.method protected b(J)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addBufferingTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v0}, Lcom/comscore/streaming/b;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v0}, Lcom/comscore/streaming/b;->g()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/comscore/streaming/b;->d(J)V

    iget-object v2, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    iget-object v3, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v3}, Lcom/comscore/streaming/b;->d()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/comscore/streaming/b;->a(J)V

    invoke-virtual {p0}, Lcom/comscore/streaming/d;->d()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/comscore/streaming/d;->c(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addBufferingTime("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected c()I
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/d;->c:I

    return v0
.end method

.method protected c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/d;->f:J

    return-void
.end method

.method protected d()J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/streaming/d;->f:J

    iget-object v2, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v2}, Lcom/comscore/streaming/b;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v4}, Lcom/comscore/streaming/b;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected d(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/d;->g:J

    return-void
.end method

.method protected e()J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/streaming/d;->g:J

    iget-object v2, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v2}, Lcom/comscore/streaming/b;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v4}, Lcom/comscore/streaming/b;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected f()V
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/d;->d:I

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v0}, Lcom/comscore/streaming/b;->b()V

    return-void
.end method

.method protected g()V
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/d;->e:I

    return-void
.end method

.method protected h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/streaming/d;->i:Z

    return v0
.end method
