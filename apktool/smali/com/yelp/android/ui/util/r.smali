.class final Lcom/yelp/android/ui/util/r;
.super Landroid/os/AsyncTask;
.source "DFPUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/f;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string/jumbo v1, "DFPAdsRequest"

    const-string/jumbo v2, "Failed to get Advertising ID"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    invoke-static {p1}, Lcom/yelp/android/ui/util/q;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/r;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/r;->a(Ljava/lang/String;)V

    return-void
.end method
