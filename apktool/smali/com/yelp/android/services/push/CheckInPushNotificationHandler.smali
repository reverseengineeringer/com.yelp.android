.class public Lcom/yelp/android/services/push/CheckInPushNotificationHandler;
.super Lcom/yelp/android/services/push/DefaultPushNotificationHandler;
.source "CheckInPushNotificationHandler.java"


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Checkin:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-static {p2}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getNotificationSummaryResource()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;ILjava/lang/String;)V
    .locals 16

    .prologue
    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->c()Landroid/content/Context;

    move-result-object v3

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v8, v4

    .line 154
    sget-object v2, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->COMMENTS:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    sget-object v4, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->SINGLE:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getNotificationButtons(Landroid/content/Context;Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;I)Ljava/util/List;

    move-result-object v14

    .line 158
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x18

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p4

    invoke-virtual/range {v9 .. v15}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v4

    .line 160
    const-string/jumbo v7, "action.DELETED_CLEAR_NOTIFICATIONS"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v3

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    invoke-static/range {v6 .. v11}, Lcom/yelp/android/services/push/m;->a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 163
    const-string/jumbo v7, "action.CLICKED_CLEAR_NOTIFICATIONS"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v3

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    invoke-static/range {v6 .. v11}, Lcom/yelp/android/services/push/m;->a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 167
    const-string/jumbo v2, "notification"

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 171
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getNotificationIdFromUri(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Lcom/yelp/android/services/push/m;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/m;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    const/4 v1, 0x0

    .line 109
    const-string/jumbo v0, "extra_check_in_notification_button"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    .line 110
    sget-object v2, Lcom/yelp/android/services/push/b;->b:[I

    invoke-virtual {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 129
    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fo;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fo;-><init>(Ljava/lang/String;Z)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/fo;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 118
    :cond_0
    const-string/jumbo v0, "extra_notification_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;ILjava/lang/String;)V

    move-object v0, v1

    .line 120
    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "extra_check_in_aggregated"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "extra_check_in_notification_button"

    sget-object v2, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->COMMENT:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "extra_check_in_aggregated"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setIntentAsFromPushNotification(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->a:Lcom/yelp/android/services/push/Notifier$NotificationType;

    iget-object v5, p0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->b:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler;->a()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getNotificationButtons(Landroid/content/Context;Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/yelp/android/services/push/p;Lcom/yelp/android/services/push/n;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/p;Lcom/yelp/android/services/push/n;)V

    return-void
.end method
