.class Lcom/yelp/android/appdata/h$1;
.super Ljava/lang/Object;
.source "GooglePlayLocationService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/h;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yelp/android/appdata/h$1;->a:Lcom/yelp/android/appdata/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/appdata/h$1;->a:Lcom/yelp/android/appdata/h;

    invoke-static {v0}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/h;)Ljava/util/List;

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

    .line 54
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/yelp/android/appdata/h$1;->a:Lcom/yelp/android/appdata/h;

    iget-object v2, v2, Lcom/yelp/android/appdata/h;->b:Lcom/google/android/gms/location/e;

    iget-object v3, p0, Lcom/yelp/android/appdata/h$1;->a:Lcom/yelp/android/appdata/h;

    iget-object v3, v3, Lcom/yelp/android/appdata/h;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v4, p0, Lcom/yelp/android/appdata/h$1;->a:Lcom/yelp/android/appdata/h;

    invoke-static {v4}, Lcom/yelp/android/appdata/h;->b(Lcom/yelp/android/appdata/h;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/j;

    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/j;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/h$1;->a:Lcom/yelp/android/appdata/h;

    invoke-static {v0}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
