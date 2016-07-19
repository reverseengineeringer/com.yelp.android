.class public final Lcom/google/android/gms/maps/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/c$g;,
        Lcom/google/android/gms/maps/c$f;,
        Lcom/google/android/gms/maps/c$b;,
        Lcom/google/android/gms/maps/c$a;,
        Lcom/google/android/gms/maps/c$d;,
        Lcom/google/android/gms/maps/c$c;,
        Lcom/google/android/gms/maps/c$e;
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/bj/b;

.field private b:Lcom/google/android/gms/maps/i;


# direct methods
.method protected constructor <init>(Lcom/yelp/android/bj/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/bj/b;

    iput-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-interface {v0}, Lcom/yelp/android/bj/b;->a()Lcom/google/android/gms/maps/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/c;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-interface {v0, p1}, Lcom/yelp/android/bj/b;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/yelp/android/bk/f;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/c;-><init>(Lcom/yelp/android/bk/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-interface {v0, p1}, Lcom/yelp/android/bj/b;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/a;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/dynamic/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->b(Lcom/google/android/gms/dynamic/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/a;Lcom/google/android/gms/maps/c$a;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/dynamic/c;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/yelp/android/bj/b;->a(Lcom/google/android/gms/dynamic/c;Lcom/yelp/android/bj/r;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/c$g;

    invoke-direct {v0, p2}, Lcom/google/android/gms/maps/c$g;-><init>(Lcom/google/android/gms/maps/c$a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/c$b;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/t;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    new-instance v1, Lcom/google/android/gms/maps/c$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$4;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$b;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/t;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/c$c;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/u;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    new-instance v1, Lcom/google/android/gms/maps/c$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$1;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$c;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/u;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/c$d;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/x;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    new-instance v1, Lcom/google/android/gms/maps/c$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$3;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$d;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/x;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/c$e;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/ab;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    new-instance v1, Lcom/google/android/gms/maps/c$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$2;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$e;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/ab;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lcom/google/android/gms/maps/c$f;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/ac;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    new-instance v1, Lcom/google/android/gms/maps/c$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$5;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$f;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/bj/b;->a(Lcom/yelp/android/bj/ac;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-interface {v0, p1}, Lcom/yelp/android/bj/b;->b(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-interface {v0}, Lcom/yelp/android/bj/b;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-interface {v0, p1}, Lcom/yelp/android/bj/b;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()Lcom/google/android/gms/maps/i;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/i;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-interface {v1}, Lcom/yelp/android/bj/b;->k()Lcom/yelp/android/bj/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/i;-><init>(Lcom/yelp/android/bj/j;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/i;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/i;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()Lcom/google/android/gms/maps/g;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/g;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/yelp/android/bj/b;

    invoke-interface {v1}, Lcom/yelp/android/bj/b;->l()Lcom/yelp/android/bj/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/g;-><init>(Lcom/yelp/android/bj/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
