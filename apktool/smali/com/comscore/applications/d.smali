.class public Lcom/comscore/applications/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final a:J

.field protected b:J

.field protected c:J

.field private d:Lcom/comscore/analytics/a;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/a;J)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/applications/d;->b:J

    iput-boolean v2, p0, Lcom/comscore/applications/d;->e:Z

    iput-boolean v2, p0, Lcom/comscore/applications/d;->f:Z

    iput-wide p2, p0, Lcom/comscore/applications/d;->a:J

    iget-wide v0, p0, Lcom/comscore/applications/d;->a:J

    iput-wide v0, p0, Lcom/comscore/applications/d;->c:J

    iput-object p1, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    return-void
.end method

.method private a(Lcom/comscore/utils/m;)J
    .locals 4

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "lastMeasurementProcessedTimestamp"

    invoke-virtual {p1, v2}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/applications/d;->a(Z)V

    return-void
.end method

.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/comscore/applications/d;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/applications/d;->e:Z

    const-string/jumbo v0, "KeepAlive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/applications/d;->b:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/applications/d;->b:J

    :cond_2
    invoke-virtual {p0}, Lcom/comscore/applications/d;->c()V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/comscore/applications/d;->e()V

    const-string/jumbo v0, "KeepAlive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/comscore/applications/d;->b:J

    iput-wide p1, p0, Lcom/comscore/applications/d;->c:J

    iget-boolean v0, p0, Lcom/comscore/applications/d;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/applications/d;->a(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->p()Lcom/comscore/utils/j;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/comscore/applications/d;->a(Lcom/comscore/utils/m;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-string/jumbo v1, "KeepAlive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processKeepAlive("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") timeSinceLastTransmission="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " currentTimeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/comscore/applications/d;->c:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/comscore/applications/d;->c:J

    const-wide/16 v6, 0x3e8

    sub-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    const-string/jumbo v1, "KeepAlive"

    const-string/jumbo v2, "Sending Keep-alive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    sget-object v1, Lcom/comscore/applications/EventType;->KEEPALIVE:Lcom/comscore/applications/EventType;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v10}, Lcom/comscore/analytics/a;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    :goto_1
    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v0

    const-string/jumbo v1, "lastMeasurementProcessedTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/comscore/applications/EventType;->KEEPALIVE:Lcom/comscore/applications/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v10}, Lcom/comscore/utils/j;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-wide v0, p0, Lcom/comscore/applications/d;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/comscore/applications/d;->a(J)V

    return-void
.end method

.method protected c()V
    .locals 8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/comscore/applications/d;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-wide v5, p0, Lcom/comscore/applications/d;->a:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;JZJ)Z

    iput-boolean v4, p0, Lcom/comscore/applications/d;->f:Z

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const-string/jumbo v0, "KeepAlive"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/applications/d;->e:Z

    invoke-virtual {p0}, Lcom/comscore/applications/d;->e()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/applications/d;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string/jumbo v0, "KeepAlive"

    const-string/jumbo v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/an/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/applications/d;->f:Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/applications/d;->d:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/comscore/applications/d;->f:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeepAlive"

    const-string/jumbo v1, "run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/comscore/applications/d;->a()V

    goto :goto_0
.end method
