.class public Lcom/google/android/gms/playlog/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private final a:Lcom/google/android/gms/internal/lc$a;

.field private b:Lcom/google/android/gms/playlog/internal/f;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/lc$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/d;->a:Lcom/google/android/gms/internal/lc$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->b:Lcom/google/android/gms/playlog/internal/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/d;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/playlog/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/d;->b:Lcom/google/android/gms/playlog/internal/f;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/d;->c:Z

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->b:Lcom/google/android/gms/playlog/internal/f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/f;->a(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->a:Lcom/google/android/gms/internal/lc$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->a:Lcom/google/android/gms/internal/lc$a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/lc$a;->b()V

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/playlog/internal/d;->c:Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->b:Lcom/google/android/gms/playlog/internal/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/f;->a(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->a:Lcom/google/android/gms/internal/lc$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->a:Lcom/google/android/gms/internal/lc$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/lc$a;->a(Landroid/app/PendingIntent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/d;->c:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->a:Lcom/google/android/gms/internal/lc$a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/lc$a;->c()V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->b:Lcom/google/android/gms/playlog/internal/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/f;->a(Z)V

    return-void
.end method
