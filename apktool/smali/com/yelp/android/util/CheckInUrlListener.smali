.class public Lcom/yelp/android/util/CheckInUrlListener;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "CheckInUrlListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/util/CheckInUrlListener;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/util/CheckInUrlListener;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 29
    invoke-static {v4}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getCheckinTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;

    move-result-object v5

    .line 30
    const-string/jumbo v0, "extra_check_in_notification_button"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    .line 32
    if-eqz v0, :cond_0

    sget-object v6, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->COMMENT:Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;

    invoke-virtual {v0, v6}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInButtonType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 34
    :goto_0
    const-string/jumbo v6, "extra_check_in_aggregated"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    sget-object v3, Lcom/yelp/android/util/d;->a:[I

    invoke-virtual {v5}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    move-object v0, v2

    .line 51
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/util/CheckInUrlListener;->startActivity(Landroid/content/Intent;)V

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/util/CheckInUrlListener;->finish()V

    .line 53
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :pswitch_0
    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v2, v0, v4}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;ZLandroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 45
    :pswitch_1
    invoke-static {p0, v2, v0, v4}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;ZLandroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 48
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
