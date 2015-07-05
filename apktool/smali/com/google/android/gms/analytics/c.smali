.class Lcom/google/android/gms/analytics/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/b;


# instance fields
.field private mContext:Landroid/content/Context;

.field private xV:Landroid/content/ServiceConnection;

.field private xW:Lcom/google/android/gms/analytics/c$b;

.field private xX:Lcom/google/android/gms/analytics/c$c;

.field private xY:Lcom/google/android/gms/internal/hb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/c$b;Lcom/google/android/gms/analytics/c$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onConnectedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/analytics/c;->xW:Lcom/google/android/gms/analytics/c$b;

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onConnectionFailedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/analytics/c;->xX:Lcom/google/android/gms/analytics/c$c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->xV:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->xY:Lcom/google/android/gms/internal/hb;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->dT()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->xX:Lcom/google/android/gms/analytics/c$c;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->xW:Lcom/google/android/gms/analytics/c$b;

    return-object v0
.end method

.method private dR()Lcom/google/android/gms/internal/hb;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->dS()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->xY:Lcom/google/android/gms/internal/hb;

    return-object v0
.end method

.method private dT()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->dU()V

    return-void
.end method

.method private dU()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->xW:Lcom/google/android/gms/analytics/c$b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/c$b;->onConnected()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ha;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->dR()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendHit failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->T(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connect()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.gms"

    const-string/jumbo v3, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "app_package_name"

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->xV:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    const-string/jumbo v0, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->T(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/analytics/c$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/c$a;-><init>(Lcom/google/android/gms/analytics/c;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/c;->xV:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->xV:Landroid/content/ServiceConnection;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect: bindService returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->V(Ljava/lang/String;)V

    if-nez v1, :cond_0

    iput-object v4, p0, Lcom/google/android/gms/analytics/c;->xV:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->xX:Lcom/google/android/gms/analytics/c$c;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/analytics/c$c;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public dQ()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->dR()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/hb;->dQ()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear hits failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->T(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dS()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/analytics/c;->xY:Lcom/google/android/gms/internal/hb;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->xV:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->xV:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/analytics/c;->xV:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->xW:Lcom/google/android/gms/analytics/c$b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/c$b;->onDisconnected()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->xY:Lcom/google/android/gms/internal/hb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
