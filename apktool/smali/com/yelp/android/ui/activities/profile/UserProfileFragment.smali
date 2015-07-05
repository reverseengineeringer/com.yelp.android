.class public Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
.super Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private g:Lcom/yelp/android/serializable/User;

.field private h:Lcom/yelp/android/appdata/webrequests/gx;

.field private i:Lcom/yelp/android/appdata/webrequests/ce;

.field private j:Lcom/yelp/android/ui/util/bs;

.field private k:Lcom/yelp/android/ui/activities/profile/UserProfileView;

.field private l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/yelp/android/ui/activities/profile/z;

.field private final n:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;-><init>()V

    .line 483
    new-instance v0, Lcom/yelp/android/ui/activities/profile/w;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/w;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/m;

    .line 499
    new-instance v0, Lcom/yelp/android/ui/activities/profile/x;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/x;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/j;

    .line 114
    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->isFullUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;-><init>()V

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    const-string/jumbo v2, "about_me"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;-><init>()V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v2, "about_me"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    const-string/jumbo v2, "check_in_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/ui/activities/profile/z;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/ui/activities/profile/z;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->C()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method private l()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->u()I

    move-result v0

    .line 460
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/b;->UserProfileView:[I

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 463
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 465
    if-eqz v2, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 470
    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    const/16 v0, 0x9

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 473
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 475
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 476
    return-void
.end method

.method private u()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getMostRecentEliteYear()Lcom/yelp/android/serializable/User$EliteYear;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/serializable/User$EliteYear;->type:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getUserProfileStyle()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0f017e

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/User;->setUnreadMessageCount(I)V

    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 425
    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 304
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 305
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 306
    instance-of v1, v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    if-eqz v1, :cond_1

    .line 307
    check-cast v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 308
    iget-object v1, v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->iri:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 309
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getViewIntent(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    .line 312
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActionToTry;->intentToStartAction(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    .line 313
    iget-object v1, v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;->iri:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 314
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Lcom/yelp/android/ui/util/bs;

    const v3, 0x7f0705ea

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    .line 315
    iget-object v1, v1, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/activities/profile/s;

    .line 316
    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Ljava/util/Queue;

    new-instance v4, Lcom/yelp/android/ui/activities/profile/y;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/s;->a()Lcom/yelp/android/ui/util/au;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lcom/yelp/android/ui/activities/profile/y;-><init>(Lcom/yelp/android/ui/util/au;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/profile/j;)V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    iget v1, p1, Lcom/yelp/android/ui/activities/profile/j;->b:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->addComplimentCount(I)V

    .line 419
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    iget v1, p1, Lcom/yelp/android/ui/activities/profile/j;->d:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->addFriendCount(I)V

    .line 420
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_0

    .line 296
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 297
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ce;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v1, v2, v0, v3}, Lcom/yelp/android/appdata/webrequests/ce;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i:Lcom/yelp/android/appdata/webrequests/ce;

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i:Lcom/yelp/android/appdata/webrequests/ce;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ce;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 300
    :cond_0
    return-void

    .line 296
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/serializable/User;)V
    .locals 11

    .prologue
    const v10, 0x7f0c001d

    const v9, 0x7f070657

    const v8, 0x7f0705ea

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 338
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    .line 339
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iput-boolean v7, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->u()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Lcom/yelp/android/serializable/User;Z)V

    .line 353
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l()V

    .line 355
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 356
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setHeaderDividersEnabled(Z)V

    .line 357
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 358
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 359
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 360
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->f()Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v2

    .line 362
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Lcom/yelp/android/ui/util/bs;

    .line 364
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->CONTRIBUTIONS_AND_AWARDS:Ljava/util/Set;

    .line 365
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-nez v1, :cond_5

    .line 366
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 367
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->AWARDS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 368
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 369
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    iget-boolean v0, v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->privateStat:Z

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(Lcom/yelp/android/serializable/User;Z)V

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Lcom/yelp/android/serializable/User;)V

    goto :goto_0

    .line 358
    :cond_3
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 374
    :cond_5
    new-instance v1, Lcom/yelp/android/ui/activities/profile/k;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getBoldTitleColor()I

    move-result v3

    invoke-direct {v1, v0, p1, v3}, Lcom/yelp/android/ui/activities/profile/k;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/User;I)V

    .line 377
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-eqz v0, :cond_6

    .line 382
    sget-object v0, Lcom/yelp/android/appdata/Features;->messaging:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 383
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->MESSAGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/au;->b(Ljava/lang/Object;)V

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Lcom/yelp/android/ui/util/bs;

    const v3, 0x7f0700cb

    invoke-static {v1}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    sget v4, Lcom/yelp/android/appdata/ao;->f:I

    sget v5, Lcom/yelp/android/appdata/ao;->f:I

    invoke-virtual {v1, v10, v4, v5}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 392
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-eqz v0, :cond_7

    .line 393
    new-instance v0, Lcom/yelp/android/ui/activities/profile/a;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getBoldTitleColor()I

    move-result v3

    invoke-direct {v0, v1, p1, v3}, Lcom/yelp/android/ui/activities/profile/a;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/User;I)V

    .line 395
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v8}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    const v3, 0x7f01015e

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    sget v3, Lcom/yelp/android/appdata/ao;->f:I

    sget v4, Lcom/yelp/android/appdata/ao;->f:I

    invoke-virtual {v0, v10, v3, v4}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 403
    :cond_7
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-eqz v0, :cond_9

    const v0, 0x7f0703be

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 405
    :goto_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v1, v9, v0, v2}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 407
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 408
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a_()V

    .line 412
    :goto_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Landroid/widget/ListAdapter;)V

    .line 413
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->w()V

    .line 415
    :cond_8
    return-void

    .line 403
    :cond_9
    new-array v0, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v9, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 410
    :cond_a
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Ljava/util/List;)V

    goto :goto_4
.end method

.method public g()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Profile:Lcom/yelp/android/analytics/iris/ViewIri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserProfile:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gx;->cancel(Z)V

    .line 430
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/gx;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 432
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-eqz v0, :cond_1

    .line 433
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gx;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v2, v2}, Lcom/yelp/android/appdata/webrequests/gx;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gx;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 439
    return-void

    .line 435
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gx;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/m;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/gx;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    goto :goto_0
.end method

.method public m_()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h()V

    .line 324
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Ljava/util/Queue;

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isFullUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j()V

    .line 162
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->C()V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/serializable/User;)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/ui/activities/profile/z;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/profile/z;->a(Lcom/yelp/android/serializable/User;)V

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h()V

    goto :goto_0

    .line 171
    :cond_2
    const-string/jumbo v0, "UserProfileFragment"

    const-string/jumbo v1, "Tried to start UserProfileFragment without a check-in, user, or user id"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onAttach(Landroid/app/Activity;)V

    .line 143
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/profile/z;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/ui/activities/profile/z;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must attach your UserProfileFragment to an UserProfileListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->c:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "check_in_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "about_me"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const-string/jumbo v0, "saved_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->c:Ljava/lang/String;

    .line 135
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->setHasOptionsMenu(Z)V

    .line 136
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 220
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x7f100000

    .line 221
    :goto_0
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 222
    return-void

    .line 220
    :cond_0
    const v0, 0x7f100024

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onDetach()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/ui/activities/profile/z;

    .line 215
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const v4, 0x7f070631

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 230
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 257
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 235
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v4, v4, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x406

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070358

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-static {v3, v4}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 249
    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    :sswitch_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070356

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-static {v3, v4}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 254
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x7f0c014a -> :sswitch_0
        0x7f0c04cf -> :sswitch_1
        0x7f0c0518 -> :sswitch_2
        0x7f0c0519 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onPause()V

    .line 201
    const-string/jumbo v0, "feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i:Lcom/yelp/android/appdata/webrequests/ce;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 202
    const-string/jumbo v0, "user_profile"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 203
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 268
    const v0, 0x7f0c0519

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    sget-object v3, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/User;->isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 274
    :cond_0
    const v0, 0x7f0c04cf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_1

    .line 277
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    sget-object v3, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_MESSAGE:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/User;->isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    :cond_1
    const v0, 0x7f0c0518

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_2

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isFriend()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isMale()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f07008a

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    sget-object v3, Lcom/yelp/android/serializable/FeatureSet$Feature;->ADD_FRIEND:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/User;->isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 291
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 284
    goto :goto_0

    .line 285
    :cond_4
    const v0, 0x7f070089

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onResume()V

    .line 180
    const-string/jumbo v0, "feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i:Lcom/yelp/android/appdata/webrequests/ce;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    .line 181
    const-string/jumbo v0, "user_profile"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gx;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 196
    :cond_1
    :goto_1
    return-void

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i:Lcom/yelp/android/appdata/webrequests/ce;

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a_()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string/jumbo v0, "saved_user"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 209
    return-void
.end method
