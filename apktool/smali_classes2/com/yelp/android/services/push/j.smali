.class public Lcom/yelp/android/services/push/j;
.super Lcom/yelp/android/services/push/DefaultPushNotificationHandler;
.source "TipsPushNotificationHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->QuickTip:Lcom/yelp/android/services/push/Notifier$NotificationType;

    const v1, 0x7f070677

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/services/push/j;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/j;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Lcom/yelp/android/services/push/Notifier$a;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/Notifier$a;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/content/Intent;Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Landroid/net/Uri;Lcom/yelp/android/services/push/Notifier$NotificationType;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/Notifier$b;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/services/push/DefaultPushNotificationHandler;->a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/Notifier$b;)V

    return-void
.end method
