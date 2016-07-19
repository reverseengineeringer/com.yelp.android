.class Lcom/yelp/android/services/backgroundlocation/c$1;
.super Ljava/lang/Object;
.source "GeofenceHandler.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/services/backgroundlocation/c;->a(DDDI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/GeofencingRequest;

.field final synthetic b:Landroid/app/PendingIntent;

.field final synthetic c:Lcom/yelp/android/services/backgroundlocation/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/backgroundlocation/c;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yelp/android/services/backgroundlocation/c$1;->c:Lcom/yelp/android/services/backgroundlocation/c;

    iput-object p2, p0, Lcom/yelp/android/services/backgroundlocation/c$1;->a:Lcom/google/android/gms/location/GeofencingRequest;

    iput-object p3, p0, Lcom/yelp/android/services/backgroundlocation/c$1;->b:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c$1;->c:Lcom/yelp/android/services/backgroundlocation/c;

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/c$1;->a:Lcom/google/android/gms/location/GeofencingRequest;

    iget-object v2, p0, Lcom/yelp/android/services/backgroundlocation/c$1;->b:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/services/backgroundlocation/c;->a(Lcom/yelp/android/services/backgroundlocation/c;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V

    .line 76
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 80
    const-string/jumbo v0, "BackgroundLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection suspended to Google Api while adding geofence with errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 84
    return-void
.end method
