.class final enum Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType$1;
.super Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;
.source "CheckInPushNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;-><init>(Ljava/lang/String;ILcom/yelp/android/services/push/CheckInPushNotificationHandler$1;)V

    return-void
.end method


# virtual methods
.method public getButtonIri(Landroid/net/Uri;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$1;->a:[I

    invoke-static {p1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationCheckInCommentComment:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 61
    :pswitch_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationCheckInLikeComment:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 63
    :pswitch_2
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PushNotificationFriendCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
