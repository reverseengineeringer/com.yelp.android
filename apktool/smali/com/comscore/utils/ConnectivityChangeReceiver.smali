.class public Lcom/comscore/utils/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:J

.field protected d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;

.field private final f:Lcom/comscore/analytics/a;


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    iput-object v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(J)V
    .locals 3

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/comscore/utils/p;

    invoke-direct {v0, p0}, Lcom/comscore/utils/p;-><init>(Lcom/comscore/utils/ConnectivityChangeReceiver;)V

    iput-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "onConnectedMobile()"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "|||cs_3g|||"

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ac()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ac()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->PIGGYBACK:Lcom/comscore/utils/TransmissionMode;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/comscore/utils/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Z)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->f()V

    :cond_2
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 8

    const-wide/16 v6, 0x7530

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->e()V

    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    :cond_3
    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleFlushTask(): Flushing in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/comscore/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "flushing"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0, p1}, Lcom/comscore/analytics/a;->r(Z)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "onConnectedWifi()"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->N()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ac()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->NEVER:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ac()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->DISABLED:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Z)V

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "onDisconnected()"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    goto :goto_0
.end method

.method protected e()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cancelFlushTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/an/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->u()Lcom/comscore/applications/d;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/comscore/applications/d;->a(J)V

    goto :goto_0
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/comscore/utils/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/comscore/utils/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
