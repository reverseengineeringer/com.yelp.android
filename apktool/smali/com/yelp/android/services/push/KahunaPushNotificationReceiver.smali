.class public Lcom/yelp/android/services/push/KahunaPushNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KahunaPushNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 30
    const-string/jumbo v0, "com.kahuna.sdk.push.received"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "alert"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-string/jumbo v0, "landing_extras_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 34
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    sget-object v6, Lcom/yelp/android/services/push/Notifier$NotificationType;->Unknown:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-direct {v0, v5, v6, v4, v4}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 41
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v5, Lcom/yelp/android/services/push/Notifier$NotificationType;->Unknown:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-virtual {v0, v2, v5}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)Landroid/content/Intent;

    move-result-object v2

    .line 49
    :goto_0
    invoke-static {p1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 50
    const/16 v6, 0x18

    move-object v2, v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;ILandroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 55
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string/jumbo v2, "kahuna"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 59
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/yelp/android/ui/activities/RootActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const/high16 v5, 0x10000000

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method
