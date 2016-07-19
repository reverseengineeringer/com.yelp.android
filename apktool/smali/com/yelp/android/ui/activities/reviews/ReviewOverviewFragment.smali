.class public Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;
.super Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;
.source "ReviewOverviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$2;
    }
.end annotation


# instance fields
.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

.field private h:Landroid/view/View;

.field private i:Ljava/lang/String;

.field private j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/widget/ToggleButton;

.field private r:Landroid/widget/ToggleButton;

.field private s:Lcom/yelp/android/appdata/webrequests/dz;

.field private final t:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dz$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;-><init>()V

    .line 576
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->t:Lcom/yelp/android/appdata/webrequests/k$b;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Lcom/yelp/android/appdata/webrequests/dz;)Lcom/yelp/android/appdata/webrequests/dz;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/dz;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;-><init>()V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string/jumbo v2, "review_source"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->n:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->o:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/appdata/webrequests/k$b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->t:Lcom/yelp/android/appdata/webrequests/k$b;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/dz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/dz;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dz;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 386
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/dz;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/dz;->a([Ljava/lang/Object;)V

    .line 387
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/dz;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 433
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 434
    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 435
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$8;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$8;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 445
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->p()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v1

    if-nez v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g:Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 450
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 451
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 453
    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g:Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    return-object v0
.end method

.method private f()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 464
    new-instance v1, Lcom/yelp/android/serializable/ReviewBroadcast;

    invoke-direct {v1}, Lcom/yelp/android/serializable/ReviewBroadcast;-><init>()V

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(I)V

    .line 467
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 468
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(Z)V

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->b(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->c(Ljava/lang/String;)V

    .line 471
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.review.state.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 475
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->l:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v5}, Lcom/yelp/android/ui/activities/reviews/c;->k()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v6}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v6

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->n:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->o:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    invoke-static/range {v0 .. v10}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 490
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "yelp:external_request"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const-string/jumbo v0, "yelp:external_request"

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v2

    .line 497
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 498
    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->A()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 505
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    .line 524
    :goto_1
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq v1, v3, :cond_1

    .line 527
    invoke-virtual {v2, v11}, Lcom/yelp/android/serializable/User;->d(I)V

    .line 530
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 531
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 532
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 533
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 534
    return-void

    .line 467
    :cond_2
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    goto/16 :goto_0

    .line 507
    :cond_3
    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->J()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 514
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->ac()Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->TIP:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    :goto_2
    invoke-static {v1, v3, v4, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->REVIEW:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private g()V
    .locals 4

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    .line 540
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 541
    sget v2, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 543
    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 566
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 567
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    return-object v0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "stars"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->q:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->r:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    const-class v3, Lcom/yelp/android/ui/activities/ActivityRetryReviewShare;

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/util/p;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/List;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 408
    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 419
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$2;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 422
    :pswitch_0
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ReviewWriteShare:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v3, "social_network"

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->getTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :cond_0
    return-void

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 359
    sparse-switch p1, :sswitch_data_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 361
    :sswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 362
    new-instance v0, Ljava/util/LinkedList;

    const-string/jumbo v1, "retry_shares"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    .line 368
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c()V

    .line 369
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f()V

    goto :goto_0

    .line 373
    :sswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d()V

    goto :goto_0

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_0
        0x418 -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 98
    check-cast p1, Lcom/yelp/android/ui/activities/reviews/c;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 262
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 263
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 110
    const v0, 0x7f0300d6

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0f033f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0f033b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c:Landroid/view/ViewGroup;

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0f0339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0f033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/StarsView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0f033d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g:Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0f0340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0f0342

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->q:Landroid/widget/ToggleButton;

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0f0341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->r:Landroid/widget/ToggleButton;

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->q:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->r:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$3;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->q:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->r:Landroid/widget/ToggleButton;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/p;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/User;ZLandroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$4;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnStarsClicked(Ljava/lang/Runnable;)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g:Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$5;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$6;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->l()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    invoke-virtual {v6, v2}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setVisibility(I)V

    .line 205
    invoke-virtual {v6, v7}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setLeft(Z)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :goto_1
    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->setHasOptionsMenu(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateOptionsMenu()V

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g()V

    .line 246
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    return-object v0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0f033a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070194

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    invoke-virtual {v6, v2}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setVisibility(I)V

    .line 210
    invoke-virtual {v6, v7}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setLeft(Z)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {v6, v8}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c:Landroid/view/ViewGroup;

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    .line 214
    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setLeft(Z)V

    .line 216
    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->refreshDrawableState()V

    goto :goto_0

    .line 228
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/av;->d(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 230
    sget v1, Lcom/yelp/android/ui/util/av;->d:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 231
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/dz;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/dz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dz;->a(Z)V

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/dz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dz;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 256
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onDestroy()V

    .line 257
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 272
    :cond_0
    const v0, 0x7f0f05f0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 273
    const v1, 0x7f0704a7

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 274
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$7;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method
