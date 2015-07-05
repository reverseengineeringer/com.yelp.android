.class public Lcom/yelp/android/al/c;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/comscore/analytics/a;

.field protected b:Ljava/util/concurrent/atomic/AtomicLong;

.field protected c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected d:Ljava/util/concurrent/atomic/AtomicLong;

.field protected e:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected f:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected g:Ljava/lang/Object;

.field private h:Lcom/comscore/applications/a;


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/al/c;->h:Lcom/comscore/applications/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/al/c;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/al/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/yelp/android/al/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/yelp/android/al/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/al/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/al/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    return-void
.end method

.method private a(Lcom/comscore/applications/a;)V
    .locals 3

    iget-object v1, p0, Lcom/yelp/android/al/c;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/al/c;->h:Lcom/comscore/applications/a;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/yelp/android/al/c;->h:Lcom/comscore/applications/a;

    iget-object v0, p0, Lcom/yelp/android/al/c;->h:Lcom/comscore/applications/a;

    invoke-virtual {v0}, Lcom/comscore/applications/a;->b()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/al/c;->h:Lcom/comscore/applications/a;

    invoke-virtual {p1}, Lcom/comscore/applications/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/comscore/applications/a;->a(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/yelp/android/al/c;Lcom/yelp/android/al/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yelp/android/al/c;->d(Lcom/yelp/android/al/b;)V

    return-void
.end method

.method private b()Z
    .locals 9

    const/16 v8, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v1

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/yelp/android/al/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/yelp/android/al/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Lcom/yelp/android/al/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v4, p0, Lcom/yelp/android/al/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Lcom/yelp/android/al/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string/jumbo v2, "q_dcc"

    iget-object v3, p0, Lcom/yelp/android/al/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "q_dcf"

    iget-object v3, p0, Lcom/yelp/android/al/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/al/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/yelp/android/al/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x1770

    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/yelp/android/al/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/yelp/android/al/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const-string/jumbo v0, "q_dcc"

    iget-object v2, p0, Lcom/yelp/android/al/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    iget-object v4, p0, Lcom/yelp/android/al/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/yelp/android/al/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Lcom/yelp/android/al/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_3
    iget-object v4, p0, Lcom/yelp/android/al/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/yelp/android/al/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Lcom/yelp/android/al/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string/jumbo v2, "q_dcc"

    iget-object v3, p0, Lcom/yelp/android/al/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "q_dcf"

    iget-object v3, p0, Lcom/yelp/android/al/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private d(Lcom/yelp/android/al/b;)V
    .locals 2

    iget-object v0, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendMeasurmement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->ag()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yelp/android/al/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yelp/android/al/c;->c(Lcom/yelp/android/al/b;)V

    instance-of v0, p1, Lcom/comscore/applications/a;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yelp/android/al/c;->b(Lcom/yelp/android/al/b;)V

    invoke-virtual {p0, p1}, Lcom/yelp/android/al/c;->a(Lcom/yelp/android/al/b;)V

    new-instance v0, Lcom/comscore/metrics/a;

    iget-object v1, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-direct {v0, v1, p1}, Lcom/comscore/metrics/a;-><init>(Lcom/comscore/analytics/a;Lcom/yelp/android/al/b;)V

    invoke-virtual {v0}, Lcom/comscore/metrics/a;->b()Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v0

    const-string/jumbo v1, "q_dcc"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "q_dcf"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "q_dcc"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "q_dcf"

    invoke-virtual {v0, v2}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/al/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/yelp/android/al/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/comscore/utils/f;->a:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Unexpected error parsing storage data: "

    invoke-static {p0, v1}, Lcom/comscore/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method protected a(Lcom/yelp/android/al/b;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/yelp/android/al/a;

    const-string/jumbo v1, "c12"

    iget-object v2, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v2}, Lcom/comscore/analytics/a;->S()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/al/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/al/b;->b(Lcom/yelp/android/al/a;)V

    iget-object v0, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->R()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yelp/android/al/a;

    const-string/jumbo v1, "ns_ak"

    iget-object v2, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v2}, Lcom/comscore/analytics/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/al/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/al/b;->b(Lcom/yelp/android/al/a;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/al/b;Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->ao()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/al/c;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Data not sent"

    invoke-static {p0, v1}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/al/e;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/al/e;-><init>(Lcom/yelp/android/al/c;Lcom/yelp/android/al/b;)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/al/b;)V
    .locals 4

    iget-object v0, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/al/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lcom/yelp/android/al/a;

    const-string/jumbo v1, "ns_ap_ec"

    iget-object v2, p0, Lcom/yelp/android/al/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/al/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/al/b;->b(Lcom/yelp/android/al/a;)V

    goto :goto_0
.end method

.method public c(Lcom/yelp/android/al/b;)V
    .locals 3

    iget-object v0, p0, Lcom/yelp/android/al/c;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/yelp/android/al/c;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    instance-of v0, p1, Lcom/comscore/applications/a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/comscore/applications/a;

    invoke-direct {p0, p1}, Lcom/yelp/android/al/c;->a(Lcom/comscore/applications/a;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yelp/android/al/c;->h:Lcom/comscore/applications/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/al/c;->h:Lcom/comscore/applications/a;

    invoke-virtual {v0}, Lcom/comscore/applications/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/al/a;

    invoke-virtual {p1, v0}, Lcom/yelp/android/al/b;->b(Lcom/yelp/android/al/a;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/al/c;->h:Lcom/comscore/applications/a;

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
