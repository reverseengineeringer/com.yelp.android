.class Lcom/google/android/gms/internal/cr$a;
.super Lcom/google/android/gms/ads/internal/client/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/android/gms/ads/internal/client/y;

.field final synthetic b:Lcom/google/android/gms/internal/cr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/ads/internal/client/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cr$a;->b:Lcom/google/android/gms/internal/cr;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/y$a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/cr$a;->a:Lcom/google/android/gms/ads/internal/client/y;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$a;->a:Lcom/google/android/gms/ads/internal/client/y;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/y;->a()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->p()Lcom/google/android/gms/internal/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$a;->a:Lcom/google/android/gms/ads/internal/client/y;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/y;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$a;->a:Lcom/google/android/gms/ads/internal/client/y;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/y;->b()V

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$a;->a:Lcom/google/android/gms/ads/internal/client/y;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/y;->c()V

    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$a;->a:Lcom/google/android/gms/ads/internal/client/y;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/y;->d()V

    return-void
.end method
