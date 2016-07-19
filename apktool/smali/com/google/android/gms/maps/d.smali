.class public final Lcom/google/android/gms/maps/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/maps/d;->a:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    const-class v1, Lcom/google/android/gms/maps/d;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "Context is null"

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/google/android/gms/maps/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/yelp/android/bj/q;->a(Landroid/content/Context;)Lcom/yelp/android/bj/s;
    :try_end_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-static {v2}, Lcom/google/android/gms/maps/d;->a(Lcom/yelp/android/bj/s;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/gms/maps/d;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static a(Lcom/yelp/android/bj/s;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lcom/yelp/android/bj/s;->a()Lcom/yelp/android/bj/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/b;->a(Lcom/yelp/android/bj/a;)V

    invoke-interface {p0}, Lcom/yelp/android/bj/s;->b()Lcom/yelp/android/bk/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Lcom/yelp/android/bk/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
