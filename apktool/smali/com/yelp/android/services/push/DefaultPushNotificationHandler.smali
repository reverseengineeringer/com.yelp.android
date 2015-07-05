.class Lcom/yelp/android/services/push/DefaultPushNotificationHandler;
.super Ljava/lang/Object;
.source "DefaultPushNotificationHandler.java"

# interfaces
.implements Lcom/yelp/android/services/push/q;


# instance fields
.field protected final a:Lcom/yelp/android/services/push/Notifier$NotificationType;

.field protected final b:Landroid/net/Uri;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->d:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a:Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 54
    iput-object p3, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->c:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->b:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/support/v4/app/NotificationCompat$Style;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$Builder;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0202ce

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->d:Landroid/content/Context;

    const v2, 0x7f0704ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 222
    if-eqz p5, :cond_0

    .line 223
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 224
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 227
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-virtual {v0}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/yelp/android/services/v;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/services/push/m;)Landroid/app/Notification;
    .locals 7

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yelp/android/services/push/m;->a(Landroid/content/Context;)I

    move-result v3

    .line 123
    invoke-virtual {p0, v3}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    const/4 v0, 0x1

    if-eq v3, v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/services/push/m;->b()Landroid/app/Notification;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/m;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Style;

    move-result-object v4

    .line 129
    sget-object v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->BIG:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 130
    invoke-virtual {p1}, Lcom/yelp/android/services/push/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/services/push/m;->b()Landroid/app/Notification;

    move-result-object v0

    iget v6, v0, Landroid/app/Notification;->flags:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;I)Landroid/app/Notification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/support/v4/app/NotificationCompat$Style;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 186
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p6

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 187
    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;ILandroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/support/v4/app/NotificationCompat$Style;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;I",
            "Landroid/app/PendingIntent;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 207
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p6

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 208
    return-object v0
.end method

.method protected a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    return-object v0
.end method

.method public a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->d:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 163
    invoke-virtual {p3}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v1, "extra_notification_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    return-object v0
.end method

.method public a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setIntentAsFromPushNotification(Landroid/content/Intent;)V

    .line 153
    return-object v0
.end method

.method protected a(Lcom/yelp/android/services/push/m;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Style;
    .locals 3

    .prologue
    .line 248
    new-instance v1, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yelp/android/services/push/m;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 254
    return-object v1
.end method

.method protected a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/services/push/p;Lcom/yelp/android/services/push/n;)V
    .locals 8

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a()I

    move-result v7

    .line 98
    invoke-virtual {p1}, Lcom/yelp/android/services/push/p;->c()Ljava/lang/String;

    move-result-object v1

    .line 99
    sget-object v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->SINGLE:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 101
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x18

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/NotificationCompat$Style;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/yelp/android/services/push/m;

    invoke-direct {v1, v7, p1, v0}, Lcom/yelp/android/services/push/m;-><init>(ILcom/yelp/android/services/push/p;Landroid/app/Notification;)V

    invoke-interface {p2, v1}, Lcom/yelp/android/services/push/n;->a(Lcom/yelp/android/services/push/m;)V

    .line 106
    return-void
.end method

.method protected c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->d:Landroid/content/Context;

    return-object v0
.end method
