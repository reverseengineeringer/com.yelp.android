.class Lcom/google/android/gms/internal/jk$1;
.super Lcom/google/android/gms/internal/jl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jk;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jk;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jk$1;->a:Lcom/google/android/gms/internal/jk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/jl$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/jm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jm;->zzqJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jo;

    new-instance v1, Lcom/google/android/gms/internal/jk$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/jk$a;-><init>(Lcom/google/android/gms/common/api/internal/zza$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jo;->a(Lcom/google/android/gms/internal/jn;)V

    return-void
.end method

.method protected synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/jm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jk$1;->a(Lcom/google/android/gms/internal/jm;)V

    return-void
.end method
