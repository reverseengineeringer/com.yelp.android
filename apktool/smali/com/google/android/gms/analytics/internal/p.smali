.class public Lcom/google/android/gms/analytics/internal/p;
.super Lcom/google/android/gms/analytics/internal/r;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/z;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/t;Lcom/google/android/gms/analytics/internal/u;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/r;-><init>(Lcom/google/android/gms/analytics/internal/t;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/u;->j(Lcom/google/android/gms/analytics/internal/t;)Lcom/google/android/gms/analytics/internal/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/p;->a:Lcom/google/android/gms/analytics/internal/z;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/p;)Lcom/google/android/gms/analytics/internal/z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/p;->a:Lcom/google/android/gms/analytics/internal/z;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/analytics/internal/v;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->D()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->m()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/p;->a:Lcom/google/android/gms/analytics/internal/z;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/z;->a(Lcom/google/android/gms/analytics/internal/v;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/p;->a:Lcom/google/android/gms/analytics/internal/z;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/internal/z;->a(Lcom/google/android/gms/analytics/internal/v;)V

    :cond_0
    return-wide v0
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/p;->a:Lcom/google/android/gms/analytics/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/z;->E()V

    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->D()V

    const-string/jumbo v0, "setLocalDispatchPeriod (sec)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/p;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->r()Lcom/google/android/gms/measurement/h;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/p$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/p$1;-><init>(Lcom/google/android/gms/analytics/internal/p;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/ai;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->r()Lcom/google/android/gms/measurement/h;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/p$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/p$6;-><init>(Lcom/google/android/gms/analytics/internal/p;Lcom/google/android/gms/analytics/internal/ai;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/c;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->D()V

    const-string/jumbo v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/p;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->r()Lcom/google/android/gms/measurement/h;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/p$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/p$4;-><init>(Lcom/google/android/gms/analytics/internal/p;Lcom/google/android/gms/analytics/internal/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string/jumbo v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->r()Lcom/google/android/gms/measurement/h;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/p$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/analytics/internal/p$3;-><init>(Lcom/google/android/gms/analytics/internal/p;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string/jumbo v0, "Network connectivity status changed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->r()Lcom/google/android/gms/measurement/h;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/p$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/p$2;-><init>(Lcom/google/android/gms/analytics/internal/p;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/p;->a:Lcom/google/android/gms/analytics/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/z;->b()V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->l()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->r()Lcom/google/android/gms/measurement/h;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/p$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/p$5;-><init>(Lcom/google/android/gms/analytics/internal/p;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/p;->a(Lcom/google/android/gms/analytics/internal/ai;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->r()Lcom/google/android/gms/measurement/h;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/internal/p$7;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/internal/p$7;-><init>(Lcom/google/android/gms/analytics/internal/p;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/h;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/p;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/p;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v2, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/p;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->D()V

    invoke-static {}, Lcom/google/android/gms/measurement/h;->d()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/p;->a:Lcom/google/android/gms/analytics/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/z;->f()V

    return-void
.end method

.method public g()V
    .locals 1

    const-string/jumbo v0, "Radio powered up"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/p;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->d()V

    return-void
.end method

.method h()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->m()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/p;->a:Lcom/google/android/gms/analytics/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/z;->e()V

    return-void
.end method

.method i()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/p;->m()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/p;->a:Lcom/google/android/gms/analytics/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/z;->d()V

    return-void
.end method
