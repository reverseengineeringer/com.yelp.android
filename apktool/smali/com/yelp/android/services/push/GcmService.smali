.class public Lcom/yelp/android/services/push/GcmService;
.super Landroid/app/IntentService;
.source "GcmService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "GcmService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/services/push/g;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/services/push/g;-><init>(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/services/push/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    new-instance v1, Lcom/yelp/android/services/push/Notifier;

    invoke-direct {v1, p0}, Lcom/yelp/android/services/push/Notifier;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1, v0}, Lcom/yelp/android/services/push/Notifier;->a(Lcom/yelp/android/services/push/g;)V

    .line 41
    :goto_0
    invoke-static {p1}, Lcom/yelp/android/services/push/GcmReceiver;->a(Landroid/content/Intent;)Z

    .line 42
    return-void

    .line 33
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    const-string/jumbo v2, "device_id"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v2, "notification_device_id"

    invoke-virtual {v0}, Lcom/yelp/android/services/push/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationWrongDeviceId:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 37
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ar;

    invoke-virtual {v0}, Lcom/yelp/android/services/push/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/webrequests/ar;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/ar;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method
