.class final enum Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType$1;
.super Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
.source "CheckInPushNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 9

    .prologue
    .line 241
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$1;)V

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
            "Landroid/support/v4/app/x$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;->BIG:Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;

    if-ne p2, v0, :cond_0

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    .line 259
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getNotificationButtons(Landroid/content/Context;Lcom/yelp/android/services/push/DefaultPushNotificationHandler$NotificationViewType;Ljava/lang/String;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;I)Ljava/util/List;

    move-result-object v9

    .line 267
    const/4 v10, 0x0

    const-string/jumbo v5, "action.LIKE_BUTTON_CLEAR_NOTIFICATIONS"

    sget-object v6, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->LIKE:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    const v7, 0x7f020356

    const v8, 0x7f070371

    move-object v0, p1

    move-object v1, p4

    move-object/from16 v2, p5

    move-object v3, p3

    move/from16 v4, p6

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->access$200(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;II)Landroid/support/v4/app/x$a;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, v9

    .line 279
    goto :goto_0
.end method
