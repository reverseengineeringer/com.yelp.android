.class public final Lcom/google/android/gms/maps/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/yelp/android/bj/j;


# direct methods
.method constructor <init>(Lcom/yelp/android/bj/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/i;->a:Lcom/yelp/android/bj/j;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/yelp/android/bj/j;

    invoke-interface {v0, p1}, Lcom/yelp/android/bj/j;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/yelp/android/bj/j;

    invoke-interface {v0, p1}, Lcom/yelp/android/bj/j;->h(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
