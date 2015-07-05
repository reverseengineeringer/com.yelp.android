.class public Lcom/kahuna/sdk/location/e;
.super Ljava/lang/Object;
.source "KahunaGeofenceRemover.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/kahuna/sdk/location/e;->a:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/kahuna/sdk/location/e;->b:Ljava/util/List;

    .line 48
    iput-object v0, p0, Lcom/kahuna/sdk/location/e;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/e;->d:Z

    .line 50
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/e;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kahuna/sdk/location/e;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/kahuna/sdk/location/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/location/e;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/e;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/kahuna/sdk/location/e;->d:Z

    .line 139
    invoke-direct {p0}, Lcom/kahuna/sdk/location/e;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 142
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "Location Services client disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/e;->c:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string/jumbo v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Geofences removed successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/location/e;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/e;->c()V

    .line 214
    return-void

    .line 207
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string/jumbo v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failure removing Geofences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/location/e;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 87
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "No valid geofences, ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-boolean v0, p0, Lcom/kahuna/sdk/location/e;->d:Z

    if-nez v0, :cond_1

    .line 95
    iput-object p1, p0, Lcom/kahuna/sdk/location/e;->b:Ljava/util/List;

    .line 96
    invoke-direct {p0}, Lcom/kahuna/sdk/location/e;->a()V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "Location Services client connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    iget-object v1, p0, Lcom/kahuna/sdk/location/e;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/kahuna/sdk/location/e;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/GeofencingApi;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 169
    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    const-string/jumbo v1, "KahunaEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception in Geofence Remover onConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/e;->d:Z

    .line 190
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "Removal: Received connection failed event while attempt geofencing connection."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string/jumbo v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/e;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 197
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/location/e;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
