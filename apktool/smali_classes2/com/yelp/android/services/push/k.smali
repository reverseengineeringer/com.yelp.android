.class public Lcom/yelp/android/services/push/k;
.super Lcom/yelp/android/services/push/DefaultPushNotificationHandler;
.source "UFCVotesPushNotificationHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->ReviewFeedback:Lcom/yelp/android/services/push/Notifier$NotificationType;

    const v1, 0x7f070679

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/services/push/k;->b:Landroid/net/Uri;

    const-string/jumbo v2, "biz_id"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/push/k;->b:Landroid/net/Uri;

    const-string/jumbo v2, "review_id"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/k;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/services/push/Notifier$a;)Landroid/app/Notification;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/services/push/k;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/services/push/Notifier$a;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0, p1, v5}, Lcom/yelp/android/services/push/k;->a(Lcom/yelp/android/services/push/Notifier$a;Ljava/lang/String;)Landroid/support/v4/app/x$p;

    move-result-object v4

    sget-object v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->BIG:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    invoke-virtual {p0, v0, v5}, Lcom/yelp/android/services/push/k;->a(Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$a;->b()Landroid/app/Notification;

    move-result-object v0

    iget v6, v0, Landroid/app/Notification;->flags:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/services/push/k;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/x$p;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/yelp/android/services/push/Notifier$a;Ljava/lang/String;)Landroid/support/v4/app/x$p;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/support/v4/app/x$c;

    invoke-direct {v0}, Landroid/support/v4/app/x$c;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/yelp/android/services/push/Notifier$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/x$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$c;

    .line 47
    return-object v0
.end method

.method public bridge synthetic a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/Notifier$b;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/Notifier$b;)V

    return-void
.end method
