.class public abstract Lcom/yelp/android/ui/activities/friendcheckins/p;
.super Ljava/lang/Object;
.source "NearbyCheckIns.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/yelp/android/serializable/YelpCheckIn;)V
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 8

    .prologue
    const/16 v5, 0x65

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 625
    const/4 v0, 0x0

    .line 626
    packed-switch p2, :pswitch_data_0

    .line 683
    :goto_0
    return v1

    .line 628
    :pswitch_0
    if-ne p3, v3, :cond_0

    .line 629
    const-string/jumbo v0, "extra.data"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 630
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->CheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 631
    invoke-static {p1, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 680
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/p;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    :cond_1
    move v1, v2

    .line 683
    goto :goto_0

    .line 637
    :pswitch_1
    if-ne p3, v3, :cond_0

    .line 638
    const-string/jumbo v0, "extra.data"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 640
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v4

    .line 643
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    .line 645
    :goto_2
    if-eqz v3, :cond_3

    .line 646
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 651
    :goto_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 652
    const-string/jumbo v6, "business_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusinessId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string/jumbo v6, "check_in_id"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string/jumbo v6, "is_positive"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string/jumbo v6, "source"

    const-string/jumbo v7, "friends_check_ins"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->CheckInFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v6, v5}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 658
    new-instance v5, Lcom/yelp/android/appdata/webrequests/fo;

    invoke-direct {v5, v4, v3}, Lcom/yelp/android/appdata/webrequests/fo;-><init>(Ljava/lang/String;Z)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v5, v1}, Lcom/yelp/android/appdata/webrequests/fo;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_1

    :cond_2
    move v3, v1

    .line 643
    goto :goto_2

    .line 648
    :cond_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    goto :goto_3

    .line 662
    :pswitch_2
    if-ne p3, v3, :cond_0

    .line 663
    const-string/jumbo v0, "extra.data"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 664
    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->CheckInCommentBubble:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 665
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v3

    .line 666
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getCommentsCount()I

    move-result v4

    .line 667
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    invoke-static {p1, v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 673
    :pswitch_3
    if-ne p3, v3, :cond_0

    .line 674
    invoke-static {p4}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    goto/16 :goto_1

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
