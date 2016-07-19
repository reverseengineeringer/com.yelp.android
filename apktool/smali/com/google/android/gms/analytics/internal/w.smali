.class public Lcom/google/android/gms/analytics/internal/w;
.super Lcom/google/android/gms/analytics/internal/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/w$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/w$a;

.field private b:Lcom/google/android/gms/analytics/internal/d;

.field private final c:Lcom/google/android/gms/analytics/internal/af;

.field private d:Lcom/google/android/gms/analytics/internal/k;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/t;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/r;-><init>(Lcom/google/android/gms/analytics/internal/t;)V

    new-instance v0, Lcom/google/android/gms/analytics/internal/k;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/t;->d()Lcom/google/android/gms/internal/jt;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/k;-><init>(Lcom/google/android/gms/internal/jt;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->d:Lcom/google/android/gms/analytics/internal/k;

    new-instance v0, Lcom/google/android/gms/analytics/internal/w$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/w$a;-><init>(Lcom/google/android/gms/analytics/internal/w;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->a:Lcom/google/android/gms/analytics/internal/w$a;

    new-instance v0, Lcom/google/android/gms/analytics/internal/w$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/w$1;-><init>(Lcom/google/android/gms/analytics/internal/w;Lcom/google/android/gms/analytics/internal/t;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->c:Lcom/google/android/gms/analytics/internal/af;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/w;)Lcom/google/android/gms/analytics/internal/w$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->a:Lcom/google/android/gms/analytics/internal/w$a;

    return-object v0
.end method

.method private a(Landroid/content/ComponentName;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->m()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    const-string/jumbo v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/w;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/w;->h()V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/gms/analytics/internal/d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->m()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/w;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->t()Lcom/google/android/gms/analytics/internal/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/p;->h()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/w;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/w;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/w;Lcom/google/android/gms/analytics/internal/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/w;->a(Lcom/google/android/gms/analytics/internal/d;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/internal/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/w;->g()V

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->d:Lcom/google/android/gms/analytics/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/k;->a()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->c:Lcom/google/android/gms/analytics/internal/af;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->q()Lcom/google/android/gms/analytics/internal/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ad;->v()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/af;->a(J)V

    return-void
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/w;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->e()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->t()Lcom/google/android/gms/analytics/internal/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/p;->f()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/c;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/c;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->q()Lcom/google/android/gms/analytics/internal/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ad;->o()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/c;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/c;->d()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/d;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/w;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->q()Lcom/google/android/gms/analytics/internal/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ad;->p()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/w;->b(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->D()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/analytics/internal/d;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/w;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/w;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->D()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/w;->a:Lcom/google/android/gms/analytics/internal/w$a;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/w$a;->a()Lcom/google/android/gms/analytics/internal/d;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/w;->f()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->D()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrP()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/w;->o()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/w;->a:Lcom/google/android/gms/analytics/internal/w$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/d;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/w;->h()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
