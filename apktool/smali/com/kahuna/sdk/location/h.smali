.class Lcom/kahuna/sdk/location/h;
.super Ljava/util/TimerTask;
.source "KahunaGeofenceRequester.java"


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/location/f;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/location/f;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/kahuna/sdk/location/h;->a:Lcom/kahuna/sdk/location/f;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 285
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/kahuna/sdk/location/h;->a:Lcom/kahuna/sdk/location/f;

    invoke-static {v1}, Lcom/kahuna/sdk/location/f;->a(Lcom/kahuna/sdk/location/f;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/location/h;->a:Lcom/kahuna/sdk/location/f;

    invoke-static {v2}, Lcom/kahuna/sdk/location/f;->b(Lcom/kahuna/sdk/location/f;)Lcom/google/android/gms/location/LocationListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 286
    const-wide/16 v2, 0x1388

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "Finished requesting for gps updates for geofences."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/h;->a:Lcom/kahuna/sdk/location/f;

    invoke-static {v0}, Lcom/kahuna/sdk/location/f;->c(Lcom/kahuna/sdk/location/f;)V

    .line 295
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method
