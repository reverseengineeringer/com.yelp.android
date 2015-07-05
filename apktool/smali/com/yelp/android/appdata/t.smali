.class Lcom/yelp/android/appdata/t;
.super Ljava/lang/Object;
.source "GooglePlayLocationService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/s;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/s;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yelp/android/appdata/t;->a:Lcom/yelp/android/appdata/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/appdata/t;->a:Lcom/yelp/android/appdata/s;

    invoke-static {v0}, Lcom/yelp/android/appdata/s;->a(Lcom/yelp/android/appdata/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 48
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/yelp/android/appdata/t;->a:Lcom/yelp/android/appdata/s;

    iget-object v2, v2, Lcom/yelp/android/appdata/s;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/yelp/android/appdata/t;->a:Lcom/yelp/android/appdata/s;

    iget-object v3, v3, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v4, p0, Lcom/yelp/android/appdata/t;->a:Lcom/yelp/android/appdata/s;

    invoke-static {v4}, Lcom/yelp/android/appdata/s;->b(Lcom/yelp/android/appdata/s;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/t;->a:Lcom/yelp/android/appdata/s;

    invoke-static {v0}, Lcom/yelp/android/appdata/s;->a(Lcom/yelp/android/appdata/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
