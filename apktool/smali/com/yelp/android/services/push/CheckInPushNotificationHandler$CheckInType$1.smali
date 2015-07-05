.class final enum Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType$1;
.super Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
.source "CheckInPushNotificationHandler.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;)V
    .locals 8

    .prologue
    .line 186
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/analytics/iris/PushNotificationIri;Lcom/yelp/android/services/push/b;)V

    return-void
.end method


# virtual methods
.method public getNotificationButtons(Landroid/content/Context;Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/services/push/Notifier$NotificationType;",
            "Landroid/net/Uri;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->BIG:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    if-ne p2, v0, :cond_0

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getNotificationButtons(Landroid/content/Context;Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;I)Ljava/util/List;

    move-result-object v9

    .line 199
    const/4 v10, 0x0

    const-string/jumbo v5, "action.LIKE_BUTTON_CLEAR_NOTIFICATIONS"

    sget-object v6, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->LIKE:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    const v7, 0x7f020277

    const v8, 0x7f07033a

    move-object v0, p1

    move-object v1, p4

    move-object/from16 v2, p5

    move-object v3, p3

    move/from16 v4, p6

    # invokes: Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->createCheckInNotificationButton(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/NotificationCompat$Action;
    invoke-static/range {v0 .. v8}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->access$200(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, v9

    .line 204
    goto :goto_0
.end method
