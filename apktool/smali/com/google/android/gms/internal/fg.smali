.class public Lcom/google/android/gms/internal/fg;
.super Lcom/google/android/gms/internal/jl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ey;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/jl",
        "<",
        "Lcom/google/android/gms/internal/fl;",
        ">;"
    }
.end annotation


# instance fields
.field final qg:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/jl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput p4, p0, Lcom/google/android/gms/internal/fg;->qg:I

    return-void
.end method


# virtual methods
.method protected B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fl;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/fl$a;->C(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/jl$e;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/fg;->qg:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/jt;->g(Lcom/google/android/gms/internal/js;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected bK()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected bL()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public cL()Lcom/google/android/gms/internal/fl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/jl;->hw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fl;

    return-object v0
.end method

.method protected synthetic l(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fg;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    return-object v0
.end method
