.class public Lcom/kahuna/sdk/location/b;
.super Ljava/lang/Object;
.source "KahunaActivityDetectionRequester.java"

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

.field private c:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/kahuna/sdk/location/b;->a:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcom/kahuna/sdk/location/b;->b:Landroid/app/PendingIntent;

    .line 65
    iput-object v0, p0, Lcom/kahuna/sdk/location/b;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 67
    return-void
.end method

.method private a(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kahuna/sdk/location/b;->b:Landroid/app/PendingIntent;

    .line 83
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 102
    sget-object v0, Lcom/google/android/gms/location/a;->b:Lcom/google/android/gms/location/b;

    iget-object v1, p0, Lcom/kahuna/sdk/location/b;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {}, Lcom/kahuna/sdk/location/c;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0}, Lcom/kahuna/sdk/location/b;->g()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 105
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/kahuna/sdk/location/b;->e()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 113
    return-void
.end method

.method private e()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kahuna/sdk/location/b;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/kahuna/sdk/location/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/location/b;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/b;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/kahuna/sdk/location/b;->e()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/b;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 143
    return-void
.end method

.method private g()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/kahuna/sdk/location/b;->a()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/kahuna/sdk/location/b;->b:Landroid/app/PendingIntent;

    .line 198
    :goto_0
    return-object v0

    .line 187
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kahuna/sdk/location/b;->a:Landroid/content/Context;

    const-class v2, Lcom/kahuna/sdk/KahunaCoreReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    iget-object v1, p0, Lcom/kahuna/sdk/location/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 197
    invoke-direct {p0, v0}, Lcom/kahuna/sdk/location/b;->a(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kahuna/sdk/location/b;->b:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 221
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to request Activity Recognition Updates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/b;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "caught exception processing request activity result: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/kahuna/sdk/location/b;->d()V

    .line 91
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 153
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Activity Recognition Requester Play Services Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "caught exception attempting to request for activity updates: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 209
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity Recognition Requester Play Services connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/location/b;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
