.class final enum Lcom/yelp/android/services/push/Notifier$NotificationType$1;
.super Lcom/yelp/android/services/push/Notifier$NotificationType;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/push/Notifier$NotificationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/services/push/Notifier$NotificationType;-><init>(Ljava/lang/String;I[Ljava/lang/String;Lcom/yelp/android/services/push/Notifier$1;)V

    return-void
.end method


# virtual methods
.method public getDeleteIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 483
    invoke-static {p1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getPushNotificationDeleteIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    return-object v0
.end method

.method public getOpenIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 478
    invoke-static {p1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getPushNotificationOpenIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 488
    invoke-static {p1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getPushNotificationReceivedIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    return-object v0
.end method
