.class public Lcom/yelp/android/services/push/d;
.super Lcom/yelp/android/services/push/DefaultPushNotificationHandler;
.source "MessagePushNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/services/push/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Messages:Lcom/yelp/android/services/push/Notifier$NotificationType;

    const v1, 0x7f070692

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    return-void
.end method

.method private a(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/services/push/d;->a:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/services/push/d;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "conversation_id"

    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/d;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "show_keyboard"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/d;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
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
    .line 105
    iget-object v0, p0, Lcom/yelp/android/services/push/d;->b:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/yelp/android/services/push/d;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/d;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/services/push/Notifier$a;)Landroid/app/Notification;
    .locals 7

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/services/push/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;)I

    move-result v3

    .line 39
    const/4 v0, 0x2

    if-ge v3, v0, :cond_0

    .line 40
    invoke-super {p0, p1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/Notifier$a;)Landroid/app/Notification;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v4, Landroid/support/v4/app/x$f;

    invoke-direct {v4}, Landroid/support/v4/app/x$f;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/services/push/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/services/push/Notifier$a;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/support/v4/app/x$f;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$f;

    .line 51
    invoke-virtual {p0, v3}, Lcom/yelp/android/services/push/d;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v4, v1}, Landroid/support/v4/app/x$f;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$f;

    .line 53
    sget-object v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->BIG:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/services/push/d;->a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 54
    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$a;->b()Landroid/app/Notification;

    move-result-object v0

    iget v6, v0, Landroid/app/Notification;->flags:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/services/push/d;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/x$p;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f070205

    const v2, 0x7f070395

    invoke-static {v0, v1, v2, p1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    return-object v0
.end method

.method public a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/yelp/android/services/push/d;->a(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/services/push/d;->a(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setIntentAsFromPushNotification(Landroid/content/Intent;)V

    .line 68
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
            "Landroid/support/v4/app/x$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/services/push/d;->c()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "action.REPLY_BUTTON_CLEAR_NOTIFICATIONS"

    invoke-virtual {p0}, Lcom/yelp/android/services/push/d;->a()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/services/push/d;->a:Lcom/yelp/android/services/push/Notifier$NotificationType;

    iget-object v4, p0, Lcom/yelp/android/services/push/d;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v2, Landroid/support/v4/app/x$a;

    const v3, 0x7f02032d

    invoke-virtual {p0}, Lcom/yelp/android/services/push/d;->c()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0704ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Landroid/support/v4/app/x$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-object v1
.end method

.method public bridge synthetic a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/Notifier$b;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/Notifier$b;)V

    return-void
.end method
