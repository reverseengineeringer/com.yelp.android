.class Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;
.super Ljava/lang/Object;
.source "DrawerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15

    .prologue
    .line 558
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v2

    .line 560
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v1

    .line 561
    sget-object v3, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v3

    .line 562
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v4

    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 828
    :goto_0
    return-void

    .line 565
    :sswitch_0
    const v0, 0x7f0702fc

    .line 566
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    .line 569
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerFriends:Lcom/yelp/android/analytics/iris/EventIri;

    .line 814
    :goto_1
    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 819
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)I

    move-result v1

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0f038e

    if-ne v3, v4, :cond_d

    const v3, 0x7f0f02c0

    if-ne v1, v3, :cond_d

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;->closeNavDrawer()V

    goto :goto_0

    .line 572
    :sswitch_1
    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_2

    .line 573
    :cond_1
    const v0, 0x7f07048d

    .line 579
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    invoke-direct {v2, v4}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Lcom/yelp/android/serializable/User;)V

    invoke-static {v1, v4, v2, v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v2

    .line 585
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerMedia:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_1

    .line 574
    :cond_2
    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->l_()I

    move-result v0

    if-nez v0, :cond_3

    .line 575
    const v0, 0x7f070647

    goto :goto_2

    .line 577
    :cond_3
    const v0, 0x7f07048e

    goto :goto_2

    .line 588
    :sswitch_2
    const v0, 0x7f0703f7

    .line 589
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/yelp/android/ui/activities/profile/reviews/a$b;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    .line 592
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerReviews:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_1

    .line 595
    :sswitch_3
    const v0, 0x7f07011a

    .line 596
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 598
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerAddReview:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_1

    .line 601
    :sswitch_4
    if-eqz v1, :cond_5

    .line 602
    if-eqz v3, :cond_4

    const v0, 0x7f070113

    :goto_3
    move v1, v0

    .line 608
    :goto_4
    if-eqz v3, :cond_6

    const v0, 0x7f07038e

    .line 612
    :goto_5
    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0701ff

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a(Landroid/content/Context;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 620
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DrawerAddMedia:Lcom/yelp/android/analytics/iris/EventIri;

    move v14, v1

    move-object v1, v0

    move v0, v14

    .line 621
    goto/16 :goto_1

    .line 602
    :cond_4
    const v0, 0x7f070118

    goto :goto_3

    .line 605
    :cond_5
    const v1, 0x7f07038a

    goto :goto_4

    .line 608
    :cond_6
    const v0, 0x7f07038f

    goto :goto_5

    .line 623
    :sswitch_5
    if-eqz v1, :cond_7

    const v0, 0x7f0701ab

    .line 625
    :goto_6
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070202

    const v3, 0x7f070391

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a(Landroid/content/Context;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 633
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerCheckIn:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 623
    :cond_7
    const v0, 0x7f07038a

    goto :goto_6

    .line 636
    :sswitch_6
    const/4 v0, 0x0

    .line 637
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-static {v1, v2}, Lcom/yelp/android/util/k;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 640
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerNearby:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 643
    :sswitch_7
    const/4 v0, 0x0

    .line 644
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v1, v2}, Lcom/yelp/android/util/k;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 647
    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerSearch:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 651
    :sswitch_8
    if-eqz v2, :cond_8

    const v0, 0x7f0700f0

    .line 653
    :goto_7
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 654
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerFeed:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 651
    :cond_8
    const v0, 0x7f07038a

    goto :goto_7

    .line 657
    :sswitch_9
    if-eqz v2, :cond_9

    const v0, 0x7f070444

    .line 659
    :goto_8
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070388

    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/ui/activities/notifications/ActivityNotifications;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 664
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerNotifications:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 657
    :cond_9
    const v0, 0x7f07038a

    goto :goto_8

    .line 667
    :sswitch_a
    const v1, 0x7f070402

    .line 668
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->j:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v2, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 673
    :goto_9
    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f07020d

    const v4, 0x7f070390

    invoke-static {v2, v3, v4, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 679
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DrawerBookmarks:Lcom/yelp/android/analytics/iris/EventIri;

    move v14, v1

    move-object v1, v0

    move v0, v14

    .line 680
    goto/16 :goto_1

    .line 668
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_9

    .line 682
    :sswitch_b
    const v0, 0x7f0704d7

    .line 683
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-static {v1, v2}, Lcom/yelp/android/util/k;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 686
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerRecents:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 689
    :sswitch_c
    const v0, 0x7f0702b8

    .line 690
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/ActivityEvents;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 691
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerEvents:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 694
    :sswitch_d
    const v0, 0x7f0703c6

    .line 695
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 696
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerMessages:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 699
    :sswitch_e
    const v0, 0x7f0701c3

    .line 700
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v1, v2}, Lcom/yelp/android/util/k;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 703
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerFriendCheckIns:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 706
    :sswitch_f
    const v13, 0x7f0702e8

    .line 707
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "food_orders"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/services/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 716
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v2, v13}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const v6, 0x7f070693

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 731
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DrawerFoodOrders:Lcom/yelp/android/analytics/iris/EventIri;

    move-object v2, v1

    move-object v1, v0

    move v0, v13

    .line 732
    goto/16 :goto_1

    .line 734
    :sswitch_10
    const v0, 0x7f0705b3

    .line 735
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v1, v2}, Lcom/yelp/android/util/k;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 738
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerTalk:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 746
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f02c0

    if-ne v0, v1, :cond_b

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerAboutMe:Lcom/yelp/android/analytics/iris/EventIri;

    .line 750
    :goto_a
    if-eqz v2, :cond_c

    const/4 v0, 0x0

    .line 751
    :goto_b
    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f07038c

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_1

    .line 746
    :cond_b
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerUserInfo:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_a

    .line 750
    :cond_c
    const v0, 0x7f07038a

    goto :goto_b

    .line 760
    :sswitch_12
    const v0, 0x7f0705ce

    .line 761
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 764
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerLocalIssue:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 767
    :sswitch_13
    const/4 v0, 0x0

    .line 768
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/ActivityMonocle;

    invoke-static {v1, v2}, Lcom/yelp/android/util/k;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 771
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerMonocle:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 774
    :sswitch_14
    const v0, 0x7f0702cd

    .line 775
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v2

    .line 776
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerFindFriends:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 779
    :sswitch_15
    const v0, 0x7f070107

    .line 780
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v2

    .line 783
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerAddBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 786
    :sswitch_16
    const v0, 0x7f070409

    .line 787
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v1, v2}, Lcom/yelp/android/util/k;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 790
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerSettings:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 793
    :sswitch_17
    const v0, 0x7f0704f0

    .line 794
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bugreport/ActivityReportABug;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 795
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerBug:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 798
    :sswitch_18
    const v0, 0x7f0705ab

    .line 799
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/support/ActivitySupportCenter;->a(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Intent;

    move-result-object v2

    .line 803
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerSupportCenter:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 806
    :sswitch_19
    const v0, 0x7f07038a

    .line 807
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 808
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DrawerLogin:Lcom/yelp/android/analytics/iris/EventIri;

    goto/16 :goto_1

    .line 825
    :cond_d
    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 826
    :goto_c
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;->onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    :cond_e
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 563
    :sswitch_data_0
    .sparse-switch
        0x7f0f02b2 -> :sswitch_3
        0x7f0f02b3 -> :sswitch_4
        0x7f0f02b4 -> :sswitch_5
        0x7f0f02b5 -> :sswitch_6
        0x7f0f02b6 -> :sswitch_7
        0x7f0f02b7 -> :sswitch_8
        0x7f0f02b8 -> :sswitch_9
        0x7f0f02b9 -> :sswitch_a
        0x7f0f02ba -> :sswitch_b
        0x7f0f02bb -> :sswitch_c
        0x7f0f02bc -> :sswitch_f
        0x7f0f02bd -> :sswitch_d
        0x7f0f02be -> :sswitch_e
        0x7f0f02bf -> :sswitch_10
        0x7f0f02c0 -> :sswitch_11
        0x7f0f02c1 -> :sswitch_12
        0x7f0f02c2 -> :sswitch_13
        0x7f0f02c3 -> :sswitch_14
        0x7f0f02c4 -> :sswitch_15
        0x7f0f02c5 -> :sswitch_16
        0x7f0f02c6 -> :sswitch_17
        0x7f0f02c7 -> :sswitch_18
        0x7f0f038e -> :sswitch_11
        0x7f0f0391 -> :sswitch_0
        0x7f0f0392 -> :sswitch_2
        0x7f0f0393 -> :sswitch_1
        0x7f0f0394 -> :sswitch_19
    .end sparse-switch
.end method
