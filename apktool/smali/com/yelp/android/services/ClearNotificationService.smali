.class public Lcom/yelp/android/services/ClearNotificationService;
.super Landroid/app/IntentService;
.source "ClearNotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "ClearNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)V
    .locals 1

    .prologue
    .line 92
    const-string/jumbo v0, "action.REPLY_BUTTON_CLEAR_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Messages:Lcom/yelp/android/services/push/Notifier$NotificationType;

    if-ne p3, v0, :cond_1

    .line 94
    sget-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri;->PushNotificationMessageReply:Lcom/yelp/android/analytics/iris/PushNotificationIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Checkin:Lcom/yelp/android/services/push/Notifier$NotificationType;

    if-ne p3, v0, :cond_0

    .line 96
    const-string/jumbo v0, "action.LIKE_BUTTON_CLEAR_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->LIKE:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    invoke-virtual {v0, p2}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->getButtonIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    goto :goto_0

    .line 98
    :cond_2
    const-string/jumbo v0, "action.COMMENT_BUTTON_CLEAR_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->COMMENT:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    invoke-virtual {v0, p2}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->getButtonIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 40
    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string/jumbo v0, "extra_notification_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 45
    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v1, "extra_notification_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 49
    const-string/jumbo v1, "extra_notification_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string/jumbo v1, "extra_notification_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    const/4 v1, 0x0

    .line 52
    if-eqz v3, :cond_2

    .line 53
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 55
    :cond_2
    if-eqz v2, :cond_8

    .line 56
    const-string/jumbo v3, "action.DELETED_CLEAR_NOTIFICATIONS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->getDeleteIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 61
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/Integer;)V

    goto :goto_0

    .line 62
    :cond_4
    const-string/jumbo v3, "action.CLICKED_CLEAR_NOTIFICATIONS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 64
    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/Notifier$NotificationType;->getOpenIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_5

    .line 66
    invoke-static {v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 68
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/ClearNotificationService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_6
    const-string/jumbo v3, "action.LIKE_BUTTON_CLEAR_NOTIFICATIONS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "action.COMMENT_BUTTON_CLEAR_NOTIFICATIONS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "action.REPLY_BUTTON_CLEAR_NOTIFICATIONS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    :cond_7
    invoke-direct {p0, v4, v1, v0}, Lcom/yelp/android/services/ClearNotificationService;->a(Ljava/lang/String;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)V

    .line 75
    invoke-static {p0, p1, v0, v1, v2}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/ClearNotificationService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 86
    :cond_8
    invoke-static {p0, v0}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)V

    goto/16 :goto_0
.end method
