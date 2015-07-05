.class public Lcom/comscore/streaming/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/comscore/analytics/a;

.field private b:Ljava/util/HashMap;
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

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Lcom/comscore/streaming/StreamSenseState;

.field private g:I

.field private h:Lcom/comscore/streaming/d;

.field private i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/comscore/streaming/k;

.field private m:Ljava/lang/Runnable;

.field private n:J

.field private o:I

.field private p:J

.field private q:Z

.field private r:Lcom/comscore/streaming/StreamSenseState;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/HashMap;
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

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/comscore/streaming/c;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private x:I

.field private y:I


# direct methods
.method private a(J)J
    .locals 9

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "playingtime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, p1, v6

    if-gez v1, :cond_0

    :cond_1
    const-string/jumbo v1, "interval"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method private a(Lcom/comscore/streaming/StreamSenseEventType;)Lcom/comscore/streaming/StreamSenseState;
    .locals 1

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->BUFFER:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;
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

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createMeasurementLabels("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string/jumbo v1, "ns_ts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "ns_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v1, "ns_st_ev"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "ns_st_ev"

    invoke-virtual {p1}, Lcom/comscore/streaming/StreamSenseEventType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/comscore/streaming/a;->d()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0}, Lcom/comscore/streaming/a;->b(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v1, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v1, p1, v0}, Lcom/comscore/streaming/d;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v1, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v1}, Lcom/comscore/streaming/d;->b()Lcom/comscore/streaming/b;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/comscore/streaming/b;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    const-string/jumbo v1, "ns_st_mp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "ns_st_mp"

    iget-object v2, p0, Lcom/comscore/streaming/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string/jumbo v1, "ns_st_mv"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "ns_st_mv"

    iget-object v2, p0, Lcom/comscore/streaming/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string/jumbo v1, "ns_st_ub"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "ns_st_ub"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string/jumbo v1, "ns_st_br"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "ns_st_br"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string/jumbo v1, "ns_st_pn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "ns_st_pn"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string/jumbo v1, "ns_st_tp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "ns_st_tp"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string/jumbo v1, "ns_st_it"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "ns_st_it"

    const-string/jumbo v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string/jumbo v1, "ns_st_sv"

    const-string/jumbo v2, "4.1502.26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/a;->q()V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/a;->c(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/comscore/streaming/a;->c()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v1

    iget-wide v2, p0, Lcom/comscore/streaming/a;->d:J

    invoke-direct {p0, p2}, Lcom/comscore/streaming/a;->f(Ljava/util/HashMap;)J

    move-result-wide v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    sub-long v4, v6, v2

    :cond_2
    invoke-virtual {p0}, Lcom/comscore/streaming/a;->c()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/comscore/streaming/a;->b(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/a;->c(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/a;->d(Lcom/comscore/streaming/StreamSenseState;)V

    iget-object v0, p0, Lcom/comscore/streaming/a;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/c;

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/comscore/streaming/c;->a(Lcom/comscore/streaming/StreamSenseState;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;J)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lcom/comscore/streaming/a;->c(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0, p2, p1}, Lcom/comscore/streaming/d;->a(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->b()Lcom/comscore/streaming/b;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/comscore/streaming/b;->a(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    invoke-virtual {p1}, Lcom/comscore/streaming/StreamSenseState;->toEventType()Lcom/comscore/streaming/StreamSenseEventType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/comscore/streaming/a;->f:Lcom/comscore/streaming/StreamSenseState;

    invoke-direct {p0, v1}, Lcom/comscore/streaming/a;->b(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/a;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/comscore/streaming/a;->f:Lcom/comscore/streaming/StreamSenseState;

    iput-object v0, p0, Lcom/comscore/streaming/a;->r:Lcom/comscore/streaming/StreamSenseState;

    iget v0, p0, Lcom/comscore/streaming/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/a;->g:I

    goto/16 :goto_0
.end method

.method private a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/a;->q()V

    new-instance v0, Lcom/comscore/streaming/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/comscore/streaming/i;-><init>(Lcom/comscore/streaming/a;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/comscore/streaming/a;->l:Lcom/comscore/streaming/k;

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/a;->l:Lcom/comscore/streaming/k;

    invoke-virtual {v0, v1, p3, p4}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/comscore/streaming/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/comscore/streaming/a;->o()V

    return-void
.end method

.method static synthetic a(Lcom/comscore/streaming/a;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Lcom/comscore/streaming/StreamSenseState;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->ao()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
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

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    const-string/jumbo v0, "ns_st_ec"

    iget v1, p0, Lcom/comscore/streaming/a;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ns_st_po"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/comscore/streaming/a;->e:J

    invoke-direct {p0, p2}, Lcom/comscore/streaming/a;->f(Ljava/util/HashMap;)J

    move-result-wide v2

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v4, :cond_2

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->KEEP_ALIVE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v4, :cond_2

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->HEART_BEAT:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v4, :cond_2

    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/comscore/streaming/a;->f:Lcom/comscore/streaming/StreamSenseState;

    sget-object v5, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne v4, v5, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v4}, Lcom/comscore/streaming/d;->b()Lcom/comscore/streaming/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/comscore/streaming/b;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_3
    const-string/jumbo v2, "ns_st_po"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->HEART_BEAT:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "ns_st_hc"

    iget v1, p0, Lcom/comscore/streaming/a;->o:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ns_st_pe"

    const-string/jumbo v1, "1"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_1
.end method

.method private b(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onExit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/comscore/streaming/a;->f(Ljava/util/HashMap;)J

    move-result-wide v0

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v2, v0, v1}, Lcom/comscore/streaming/d;->a(J)V

    invoke-direct {p0}, Lcom/comscore/streaming/a;->j()V

    invoke-direct {p0}, Lcom/comscore/streaming/a;->m()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v2, v0, v1}, Lcom/comscore/streaming/d;->b(J)V

    invoke-direct {p0}, Lcom/comscore/streaming/a;->p()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/comscore/streaming/a;->g()Lcom/comscore/streaming/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comscore/streaming/a;->g()Lcom/comscore/streaming/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comscore/streaming/b;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/b;->a(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/comscore/streaming/a;->f(Ljava/util/HashMap;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string/jumbo v0, "ns_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(Lcom/comscore/streaming/StreamSenseState;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/comscore/streaming/a;->r:Lcom/comscore/streaming/StreamSenseState;

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/comscore/streaming/a;->r:Lcom/comscore/streaming/StreamSenseState;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/comscore/streaming/a;->r:Lcom/comscore/streaming/StreamSenseState;

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/comscore/streaming/a;->f(Ljava/util/HashMap;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/comscore/streaming/a;->e(Ljava/util/HashMap;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/comscore/streaming/a;->e:J

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/comscore/streaming/a;->i()V

    invoke-direct {p0}, Lcom/comscore/streaming/a;->l()V

    iget-object v2, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v2}, Lcom/comscore/streaming/d;->b()Lcom/comscore/streaming/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/comscore/streaming/b;->c(J)V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/a;->b(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->b()Lcom/comscore/streaming/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/streaming/b;->c()V

    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->c()I

    move-result v0

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0, v4}, Lcom/comscore/streaming/d;->a(I)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/comscore/streaming/a;->b(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->f()V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v2}, Lcom/comscore/streaming/d;->b()Lcom/comscore/streaming/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/comscore/streaming/b;->d(J)V

    iget-boolean v0, p0, Lcom/comscore/streaming/a;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/streaming/a;->h()V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/streaming/a;->k()V

    goto/16 :goto_0
.end method

.method private c(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ns_st_mp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/comscore/streaming/a;->s:Ljava/lang/String;

    const-string/jumbo v0, "ns_st_mp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v0, "ns_st_mv"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/comscore/streaming/a;->t:Ljava/lang/String;

    const-string/jumbo v0, "ns_st_mv"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v0, "ns_st_ec"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/a;->g:I

    const-string/jumbo v0, "ns_st_ec"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Lcom/comscore/streaming/StreamSenseState;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/comscore/streaming/a;->c()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/comscore/streaming/StreamSenseState;)V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/comscore/streaming/a;->f:Lcom/comscore/streaming/StreamSenseState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/a;->d:J

    goto :goto_0
.end method

.method private d(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/a;->g(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/a;->u:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/comscore/streaming/a;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private e(Ljava/util/HashMap;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const-string/jumbo v0, "ns_st_po"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "ns_st_po"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private f(Ljava/util/HashMap;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const-string/jumbo v0, "ns_ts"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "ns_ts"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private g(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    iget-object v0, p0, Lcom/comscore/streaming/a;->f:Lcom/comscore/streaming/StreamSenseState;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSenseState;->toEventType()Lcom/comscore/streaming/StreamSenseEventType;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/comscore/streaming/a;->p()V

    invoke-virtual {p0}, Lcom/comscore/streaming/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    invoke-direct {p0, v0}, Lcom/comscore/streaming/a;->b(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/comscore/streaming/f;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/f;-><init>(Lcom/comscore/streaming/a;)V

    iput-object v0, p0, Lcom/comscore/streaming/a;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/a;->i:Ljava/lang/Runnable;

    iget v2, p0, Lcom/comscore/streaming/a;->y:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private i()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/comscore/streaming/a;->n()V

    iget-object v0, p0, Lcom/comscore/streaming/a;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/comscore/streaming/a;->n:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/comscore/streaming/a;->n:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resuming heart beat timer. Next event in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/comscore/streaming/a;->p:J

    new-instance v2, Lcom/comscore/streaming/g;

    invoke-direct {v2, p0}, Lcom/comscore/streaming/g;-><init>(Lcom/comscore/streaming/a;)V

    iput-object v2, p0, Lcom/comscore/streaming/a;->m:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v2}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/streaming/a;->m:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->b()Lcom/comscore/streaming/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/streaming/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/a;->a(J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting heart beat timer. Next event in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Pausing heartbeat timer."

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/a;->n()V

    iget-wide v0, p0, Lcom/comscore/streaming/a;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/streaming/a;->n:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/streaming/a;->p:J

    goto :goto_0
.end method

.method private k()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Resetting heartbeat timer."

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/comscore/streaming/a;->n:J

    iput-wide v2, p0, Lcom/comscore/streaming/a;->p:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/comscore/streaming/a;->o:I

    goto :goto_0
.end method

.method private l()V
    .locals 7

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Starting keep alive timer"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/a;->m()V

    new-instance v0, Lcom/comscore/streaming/h;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/h;-><init>(Lcom/comscore/streaming/a;)V

    iput-object v0, p0, Lcom/comscore/streaming/a;->k:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/a;->k:Ljava/lang/Runnable;

    iget v2, p0, Lcom/comscore/streaming/a;->x:I

    int-to-long v2, v2

    const/4 v4, 0x1

    iget v5, p0, Lcom/comscore/streaming/a;->x:I

    int-to-long v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;JZJ)Z

    goto :goto_0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "stopKeepAliveTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/a;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/an/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/a;->k:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "releaseHeartBeatTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/a;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/a;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/an/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/a;->m:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "Firing paused on buffering event"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/a;->r:Lcom/comscore/streaming/StreamSenseState;

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->g()V

    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->f()V

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/a;->a(Ljava/util/HashMap;)V

    iget v0, p0, Lcom/comscore/streaming/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/a;->g:I

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    iput-object v0, p0, Lcom/comscore/streaming/a;->r:Lcom/comscore/streaming/StreamSenseState;

    goto :goto_0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "stopPausedOnBufferingTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/a;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/a;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/an/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/a;->i:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "stopDelayedTransitionTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/a;->l:Lcom/comscore/streaming/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/a;->l:Lcom/comscore/streaming/k;

    invoke-virtual {v0, v1}, Lcom/yelp/android/an/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/a;->l:Lcom/comscore/streaming/k;

    goto :goto_0
.end method

.method private r()Z
    .locals 3

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->N()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->U()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v2}, Lcom/comscore/analytics/a;->Q()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Firing heart beat"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/comscore/streaming/a;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/a;->o:I

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->HEART_BEAT:Lcom/comscore/streaming/StreamSenseEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/a;->a(Ljava/util/HashMap;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/streaming/a;->n:J

    invoke-direct {p0}, Lcom/comscore/streaming/a;->i()V

    goto :goto_0
.end method

.method public a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseEventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseEventType;)Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    invoke-static {p2}, Lcom/comscore/utils/n;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/comscore/streaming/a;->b(Ljava/util/HashMap;)V

    const-string/jumbo v2, "ns_st_po"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ns_st_po"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->BUFFER:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v2, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/comscore/streaming/a;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/comscore/streaming/a;->f:Lcom/comscore/streaming/StreamSenseState;

    invoke-direct {p0, v2}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/comscore/streaming/a;->f:Lcom/comscore/streaming/StreamSenseState;

    sget-object v3, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/comscore/streaming/a;->l:Lcom/comscore/streaming/k;

    if-eqz v2, :cond_4

    :cond_3
    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;J)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/comscore/streaming/a;->a(Ljava/util/HashMap;Z)V

    iget v0, p0, Lcom/comscore/streaming/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/a;->g:I

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/comscore/streaming/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/comscore/streaming/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/a;->a(Ljava/util/HashMap;Z)V

    return-void
.end method

.method protected a(Ljava/util/HashMap;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dispatch("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/comscore/streaming/a;->d(Ljava/util/HashMap;)V

    :cond_2
    invoke-direct {p0}, Lcom/comscore/streaming/a;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v1

    new-instance v2, Lcom/comscore/streaming/j;

    invoke-direct {v2, p0, p1, v0}, Lcom/comscore/streaming/j;-><init>(Lcom/comscore/streaming/a;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/streaming/a;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Firing keep alive"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->KEEP_ALIVE:Lcom/comscore/streaming/StreamSenseEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/a;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/a;->a(Ljava/util/HashMap;)V

    iget v0, p0, Lcom/comscore/streaming/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/a;->g:I

    goto :goto_0
.end method

.method public c()Lcom/comscore/streaming/StreamSenseState;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/a;->f:Lcom/comscore/streaming/StreamSenseState;

    return-object v0
.end method

.method public d()Ljava/util/HashMap;
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

    iget-object v0, p0, Lcom/comscore/streaming/a;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/streaming/a;->j:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/streaming/a;->q:Z

    return v0
.end method

.method public g()Lcom/comscore/streaming/b;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/a;->h:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->b()Lcom/comscore/streaming/b;

    move-result-object v0

    return-object v0
.end method
