.class public Lcom/kahuna/sdk/location/a;
.super Ljava/lang/Object;
.source "KahunaActivityDetectionRemover.java"

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

.field private b:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private c:Landroid/app/PendingIntent;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/kahuna/sdk/location/a;->a:Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 70
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/kahuna/sdk/location/a;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 94
    return-void
.end method

.method private b()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kahuna/sdk/location/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/kahuna/sdk/location/a;->a:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/kahuna/sdk/location/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/kahuna/sdk/location/a;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 123
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 155
    sget-object v0, Lcom/google/android/gms/location/a;->b:Lcom/google/android/gms/location/b;

    iget-object v1, p0, Lcom/kahuna/sdk/location/a;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/kahuna/sdk/location/a;->c:Landroid/app/PendingIntent;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kahuna/sdk/location/a;->c:Landroid/app/PendingIntent;

    .line 81
    iget-object v0, p0, Lcom/kahuna/sdk/location/a;->c:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/a;->a()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to remove Activity Recognition Updates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "caught exception processing remove activity result: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Activity Recognition Remover Play Services Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "caught exception attempting to remove activity updates: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity Recognition Remover Play Services connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/location/a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
