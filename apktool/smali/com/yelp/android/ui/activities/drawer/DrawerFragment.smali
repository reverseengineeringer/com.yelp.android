.class public Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "DrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private b:Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/yelp/android/cm/d;

.field private k:Lcom/yelp/android/cm/d;

.field private l:Lcom/yelp/android/DinoListView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/Button;

.field private q:Lcom/yelp/android/ui/d;

.field private r:Lcom/yelp/android/ui/activities/drawer/a;

.field private final s:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 551
    new-instance v0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$5;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    .line 831
    new-instance v0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$6;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a:Landroid/content/BroadcastReceiver;

    .line 849
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;Lcom/yelp/android/ui/activities/drawer/a;)Lcom/yelp/android/ui/activities/drawer/a;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Lcom/yelp/android/ui/activities/drawer/a;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/DinoListView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Lcom/yelp/android/DinoListView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/d;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->q:Lcom/yelp/android/ui/d;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/a;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Lcom/yelp/android/ui/activities/drawer/a;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/yelp/android/appdata/Features;->support_center_feature_release:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l()V

    .line 355
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k()V

    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 358
    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/j;->e()I

    move-result v0

    .line 360
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/cm/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/cm/d;->a(ILandroid/content/res/Resources;)V

    .line 361
    if-lez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/cm/d;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j()V

    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 370
    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/j;->f()I

    move-result v0

    .line 371
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j:Lcom/yelp/android/cm/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/cm/d;->a(ILandroid/content/res/Resources;)V

    .line 372
    if-lez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j:Lcom/yelp/android/cm/d;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g()V

    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)I
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m()I

    move-result v0

    return v0
.end method

.method private j()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 382
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v3

    .line 384
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v4

    .line 385
    iget-object v5, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0702ed

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 386
    iget-object v5, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v5, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/User;->k()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 390
    :goto_3
    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    return-void

    .line 385
    :cond_0
    const v0, 0x7f0701c3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 386
    goto :goto_1

    :cond_2
    move v0, v2

    .line 387
    goto :goto_2

    :cond_3
    move v0, v1

    .line 388
    goto :goto_3

    :cond_4
    move v1, v2

    .line 390
    goto :goto_4
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b:Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 394
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    .line 396
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l()V

    .line 401
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->n()V

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$4;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/at;->a(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V

    .line 428
    return-void

    .line 402
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->H_()V

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g()V

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h()V

    return-void
.end method

.method private m()I
    .locals 3

    .prologue
    .line 436
    const/4 v2, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 439
    instance-of v0, v1, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const v0, 0x7f0f0391

    .line 498
    :goto_0
    return v0

    .line 442
    :cond_0
    instance-of v0, v1, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    const v0, 0x7f0f0392

    goto :goto_0

    .line 445
    :cond_1
    instance-of v0, v1, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    const v0, 0x7f0f0393

    goto :goto_0

    .line 448
    :cond_2
    instance-of v0, v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    if-eqz v0, :cond_3

    .line 449
    const v0, 0x7f0f02b2

    goto :goto_0

    .line 450
    :cond_3
    instance-of v0, v1, Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    if-eqz v0, :cond_5

    .line 451
    check-cast v1, Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b()Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    .line 453
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_4

    .line 454
    const v0, 0x7f0f02b4

    goto :goto_0

    .line 455
    :cond_4
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_18

    .line 456
    const v0, 0x7f0f02b3

    goto :goto_0

    .line 458
    :cond_5
    instance-of v0, v1, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    if-eqz v0, :cond_6

    .line 459
    const v0, 0x7f0f02b5

    goto :goto_0

    .line 460
    :cond_6
    instance-of v0, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    if-nez v0, :cond_7

    instance-of v0, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    if-eqz v0, :cond_8

    .line 462
    :cond_7
    const v0, 0x7f0f02b6

    goto :goto_0

    .line 463
    :cond_8
    instance-of v0, v1, Lcom/yelp/android/ui/activities/feed/ActivityFeed;

    if-eqz v0, :cond_9

    .line 464
    const v0, 0x7f0f02b7

    goto :goto_0

    .line 465
    :cond_9
    instance-of v0, v1, Lcom/yelp/android/ui/activities/notifications/ActivityNotifications;

    if-eqz v0, :cond_a

    .line 466
    const v0, 0x7f0f02b8

    goto :goto_0

    .line 467
    :cond_a
    instance-of v0, v1, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    if-eqz v0, :cond_b

    .line 468
    const v0, 0x7f0f02b9

    goto :goto_0

    .line 469
    :cond_b
    instance-of v0, v1, Lcom/yelp/android/ui/activities/events/ActivityEvents;

    if-eqz v0, :cond_c

    .line 470
    const v0, 0x7f0f02bb

    goto :goto_0

    .line 471
    :cond_c
    instance-of v0, v1, Lcom/yelp/android/ui/activities/ActivityRecents;

    if-eqz v0, :cond_d

    .line 472
    const v0, 0x7f0f02ba

    goto :goto_0

    .line 473
    :cond_d
    instance-of v0, v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;

    if-eqz v0, :cond_e

    .line 474
    const v0, 0x7f0f02bd

    goto/16 :goto_0

    .line 475
    :cond_e
    instance-of v0, v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    if-eqz v0, :cond_f

    .line 476
    const v0, 0x7f0f02be

    goto/16 :goto_0

    .line 477
    :cond_f
    instance-of v0, v1, Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    if-eqz v0, :cond_10

    .line 478
    const v0, 0x7f0f02bf

    goto/16 :goto_0

    .line 479
    :cond_10
    instance-of v0, v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    if-eqz v0, :cond_11

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 481
    const v0, 0x7f0f02c0

    goto/16 :goto_0

    .line 482
    :cond_11
    instance-of v0, v1, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    if-eqz v0, :cond_12

    .line 483
    const v0, 0x7f0f02c1

    goto/16 :goto_0

    .line 484
    :cond_12
    instance-of v0, v1, Lcom/yelp/android/ui/ActivityMonocle;

    if-eqz v0, :cond_13

    .line 485
    const v0, 0x7f0f02c2

    goto/16 :goto_0

    .line 486
    :cond_13
    instance-of v0, v1, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    if-eqz v0, :cond_14

    .line 487
    const v0, 0x7f0f02c3

    goto/16 :goto_0

    .line 488
    :cond_14
    instance-of v0, v1, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    if-eqz v0, :cond_15

    .line 489
    const v0, 0x7f0f02c4

    goto/16 :goto_0

    .line 490
    :cond_15
    instance-of v0, v1, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    if-eqz v0, :cond_16

    .line 491
    const v0, 0x7f0f02c5

    goto/16 :goto_0

    .line 492
    :cond_16
    instance-of v0, v1, Lcom/yelp/android/ui/activities/bugreport/ActivityReportABug;

    if-eqz v0, :cond_17

    .line 493
    const v0, 0x7f0f02c6

    goto/16 :goto_0

    .line 494
    :cond_17
    instance-of v0, v1, Lcom/yelp/android/ui/activities/support/ActivitySupportCenter;

    if-eqz v0, :cond_18

    .line 495
    const v0, 0x7f0f02c7

    goto/16 :goto_0

    :cond_18
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i()V

    return-void
.end method

.method private n()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 502
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v7

    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f038c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 504
    const v0, 0x7f0f0391

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 505
    const v1, 0x7f0f0392

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 506
    const v2, 0x7f0f0393

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 507
    const v3, 0x7f0f0390

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 508
    const v8, 0x7f0f038f

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 509
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f080010

    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v10

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v8, v9, v10, v11}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 512
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v8, 0x7f080025

    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v0, v8, v9, v10}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 518
    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v0

    .line 519
    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->M()I

    move-result v1

    .line 520
    add-int v8, v0, v1

    .line 521
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v5, v1, v0, v8, v9}, Lcom/yelp/android/serializable/Passport;->a(ZIIILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    if-lez v8, :cond_1

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 526
    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-virtual {v4, v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 528
    return-void

    :cond_0
    move v0, v6

    .line 517
    goto :goto_0

    :cond_1
    move v5, v6

    .line 525
    goto :goto_1
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->n()V

    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 535
    new-instance v0, Lcom/yelp/android/ui/util/e;

    new-array v1, v4, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    .line 536
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 537
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 538
    new-instance v1, Lcom/yelp/android/ui/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Lcom/yelp/android/DinoListView;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/ui/d;-><init>(Landroid/content/Context;Lcom/yelp/android/DinoListView;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->q:Lcom/yelp/android/ui/d;

    .line 541
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 542
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->q:Lcom/yelp/android/ui/d;

    invoke-virtual {v1}, Lcom/yelp/android/ui/d;->c()V

    .line 545
    :cond_0
    new-instance v1, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/aj;-><init>()V

    .line 546
    invoke-static {v0}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 547
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->q:Lcom/yelp/android/ui/d;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 548
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Lcom/yelp/android/DinoListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/DinoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 549
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/a;->a()V

    .line 322
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 324
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f038c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->C()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 336
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Drawer:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 340
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/yelp/android/appdata/ApiPreferences;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ApiPreferences;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {v0}, Lcom/yelp/android/appdata/ApiPreferences;->a()V

    .line 345
    :cond_1
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f038c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 313
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->r:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/a;->b()V

    .line 349
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 258
    sget-object v0, Lcom/yelp/android/appdata/webrequests/co;->b:Landroid/content/IntentFilter;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$2;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 268
    sget-object v0, Lcom/yelp/android/appdata/webrequests/co;->c:Landroid/content/IntentFilter;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$3;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 277
    const-string/jumbo v0, "com.yelp.android.messages.count.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 279
    const-string/jumbo v0, "com.yelp.android.notifications.count.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 282
    const-string/jumbo v0, "user"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 284
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m()I

    move-result v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 248
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b:Lcom/yelp/android/ui/activities/drawer/DrawerFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string/jumbo v0, "DrawerFragment"

    const-string/jumbo v1, "Parent activity must implement DrawerFragmentListener"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f020360

    const v7, 0x7f0f02c7

    const v4, 0x7f0f02c6

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 121
    const v0, 0x7f0300b0

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->c:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f038d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f0394

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i:Landroid/widget/TextView;

    .line 130
    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/j;->f()I

    move-result v0

    .line 131
    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/j;->e()I

    move-result v1

    .line 133
    new-instance v2, Lcom/yelp/android/cm/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v8, v0}, Lcom/yelp/android/cm/d;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j:Lcom/yelp/android/cm/d;

    .line 135
    new-instance v0, Lcom/yelp/android/cm/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v8, v1}, Lcom/yelp/android/cm/d;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/cm/d;

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j:Lcom/yelp/android/cm/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j:Lcom/yelp/android/cm/d;

    invoke-virtual {v1}, Lcom/yelp/android/cm/d;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j:Lcom/yelp/android/cm/d;

    invoke-virtual {v2}, Lcom/yelp/android/cm/d;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/yelp/android/cm/d;->setBounds(IIII)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/cm/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/cm/d;

    invoke-virtual {v1}, Lcom/yelp/android/cm/d;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k:Lcom/yelp/android/cm/d;

    invoke-virtual {v2}, Lcom/yelp/android/cm/d;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/yelp/android/cm/d;->setBounds(IIII)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f038e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f0391

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f0392

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f0393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {}, Lcom/yelp/android/ui/util/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 192
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "US"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :goto_2
    const v0, 0x7f0300af

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 206
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->n:Landroid/widget/ImageView;

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020217

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->n:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    const v0, 0x7f0f02ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/DinoListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Lcom/yelp/android/DinoListView;

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->l:Lcom/yelp/android/DinoListView;

    invoke-virtual {v0, v5}, Lcom/yelp/android/DinoListView;->setClickable(Z)V

    .line 214
    const v0, 0x7f0f02af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->o:Landroid/widget/ImageView;

    .line 215
    const v0, 0x7f0f02b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->p:Landroid/widget/Button;

    .line 216
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->o()V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment$1;-><init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/at;->a(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V

    .line 237
    return-object v1

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    const v1, 0x7f0f02c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 202
    :cond_4
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 293
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->k()V

    .line 294
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->j()V

    .line 295
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->h()V

    .line 296
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->i()V

    .line 297
    return-void
.end method
