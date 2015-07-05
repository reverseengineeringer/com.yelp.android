.class public Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "DrawerFragment.java"


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private b:Lcom/yelp/android/ui/activities/drawer/o;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/yelp/android/DinoListView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/Button;

.field private p:Lcom/yelp/android/ui/h;

.field private q:Lcom/yelp/android/ui/activities/drawer/a;

.field private final r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 487
    new-instance v0, Lcom/yelp/android/ui/activities/drawer/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/drawer/l;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    .line 697
    new-instance v0, Lcom/yelp/android/ui/activities/drawer/m;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/drawer/m;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a:Landroid/content/BroadcastReceiver;

    .line 710
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;Lcom/yelp/android/ui/activities/drawer/a;)Lcom/yelp/android/ui/activities/drawer/a;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->q:Lcom/yelp/android/ui/activities/drawer/a;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/DinoListView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/DinoListView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/h;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->p:Lcom/yelp/android/ui/h;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j()V

    .line 306
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/a;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->q:Lcom/yelp/android/ui/activities/drawer/a;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 309
    invoke-static {}, Lcom/yelp/android/appdata/ab;->a()Lcom/yelp/android/appdata/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ab;->e()I

    move-result v0

    .line 311
    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 320
    invoke-static {}, Lcom/yelp/android/appdata/ab;->a()Lcom/yelp/android/appdata/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ab;->f()I

    move-result v0

    .line 321
    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i()V

    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 330
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v3

    .line 331
    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v0, 0x7f07029a

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i:Landroid/view/View;

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j:Landroid/view/View;

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    return-void

    .line 331
    :cond_0
    const v0, 0x7f070140

    goto :goto_0

    :cond_1
    move v0, v2

    .line 332
    goto :goto_1

    :cond_2
    move v1, v2

    .line 333
    goto :goto_2
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h()V

    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    .line 338
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v2

    .line 340
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->isFullUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 344
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j()V

    .line 345
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l()V

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/k;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/k;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cs;->a(Landroid/view/View;Lcom/yelp/android/ui/util/cu;)V

    .line 371
    return-void

    .line 346
    :cond_0
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i_()V

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e()V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 359
    const v1, 0x7f0c0305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e()V

    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)I
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k()I

    move-result v0

    return v0
.end method

.method private k()I
    .locals 3

    .prologue
    .line 379
    const/4 v2, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 382
    instance-of v0, v1, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const v0, 0x7f0c030c

    .line 439
    :goto_0
    return v0

    .line 385
    :cond_0
    instance-of v0, v1, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    const v0, 0x7f0c030d

    goto :goto_0

    .line 388
    :cond_1
    instance-of v0, v1, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    const v0, 0x7f0c030e

    goto :goto_0

    .line 391
    :cond_2
    instance-of v0, v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    if-eqz v0, :cond_3

    .line 392
    const v0, 0x7f0c0268

    goto :goto_0

    .line 393
    :cond_3
    instance-of v0, v1, Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    if-eqz v0, :cond_5

    .line 394
    check-cast v1, Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b()Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    .line 396
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_4

    .line 397
    const v0, 0x7f0c026a

    goto :goto_0

    .line 398
    :cond_4
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_17

    .line 399
    const v0, 0x7f0c0269

    goto :goto_0

    .line 401
    :cond_5
    instance-of v0, v1, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    if-eqz v0, :cond_6

    .line 402
    const v0, 0x7f0c026b

    goto :goto_0

    .line 403
    :cond_6
    instance-of v0, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    if-nez v0, :cond_7

    instance-of v0, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    if-eqz v0, :cond_8

    .line 405
    :cond_7
    const v0, 0x7f0c026c

    goto :goto_0

    .line 406
    :cond_8
    instance-of v0, v1, Lcom/yelp/android/ui/activities/feed/ActivityFeed;

    if-eqz v0, :cond_9

    .line 407
    const v0, 0x7f0c026d

    goto :goto_0

    .line 408
    :cond_9
    instance-of v0, v1, Lcom/yelp/android/ui/activities/notifications/ActivityNotifications;

    if-eqz v0, :cond_a

    .line 409
    const v0, 0x7f0c026e

    goto :goto_0

    .line 410
    :cond_a
    instance-of v0, v1, Lcom/yelp/android/ui/activities/ActivityBookmarks;

    if-eqz v0, :cond_b

    .line 411
    const v0, 0x7f0c0271

    goto :goto_0

    .line 412
    :cond_b
    instance-of v0, v1, Lcom/yelp/android/ui/activities/events/ActivityEvents;

    if-eqz v0, :cond_c

    .line 413
    const v0, 0x7f0c0273

    goto :goto_0

    .line 414
    :cond_c
    instance-of v0, v1, Lcom/yelp/android/ui/activities/ActivityRecents;

    if-eqz v0, :cond_d

    .line 415
    const v0, 0x7f0c0272

    goto :goto_0

    .line 416
    :cond_d
    instance-of v0, v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;

    if-eqz v0, :cond_e

    .line 417
    const v0, 0x7f0c0274

    goto/16 :goto_0

    .line 418
    :cond_e
    instance-of v0, v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    if-eqz v0, :cond_f

    .line 419
    const v0, 0x7f0c0277

    goto/16 :goto_0

    .line 420
    :cond_f
    instance-of v0, v1, Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    if-eqz v0, :cond_10

    .line 421
    const v0, 0x7f0c0278

    goto/16 :goto_0

    .line 422
    :cond_10
    instance-of v0, v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    if-eqz v0, :cond_11

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 424
    const v0, 0x7f0c0279

    goto/16 :goto_0

    .line 425
    :cond_11
    instance-of v0, v1, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    if-eqz v0, :cond_12

    .line 426
    const v0, 0x7f0c027a

    goto/16 :goto_0

    .line 427
    :cond_12
    instance-of v0, v1, Lcom/yelp/android/ui/ActivityMonocle;

    if-eqz v0, :cond_13

    .line 428
    const v0, 0x7f0c027b

    goto/16 :goto_0

    .line 429
    :cond_13
    instance-of v0, v1, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    if-eqz v0, :cond_14

    .line 430
    const v0, 0x7f0c027c

    goto/16 :goto_0

    .line 431
    :cond_14
    instance-of v0, v1, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    if-eqz v0, :cond_15

    .line 432
    const v0, 0x7f0c027d

    goto/16 :goto_0

    .line 433
    :cond_15
    instance-of v0, v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    if-eqz v0, :cond_16

    .line 434
    const v0, 0x7f0c027e

    goto/16 :goto_0

    .line 435
    :cond_16
    instance-of v0, v1, Lcom/yelp/android/ui/activities/bugreport/ActivityReportABug;

    if-eqz v0, :cond_17

    .line 436
    const v0, 0x7f0c027f

    goto/16 :goto_0

    :cond_17
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/o;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b:Lcom/yelp/android/ui/activities/drawer/o;

    return-object v0
.end method

.method private l()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 443
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v5

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0306

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 445
    const v0, 0x7f0c030c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 446
    const v1, 0x7f0c030d

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 447
    const v2, 0x7f0c030e

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 448
    const v3, 0x7f0c030b

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 449
    const v6, 0x7f0c0309

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 450
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0e0010

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6, v7, v8, v9}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 452
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v6, 0x7f0e0022

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v0, v6, v7, v8}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v0

    .line 457
    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->getLocalPhotoCount()I

    move-result v1

    .line 458
    add-int v6, v0, v1

    .line 459
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v11, v1, v0, v6, v7}, Lcom/yelp/android/serializable/Passport;->getMediaQuantityString(ZIIILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f02009b

    invoke-virtual {v4, v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 464
    return-void
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f()V

    return-void
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 471
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v4, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    .line 472
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 473
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 474
    new-instance v1, Lcom/yelp/android/ui/h;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/DinoListView;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/ui/h;-><init>(Landroid/content/Context;Lcom/yelp/android/DinoListView;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->p:Lcom/yelp/android/ui/h;

    .line 477
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 478
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->p:Lcom/yelp/android/ui/h;

    invoke-virtual {v1}, Lcom/yelp/android/ui/h;->b()V

    .line 481
    :cond_0
    new-instance v1, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/bs;-><init>()V

    .line 482
    invoke-static {v0}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 483
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->p:Lcom/yelp/android/ui/h;

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 484
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/DinoListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/DinoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 485
    return-void
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->q:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/a;->a()V

    .line 280
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 282
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0306

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->B()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 294
    :cond_0
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->Drawer:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v2, "growth_android_dino_nav"

    sget-object v0, Lcom/yelp/android/appdata/experiment/c;->a:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment;->a()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0306

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->q:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/a;->b()V

    .line 300
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 219
    sget-object v0, Lcom/yelp/android/appdata/webrequests/dc;->b:Landroid/content/IntentFilter;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/i;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/i;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 228
    sget-object v0, Lcom/yelp/android/appdata/webrequests/dc;->c:Landroid/content/IntentFilter;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/j;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/j;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 236
    const-string/jumbo v0, "com.yelp.android.messages.count.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 238
    const-string/jumbo v0, "com.yelp.android.notifications.count.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 242
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k()I

    move-result v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 209
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/drawer/o;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b:Lcom/yelp/android/ui/activities/drawer/o;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string/jumbo v0, "DrawerFragment"

    const-string/jumbo v1, "Parent activity must implement DrawerFragmentListener"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v3, 0x7f0300cf

    const/4 v5, 0x0

    .line 108
    const v0, 0x7f030099

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->c:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0307

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 116
    sget-object v2, Lcom/yelp/android/ui/activities/drawer/n;->a:[I

    sget-object v1, Lcom/yelp/android/appdata/experiment/c;->a:Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment;->a()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/experiment/NavForAnonymousUsersExperiment$Cohort;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 128
    const v1, 0x7f0300d0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 129
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0304

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0274

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0308

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c030c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0270

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0271

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0273

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0276

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0279

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c027b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c027a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 166
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "US"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :goto_1
    const v0, 0x7f030098

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 179
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/widget/ImageView;

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    const v0, 0x7f0c0265

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/DinoListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/DinoListView;

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/DinoListView;

    invoke-virtual {v0, v5}, Lcom/yelp/android/DinoListView;->setClickable(Z)V

    .line 187
    const v0, 0x7f0c0266

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->n:Landroid/widget/ImageView;

    .line 188
    const v0, 0x7f0c0267

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->o:Landroid/widget/Button;

    .line 189
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m()V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/drawer/h;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/drawer/h;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/cs;->a(Landroid/view/View;Lcom/yelp/android/ui/util/cu;)V

    .line 202
    return-object v1

    .line 118
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Landroid/view/View;

    const v1, 0x7f0c0305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0701df

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/16 :goto_0

    .line 175
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 251
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i()V

    .line 252
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h()V

    .line 253
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f()V

    .line 254
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g()V

    .line 255
    return-void
.end method
