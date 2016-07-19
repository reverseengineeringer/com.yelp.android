.class public abstract Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;
.super Ljava/lang/Object;
.source "NearbyCheckIns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 649
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

    .line 658
    const/4 v0, 0x0

    .line 659
    packed-switch p2, :pswitch_data_0

    .line 718
    :goto_0
    return v1

    .line 661
    :pswitch_0
    if-ne p3, v3, :cond_0

    .line 662
    const-string/jumbo v0, "extra.data"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 663
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->CheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 664
    invoke-static {p1, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 715
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    :cond_1
    move v1, v2

    .line 718
    goto :goto_0

    .line 670
    :pswitch_1
    if-ne p3, v3, :cond_0

    .line 671
    const-string/jumbo v0, "extra.data"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 673
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v4

    .line 676
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    .line 678
    :goto_2
    if-eqz v3, :cond_3

    .line 679
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 684
    :goto_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 685
    const-string/jumbo v6, "business_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->k()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string/jumbo v6, "check_in_id"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string/jumbo v6, "is_positive"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string/jumbo v6, "source"

    const-string/jumbo v7, "friends_check_ins"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->CheckInFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v6, v5}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 691
    new-instance v5, Lcom/yelp/android/appdata/webrequests/ek;

    invoke-direct {v5, v4, v3}, Lcom/yelp/android/appdata/webrequests/ek;-><init>(Ljava/lang/String;Z)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v5, v1}, Lcom/yelp/android/appdata/webrequests/ek;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_1

    :cond_2
    move v3, v1

    .line 676
    goto :goto_2

    .line 681
    :cond_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Feedback;->b()V

    goto :goto_3

    .line 696
    :pswitch_2
    if-ne p3, v3, :cond_0

    .line 697
    const-string/jumbo v0, "extra.data"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 698
    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->CheckInCommentBubble:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 699
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v3

    .line 700
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->u()I

    move-result v4

    .line 701
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    invoke-static {p1, v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 708
    :pswitch_3
    if-ne p3, v3, :cond_0

    .line 709
    invoke-static {p4}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    goto/16 :goto_1

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
