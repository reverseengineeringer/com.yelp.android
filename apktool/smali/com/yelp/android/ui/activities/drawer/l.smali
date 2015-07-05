.class Lcom/yelp/android/ui/activities/drawer/l;
.super Ljava/lang/Object;
.source "DrawerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v7, 0x7f0c0279

    const v0, 0x7f07034e

    const/4 v1, 0x0

    .line 493
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    .line 494
    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v3

    .line 495
    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v4

    .line 496
    sget-object v5, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v5}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v5

    .line 497
    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v2

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 694
    :goto_0
    return-void

    .line 500
    :sswitch_0
    const v0, 0x7f0702af

    .line 501
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    .line 503
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerFriends:Lcom/yelp/android/analytics/iris/EventIri;

    .line 681
    :goto_1
    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 686
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)I

    move-result v1

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0c0307

    if-ne v3, v4, :cond_d

    if-ne v1, v7, :cond_d

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/drawer/o;->closeNavDrawer()V

    goto :goto_0

    .line 506
    :sswitch_1
    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez v5, :cond_2

    .line 507
    :cond_1
    const v0, 0x7f07047a

    .line 513
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    invoke-direct {v3, v2}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Lcom/yelp/android/serializable/User;)V

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v2}, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/lang/String;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    .line 517
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerMedia:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_1

    .line 508
    :cond_2
    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getPhotoCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 509
    const v0, 0x7f07066c

    goto :goto_2

    .line 511
    :cond_3
    const v0, 0x7f07047b

    goto :goto_2

    .line 520
    :sswitch_2
    const v0, 0x7f0703c3

    .line 521
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v3

    sget-object v4, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;->Review:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;ILcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;)Landroid/content/Intent;

    move-result-object v2

    .line 523
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerReviews:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_1

    .line 526
    :sswitch_3
    const v0, 0x7f07009c

    .line 527
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 528
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerAddReview:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_1

    .line 531
    :sswitch_4
    if-eqz v4, :cond_5

    .line 532
    if-eqz v5, :cond_4

    const v0, 0x7f070096

    :goto_3
    move v1, v0

    .line 537
    :goto_4
    if-eqz v5, :cond_6

    const v0, 0x7f070632

    move v2, v0

    .line 540
    :goto_5
    if-eqz v5, :cond_7

    const v0, 0x7f070352

    .line 543
    :goto_6
    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a(Landroid/content/Context;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v2, v0, v4}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 548
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DrawerAddMedia:Lcom/yelp/android/analytics/iris/EventIri;

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 549
    goto/16 :goto_1

    .line 532
    :cond_4
    const v0, 0x7f07009a

    goto :goto_3

    :cond_5
    move v1, v0

    .line 534
    goto :goto_4

    .line 537
    :cond_6
    const v0, 0x7f070633

    move v2, v0

    goto :goto_5

    .line 540
    :cond_7
    const v0, 0x7f070353

    goto :goto_6

    .line 551
    :sswitch_5
    if-eqz v4, :cond_8

    const v0, 0x7f07012c

    .line 553
    :cond_8
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070636

    const v3, 0x7f070355

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a(Landroid/content/Context;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 558
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerCheckIn:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 562
    :sswitch_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-static {v0, v2}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 564
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DrawerNearby:Lcom/yelp/android/analytics/iris/EventIri;

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 565
    goto/16 :goto_1

    .line 568
    :sswitch_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0, v2}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 570
    const-string/jumbo v0, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DrawerSearch:Lcom/yelp/android/analytics/iris/EventIri;

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 572
    goto/16 :goto_1

    .line 574
    :sswitch_8
    if-eqz v3, :cond_9

    const v0, 0x7f070076

    .line 576
    :cond_9
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070357

    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/yelp/android/ui/activities/feed/ActivityFeed;

    invoke-static {v3, v4}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 579
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerFeed:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 582
    :sswitch_9
    if-eqz v3, :cond_a

    const v0, 0x7f07040d

    .line 584
    :cond_a
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f07034c

    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/ui/activities/notifications/ActivityNotifications;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 587
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerNotifications:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 590
    :sswitch_a
    const v0, 0x7f0703d0

    .line 591
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070635

    const v3, 0x7f070354

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 595
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerBookmarks:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 598
    :sswitch_b
    const v0, 0x7f0704bc

    .line 599
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-static {v1, v2}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 601
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerRecents:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 604
    :sswitch_c
    const v0, 0x7f070261

    .line 605
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/ActivityEvents;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 606
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerEvents:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 609
    :sswitch_d
    const v0, 0x7f070388

    .line 610
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 611
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerMessages:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 614
    :sswitch_e
    const v0, 0x7f070140

    .line 615
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v1, v2}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 617
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerFriendCheckIns:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 620
    :sswitch_f
    const v0, 0x7f0705aa

    .line 621
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v1, v2}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 623
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerTalk:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 631
    :sswitch_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v7, :cond_c

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->DrawerAboutMe:Lcom/yelp/android/analytics/iris/EventIri;

    .line 633
    :goto_7
    if-eqz v3, :cond_b

    move v0, v1

    .line 634
    :cond_b
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f070350

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 638
    goto/16 :goto_1

    .line 631
    :cond_c
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->DrawerUserInfo:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_7

    .line 640
    :sswitch_11
    const v0, 0x7f0705e6

    .line 641
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 642
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerWeekly:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 646
    :sswitch_12
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/ActivityMonocle;

    invoke-static {v0, v2}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 648
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DrawerMonocle:Lcom/yelp/android/analytics/iris/EventIri;

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 649
    goto/16 :goto_1

    .line 651
    :sswitch_13
    const v0, 0x7f07027b

    .line 652
    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v2

    .line 653
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerFindFriends:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 656
    :sswitch_14
    const v0, 0x7f07008b

    .line 657
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v2

    .line 659
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerAddBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 662
    :sswitch_15
    const v0, 0x7f0703d7

    .line 663
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v1, v2}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 665
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerSettings:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 668
    :sswitch_16
    const v0, 0x7f0704ee

    .line 669
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bugreport/ActivityReportABug;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 670
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerBug:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 674
    :sswitch_17
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 675
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerLogin:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 691
    :cond_d
    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 692
    :goto_8
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/o;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/drawer/o;->onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 691
    :cond_e
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/l;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 498
    :sswitch_data_0
    .sparse-switch
        0x7f0c0268 -> :sswitch_3
        0x7f0c0269 -> :sswitch_4
        0x7f0c026a -> :sswitch_5
        0x7f0c026b -> :sswitch_6
        0x7f0c026c -> :sswitch_7
        0x7f0c026d -> :sswitch_8
        0x7f0c0270 -> :sswitch_9
        0x7f0c0271 -> :sswitch_a
        0x7f0c0272 -> :sswitch_b
        0x7f0c0273 -> :sswitch_c
        0x7f0c0276 -> :sswitch_d
        0x7f0c0277 -> :sswitch_e
        0x7f0c0278 -> :sswitch_f
        0x7f0c0279 -> :sswitch_10
        0x7f0c027a -> :sswitch_11
        0x7f0c027b -> :sswitch_12
        0x7f0c027c -> :sswitch_13
        0x7f0c027d -> :sswitch_14
        0x7f0c027e -> :sswitch_15
        0x7f0c027f -> :sswitch_16
        0x7f0c0305 -> :sswitch_17
        0x7f0c0308 -> :sswitch_10
        0x7f0c030c -> :sswitch_0
        0x7f0c030d -> :sswitch_2
        0x7f0c030e -> :sswitch_1
    .end sparse-switch
.end method
