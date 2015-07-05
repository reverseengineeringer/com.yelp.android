.class final enum Lcom/yelp/android/services/push/Notifier$NotificationType$1;
.super Lcom/yelp/android/services/push/Notifier$NotificationType;
.source "Notifier.java"


# direct methods
.method varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;I[Ljava/lang/String;Lcom/yelp/android/services/push/k;)V

    return-void
.end method


# virtual methods
.method public getDeleteIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 446
    invoke-static {p1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getPushNotificationDeleteIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move-result-object v0

    return-object v0
.end method

.method public getOpenIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;
    .locals 1

    .prologue
    .line 441
    invoke-static {p1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getPushNotificationOpenIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/PushNotificationIri;

    move-result-object v0

    return-object v0
.end method
