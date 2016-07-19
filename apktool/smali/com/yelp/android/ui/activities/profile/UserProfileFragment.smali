.class public Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
.super Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;,
        Lcom/yelp/android/ui/activities/profile/UserProfileFragment$a;
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/yelp/android/serializable/User;

.field private n:Lcom/yelp/android/appdata/webrequests/fn;

.field private o:Lcom/yelp/android/appdata/webrequests/bx;

.field private p:Lcom/yelp/android/ui/util/aj;

.field private q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

.field private r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;

.field private final t:Landroid/view/View$OnClickListener;

.field private final u:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final v:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final w:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
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
    .line 122
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;-><init>()V

    .line 560
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$1;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->t:Landroid/view/View$OnClickListener;

    .line 568
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->u:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 586
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$3;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->v:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 604
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->w:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 626
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 122
    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;-><init>()V

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    const-string/jumbo v2, "about_me"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;-><init>()V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "about_me"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string/jumbo v2, "check_in_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->x()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->y()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/ui/activities/profile/UserProfileView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->y()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->s:Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->E()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/ui/activities/feed/a;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    return-object v0
.end method

.method private t()V
    .locals 4

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->u()V

    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 382
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->w()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Lcom/yelp/android/serializable/User;Z)V

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getFollowButton()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getFollowButton()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h()V

    .line 395
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->v()V

    .line 396
    return-void

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(Lcom/yelp/android/serializable/User;Z)V

    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Lcom/yelp/android/serializable/User;)V

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpHeaderButtons(Lcom/yelp/android/serializable/User;)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Profile:Lcom/yelp/android/analytics/iris/ViewIri;

    :goto_0
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 471
    return-void

    .line 466
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserProfile:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1
.end method

.method private v()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->w()I

    move-result v0

    .line 522
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/b$a;->UserProfileView:[I

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 530
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 532
    if-eqz v2, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 538
    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    const/16 v0, 0x9

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 541
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 543
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 544
    return-void
.end method

.method private w()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->v()Lcom/yelp/android/serializable/User$EliteYear;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/serializable/User$EliteYear;->b:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getUserProfileStyle()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0901ee

    goto :goto_0
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fq;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->v:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fq;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fq;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ff;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->u:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ff;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ff;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/User;->g(I)V

    .line 479
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->p:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    .line 480
    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 340
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 341
    instance-of v1, v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    if-eqz v1, :cond_1

    .line 342
    check-cast v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 343
    iget-object v1, v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->iri:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 344
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getViewIntent(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    if-eqz v1, :cond_0

    .line 346
    check-cast v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    .line 347
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActionToTry;->intentToStartAction(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    .line 348
    iget-object v1, v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;->iri:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 349
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->p:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f0705d2

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    .line 351
    iget-object v1, v1, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/activities/profile/e;

    .line 353
    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->r:Ljava/util/Queue;

    new-instance v4, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/e;->a()Lcom/yelp/android/ui/util/w;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$a;-><init>(Lcom/yelp/android/ui/util/w;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;)V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    iget v1, p1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->b:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->f(I)V

    .line 475
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/bx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/bx;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bx;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 331
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/bx;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/yelp/android/appdata/webrequests/bx;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/appdata/webrequests/k$b;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/bx;

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/bx;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bx;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 334
    :cond_1
    return-void

    .line 330
    :cond_2
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 368
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    .line 369
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->t()V

    .line 374
    return-void
.end method

.method public h()V
    .locals 10

    .prologue
    const v9, 0x7f0f001f

    const v8, 0x7f070635

    const v7, 0x7f0705d2

    const v6, 0x7f0101cc

    const/4 v5, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setHeaderDividersEnabled(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->c()Lcom/yelp/android/ui/activities/feed/a;

    move-result-object v2

    .line 405
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->p:Lcom/yelp/android/ui/util/aj;

    .line 407
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->CONTRIBUTIONS_AND_AWARDS:Ljava/util/Set;

    .line 408
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-nez v1, :cond_3

    .line 409
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 410
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->AWARDS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 411
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    iget-boolean v0, v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->privateStat:Z

    if-eqz v0, :cond_1

    .line 413
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 417
    :cond_3
    new-instance v1, Lcom/yelp/android/ui/activities/profile/b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getBoldTitleColor()I

    move-result v4

    invoke-direct {v1, v0, v3, v4}, Lcom/yelp/android/ui/activities/profile/b;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/User;I)V

    .line 420
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-eqz v0, :cond_4

    .line 425
    sget-object v0, Lcom/yelp/android/appdata/Features;->messaging:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 426
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->MESSAGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/w;->c(Ljava/lang/Object;)V

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->p:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f07014e

    invoke-static {v1}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 434
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-eqz v0, :cond_5

    .line 435
    new-instance v0, Lcom/yelp/android/ui/activities/profile/a;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->q:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getBoldTitleColor()I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/yelp/android/ui/activities/profile/a;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/User;I)V

    .line 440
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->p:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 448
    :cond_5
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-eqz v0, :cond_7

    const v0, 0x7f0703f4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 452
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->p:Lcom/yelp/android/ui/util/aj;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 458
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 459
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->p_()V

    .line 461
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->p:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Landroid/widget/ListAdapter;)V

    .line 462
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->y()V

    .line 463
    return-void

    .line 448
    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->ac()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v8, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public i()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->a(Z)V

    .line 485
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/fn;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 488
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-eqz v0, :cond_2

    .line 489
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->w:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2, v2}, Lcom/yelp/android/appdata/webrequests/fn;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 500
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 501
    :goto_1
    return-void

    .line 492
    :cond_1
    const-string/jumbo v0, "UserProfileFragment"

    const-string/jumbo v1, "User not logged in"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 496
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->w:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/fn;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->r:Ljava/util/Queue;

    .line 163
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->t()V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->s:Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;->a(Lcom/yelp/android/serializable/User;)V

    .line 179
    :goto_1
    return-void

    .line 163
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i()V

    goto :goto_1

    .line 175
    :cond_3
    const-string/jumbo v0, "UserProfileFragment"

    const-string/jumbo v1, "Tried to start UserProfileFragment without a check-in, user, or user id"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onAttach(Landroid/app/Activity;)V

    .line 152
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->s:Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must attach your UserProfileFragment to an UserProfileListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    .line 129
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "check_in_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->k:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "about_me"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string/jumbo v0, "saved_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    .line 135
    const-string/jumbo v0, "about_me"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j:Ljava/lang/String;

    .line 144
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->setHasOptionsMenu(Z)V

    .line 145
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    const v1, 0x7f100028

    .line 223
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 224
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x7f100000

    .line 225
    :goto_0
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    if-ne v0, v1, :cond_0

    .line 227
    const v0, 0x7f0f0624

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_2

    .line 229
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 235
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 224
    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->T()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f07061e

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    const v0, 0x7f0702e5

    goto :goto_2
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onDetach()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->s:Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;

    .line 219
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const v5, 0x7f070393

    const/4 v0, 0x1

    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 283
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 248
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070204

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v5, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x409

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 261
    :sswitch_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 267
    const/16 v2, 0x3eb

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    :sswitch_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070392

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-static {v3, v4}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 274
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 277
    :sswitch_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->x()V

    goto :goto_0

    .line 280
    :sswitch_5
    new-instance v1, Lcom/yelp/android/services/UserProfileShareFormatter;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-direct {v1, v2}, Lcom/yelp/android/services/UserProfileShareFormatter;-><init>(Lcom/yelp/android/serializable/User;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/services/ShareFormatter;)V

    goto :goto_0

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00fa -> :sswitch_0
        0x7f0f05d5 -> :sswitch_1
        0x7f0f0622 -> :sswitch_2
        0x7f0f0623 -> :sswitch_3
        0x7f0f0624 -> :sswitch_4
        0x7f0f0625 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onPause()V

    .line 204
    const-string/jumbo v0, "feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/bx;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 205
    const-string/jumbo v0, "user_profile"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 206
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 294
    const v0, 0x7f0f0623

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    sget-object v4, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/User;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 301
    :cond_0
    const v0, 0x7f0f05d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_1

    .line 304
    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    sget-object v4, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_MESSAGE:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/User;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 309
    :cond_1
    const v0, 0x7f0f0622

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 310
    if-eqz v3, :cond_2

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->V()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f070105

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    sget-object v4, Lcom/yelp/android/serializable/FeatureSet$Feature;->ADD_FRIEND:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/User;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    :cond_2
    const v0, 0x7f0f0625

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_3

    .line 323
    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v3, :cond_6

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 311
    goto :goto_0

    .line 312
    :cond_5
    const v0, 0x7f070104

    goto :goto_1

    :cond_6
    move v1, v2

    .line 323
    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onResume()V

    .line 184
    const-string/jumbo v0, "feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/bx;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bx;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/bx;

    .line 185
    const-string/jumbo v0, "user_profile"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->w:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fn;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n:Lcom/yelp/android/appdata/webrequests/fn;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 199
    :cond_1
    :goto_1
    return-void

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->o:Lcom/yelp/android/appdata/webrequests/bx;

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->p_()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    const-string/jumbo v0, "saved_user"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 212
    const-string/jumbo v0, "about_me"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    return-void
.end method

.method public q_()V
    .locals 0

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i()V

    .line 361
    return-void
.end method
