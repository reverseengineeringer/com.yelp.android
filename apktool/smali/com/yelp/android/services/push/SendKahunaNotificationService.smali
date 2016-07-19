.class public Lcom/yelp/android/services/push/SendKahunaNotificationService;
.super Landroid/app/IntentService;
.source "SendKahunaNotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "SendKahunaNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "launch_intent"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/services/push/Notifier$NotificationType;->Unknown:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    const-class v4, Lcom/yelp/android/ui/KahunaNotificationCatcherActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const-string/jumbo v2, "launch_intent"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v6, Lcom/yelp/android/services/push/Notifier$NotificationType;->Unknown:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-virtual {v0, v4, v6}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    :goto_0
    if-nez p3, :cond_1

    .line 101
    new-instance v2, Landroid/support/v4/app/x$c;

    invoke-direct {v2}, Landroid/support/v4/app/x$c;-><init>()V

    invoke-virtual {v2, p1}, Landroid/support/v4/app/x$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$c;

    move-result-object v4

    .line 106
    :goto_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 108
    const/16 v6, 0x18

    move-object v1, p1

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/x$p;Ljava/util/List;ILandroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 119
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/AppData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string/jumbo v2, "kahuna"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {p1, v3}, Lcom/yelp/android/services/g;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 124
    return-void

    .line 93
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    const-class v4, Lcom/yelp/android/ui/activities/RootActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v2, Landroid/support/v4/app/x$b;

    invoke-direct {v2}, Landroid/support/v4/app/x$b;-><init>()V

    invoke-virtual {v2, p1}, Landroid/support/v4/app/x$b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$b;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/support/v4/app/x$b;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/x$b;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "payload_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string/jumbo v2, "image_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 57
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 60
    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/services/push/SendKahunaNotificationService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-static {p1}, Lcom/yelp/android/services/push/KahunaPushNotificationReceiver;->a(Landroid/content/Intent;)Z

    .line 72
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhotoLikePushNotificationHandler Bitmap error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 68
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/services/push/SendKahunaNotificationService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
