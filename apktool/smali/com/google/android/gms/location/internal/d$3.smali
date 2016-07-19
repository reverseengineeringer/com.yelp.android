.class Lcom/google/android/gms/location/internal/d$3;
.super Lcom/google/android/gms/location/internal/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/d;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/j;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/j;

.field final synthetic b:Lcom/google/android/gms/location/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/d;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/d$3;->b:Lcom/google/android/gms/location/internal/d;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/d$3;->a:Lcom/google/android/gms/location/j;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/d$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/internal/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/internal/d$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/d$b;-><init>(Lcom/google/android/gms/common/api/internal/zza$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/d$3;->a:Lcom/google/android/gms/location/j;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/location/internal/l;->a(Lcom/google/android/gms/location/j;Lcom/google/android/gms/location/internal/g;)V

    return-void
.end method

.method protected synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/location/internal/l;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/d$3;->a(Lcom/google/android/gms/location/internal/l;)V

    return-void
.end method
