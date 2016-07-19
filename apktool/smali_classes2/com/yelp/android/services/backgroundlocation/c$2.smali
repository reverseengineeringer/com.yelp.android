.class Lcom/yelp/android/services/backgroundlocation/c$2;
.super Ljava/lang/Object;
.source "GeofenceHandler.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/services/backgroundlocation/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/services/backgroundlocation/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/backgroundlocation/c;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yelp/android/services/backgroundlocation/c$2;->a:Lcom/yelp/android/services/backgroundlocation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/gms/location/l;->c:Lcom/google/android/gms/location/g;

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/c$2;->a:Lcom/yelp/android/services/backgroundlocation/c;

    invoke-static {v1}, Lcom/yelp/android/services/backgroundlocation/c;->b(Lcom/yelp/android/services/backgroundlocation/c;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "yelp_android_geofence"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/c$2;->a:Lcom/yelp/android/services/backgroundlocation/c;

    invoke-static {v1}, Lcom/yelp/android/services/backgroundlocation/c;->a(Lcom/yelp/android/services/backgroundlocation/c;)Lcom/google/android/gms/common/api/ResultCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 109
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 113
    const-string/jumbo v0, "BackgroundLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection suspended to Google Api while removing geofence with errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 117
    return-void
.end method
