.class public Lcom/kahuna/sdk/location/f;
.super Ljava/lang/Object;
.source "KahunaGeofenceRequester.java"

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

.field private b:Landroid/app/PendingIntent;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private e:Lcom/google/android/gms/location/j;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/kahuna/sdk/location/f$1;

    invoke-direct {v0, p0}, Lcom/kahuna/sdk/location/f$1;-><init>(Lcom/kahuna/sdk/location/f;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/f;->e:Lcom/google/android/gms/location/j;

    .line 51
    iput-object p1, p0, Lcom/kahuna/sdk/location/f;->a:Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/f;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/f;->f:Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/location/f;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kahuna/sdk/location/f;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/f;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kahuna/sdk/location/f;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/kahuna/sdk/location/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/l;->a:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/location/f;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/f;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic b(Lcom/kahuna/sdk/location/f;)Lcom/google/android/gms/location/j;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kahuna/sdk/location/f;->e:Lcom/google/android/gms/location/j;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/kahuna/sdk/location/f;->e()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/location/f;->b:Landroid/app/PendingIntent;

    .line 155
    sget-object v0, Lcom/google/android/gms/location/l;->c:Lcom/google/android/gms/location/g;

    iget-object v1, p0, Lcom/kahuna/sdk/location/f;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/kahuna/sdk/location/f;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/kahuna/sdk/location/f;->b:Landroid/app/PendingIntent;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 157
    return-void
.end method

.method static synthetic c(Lcom/kahuna/sdk/location/f;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kahuna/sdk/location/f;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/kahuna/sdk/location/f;->f:Z

    .line 167
    invoke-direct {p0}, Lcom/kahuna/sdk/location/f;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 170
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Location Services client disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/f;->d:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/kahuna/sdk/location/f;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/kahuna/sdk/location/f;->b:Landroid/app/PendingIntent;

    .line 228
    :goto_0
    return-object v0

    .line 225
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kahuna/sdk/location/f;->a:Landroid/content/Context;

    const-class v2, Lcom/kahuna/sdk/KahunaCoreReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string/jumbo v1, "KAHUNA_GEOFENCES_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lcom/kahuna/sdk/location/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    .line 262
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Geofences added successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/location/f;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 271
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    .line 272
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    .line 273
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->c(J)Lcom/google/android/gms/location/LocationRequest;

    .line 274
    sget-object v1, Lcom/google/android/gms/location/l;->b:Lcom/google/android/gms/location/e;

    iget-object v2, p0, Lcom/kahuna/sdk/location/f;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, p0, Lcom/kahuna/sdk/location/f;->e:Lcom/google/android/gms/location/j;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/j;)Lcom/google/android/gms/common/api/PendingResult;

    .line 275
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Requesting gps updates for 30 seconds for new geofences just updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 280
    new-instance v1, Lcom/kahuna/sdk/location/f$2;

    invoke-direct {v1, p0}, Lcom/kahuna/sdk/location/f$2;-><init>(Lcom/kahuna/sdk/location/f;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 311
    :goto_0
    return-void

    .line 299
    :cond_2
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failure adding Geofences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/location/f;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_3
    invoke-direct {p0}, Lcom/kahuna/sdk/location/f;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    invoke-direct {p0}, Lcom/kahuna/sdk/location/f;->d()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kahuna/sdk/location/f;->c:Ljava/util/List;

    .line 100
    iget-boolean v0, p0, Lcom/kahuna/sdk/location/f;->f:Z

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/f;->f:Z

    .line 106
    invoke-direct {p0}, Lcom/kahuna/sdk/location/f;->a()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Error attempting to register geofences while previous registration in progess"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 190
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Location Services client connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/f;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    const-string/jumbo v1, "Kahuna"

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
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/f;->f:Z

    .line 243
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Adding: Received connection failed event while attempt geofencing connection."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string/jumbo v0, "Kahuna"

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

    .line 249
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/f;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 250
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/location/f;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
