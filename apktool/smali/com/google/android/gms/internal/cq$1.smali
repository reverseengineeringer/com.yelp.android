.class Lcom/google/android/gms/internal/cq$1;
.super Lcom/google/android/gms/ads/internal/client/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cq;->a(Lcom/google/android/gms/ads/internal/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cq$1;->a:Lcom/google/android/gms/internal/cq;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/y$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cq$1;->a:Lcom/google/android/gms/internal/cq;

    invoke-static {v0}, Lcom/google/android/gms/internal/cq;->a(Lcom/google/android/gms/internal/cq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cq$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cq$1$1;-><init>(Lcom/google/android/gms/internal/cq$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cq$1;->a:Lcom/google/android/gms/internal/cq;

    invoke-static {v0}, Lcom/google/android/gms/internal/cq;->a(Lcom/google/android/gms/internal/cq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cq$1$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/cq$1$2;-><init>(Lcom/google/android/gms/internal/cq$1;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "Pooled interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cq$1;->a:Lcom/google/android/gms/internal/cq;

    invoke-static {v0}, Lcom/google/android/gms/internal/cq;->a(Lcom/google/android/gms/internal/cq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cq$1$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cq$1$3;-><init>(Lcom/google/android/gms/internal/cq$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cq$1;->a:Lcom/google/android/gms/internal/cq;

    invoke-static {v0}, Lcom/google/android/gms/internal/cq;->a(Lcom/google/android/gms/internal/cq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cq$1$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cq$1$4;-><init>(Lcom/google/android/gms/internal/cq$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cq$1;->a:Lcom/google/android/gms/internal/cq;

    invoke-static {v0}, Lcom/google/android/gms/internal/cq;->a(Lcom/google/android/gms/internal/cq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cq$1$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cq$1$5;-><init>(Lcom/google/android/gms/internal/cq$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
