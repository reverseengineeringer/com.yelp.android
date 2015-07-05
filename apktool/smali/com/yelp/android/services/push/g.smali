.class public Lcom/yelp/android/services/push/g;
.super Lcom/yelp/android/services/push/DefaultPushNotificationHandler;
.source "MessagePushNotificationHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Messages:Lcom/yelp/android/services/push/Notifier$NotificationType;

    const v1, 0x7f0706c3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    return-void
.end method

.method private a(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/services/push/g;->a:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/services/push/g;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "conversation_id"

    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "show_keyboard"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/g;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/services/push/g;->b:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/yelp/android/services/push/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/g;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/services/push/m;)Landroid/app/Notification;
    .locals 7

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/services/push/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/services/push/m;->a(Landroid/content/Context;)I

    move-result v3

    .line 36
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    .line 37
    const/4 v1, 0x2

    if-lt v3, v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/m;)Landroid/app/Notification;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 42
    :cond_1
    new-instance v4, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/services/push/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/services/push/m;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 50
    invoke-virtual {p0, v3}, Lcom/yelp/android/services/push/g;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 52
    sget-object v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->BIG:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/services/push/g;->a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 53
    invoke-virtual {p1}, Lcom/yelp/android/services/push/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/services/push/m;->b()Landroid/app/Notification;

    move-result-object v0

    iget v6, v0, Landroid/app/Notification;->flags:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/services/push/g;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f070641

    const v2, 0x7f07035a

    invoke-static {v0, v1, v2, p1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    return-object v0
.end method

.method public a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;

    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/yelp/android/services/push/g;->a(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/services/push/g;->a(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setIntentAsFromPushNotification(Landroid/content/Intent;)V

    .line 62
    return-object v0
.end method

.method protected a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/services/push/g;->c()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "action.REPLY_BUTTON_CLEAR_NOTIFICATIONS"

    invoke-virtual {p0}, Lcom/yelp/android/services/push/g;->a()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/services/push/g;->a:Lcom/yelp/android/services/push/Notifier$NotificationType;

    iget-object v4, p0, Lcom/yelp/android/services/push/g;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/services/push/m;->a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action;

    const v3, 0x7f020258

    invoke-virtual {p0}, Lcom/yelp/android/services/push/g;->c()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0704ed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v1
.end method

.method public bridge synthetic a(Lcom/yelp/android/services/push/p;Lcom/yelp/android/services/push/n;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/p;Lcom/yelp/android/services/push/n;)V

    return-void
.end method
