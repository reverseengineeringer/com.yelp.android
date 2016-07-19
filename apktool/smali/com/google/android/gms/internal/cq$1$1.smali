.class Lcom/google/android/gms/internal/cq$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cq$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cq$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cq$1$1;->a:Lcom/google/android/gms/internal/cq$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/ads/internal/client/y;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/ads/internal/client/y;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/y;->a()V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->p()Lcom/google/android/gms/internal/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->a()V

    return-void
.end method
