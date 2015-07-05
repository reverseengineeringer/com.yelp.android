.class public Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;
.super Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;
.source "ReviewOverviewFragment.java"


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

.field private s:Lcom/yelp/android/appdata/webrequests/fa;

.field private t:Z

.field private final u:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;-><init>()V

    .line 527
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ay;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ay;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->u:Lcom/yelp/android/appdata/webrequests/j;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Lcom/yelp/android/appdata/webrequests/fa;)Lcom/yelp/android/appdata/webrequests/fa;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/fa;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->n:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->o:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/appdata/webrequests/j;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->u:Lcom/yelp/android/appdata/webrequests/j;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/fa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/fa;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fa;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 351
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/support/h;->u()Ljava/lang/String;

    move-result-object v1

    .line 352
    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWritePost:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v3, "sign_up_status"

    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 354
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/fa;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fa;->executeWithLocation([Ljava/lang/Object;)V

    .line 355
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/fa;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 400
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 401
    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 402
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/aw;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/aw;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 411
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->p()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->g()I

    move-result v1

    if-nez v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g:Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 419
    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g:Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    return-object v0
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 430
    new-instance v1, Lcom/yelp/android/serializable/ReviewBroadcast;

    invoke-direct {v1}, Lcom/yelp/android/serializable/ReviewBroadcast;-><init>()V

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->setBusinessId(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->setRating(I)V

    .line 433
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->setReviewState(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 434
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->setConvertedToTip(Z)V

    .line 435
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->setText(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->setId(Ljava/lang/String;)V

    .line 437
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.review.state.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->l:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v5}, Lcom/yelp/android/ui/activities/reviews/ao;->k()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v6}, Lcom/yelp/android/ui/activities/reviews/ao;->g()I

    move-result v6

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->n:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->o:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v9}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 449
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "yelp:external_request"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string/jumbo v0, "yelp:external_request"

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v2

    .line 455
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    .line 456
    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->y()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 463
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    .line 479
    :goto_1
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq v1, v3, :cond_1

    .line 481
    invoke-virtual {v2, v10}, Lcom/yelp/android/serializable/User;->addReviewCount(I)V

    .line 484
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 485
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 486
    return-void

    .line 433
    :cond_2
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    goto/16 :goto_0

    .line 465
    :cond_3
    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getUserPhotoCount()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 472
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod()Ljava/lang/String;

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
    .line 489
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    .line 492
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 493
    sget v2, Lcom/yelp/android/ui/util/cw;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 495
    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ax;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/ax;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 518
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m:Z

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    return-object v0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    .line 523
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

.method static synthetic i(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->t:Z

    return v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->q:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->r:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->t:Z

    .line 343
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    const-class v3, Lcom/yelp/android/ui/activities/ActivityRetryReviewShare;

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/util/z;->a(Landroid/content/Context;Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/util/List;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_0

    .line 372
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 373
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 383
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

    .line 384
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/aq;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 387
    :pswitch_0
    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteShare:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v3, "social_network"

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->getTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/services/ShareService$ShareObjectType;->REVIEW:Lcom/yelp/android/services/ShareService$ShareObjectType;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 397
    return-void

    .line 384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 323
    sparse-switch p1, :sswitch_data_0

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 325
    :sswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 326
    new-instance v0, Ljava/util/LinkedList;

    const-string/jumbo v1, "yelp:retry_shares"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/f;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    .line 329
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c()V

    .line 330
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f()V

    goto :goto_0

    .line 334
    :sswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d()V

    goto :goto_0

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_0
        0x413 -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    check-cast p1, Lcom/yelp/android/ui/activities/reviews/ao;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->p:Ljava/util/List;

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 244
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 245
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    const v0, 0x7f0300bb

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0c02d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0c02d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c:Landroid/view/ViewGroup;

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v1, 0x7f0c02d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    .line 112
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v2, 0x7f0c02d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviews/StarsView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 113
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v2, 0x7f0c02d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g:Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    .line 115
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v2, 0x7f0c02da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    .line 117
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v2, 0x7f0c02dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->q:Landroid/widget/ToggleButton;

    .line 119
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v2, 0x7f0c02db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->r:Landroid/widget/ToggleButton;

    .line 122
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->q:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ap;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/ap;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->r:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ar;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/ar;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->q:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->r:Landroid/widget/ToggleButton;

    invoke-static {v6, v1, v6, v2, v3}, Lcom/yelp/android/util/z;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Landroid/content/SharedPreferences;Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/reviews/ao;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    .line 146
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/as;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/as;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnStarsClicked(Ljava/lang/Runnable;)V

    .line 162
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g:Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/at;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/at;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/au;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/au;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->l()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->o()Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setVisibility(I)V

    .line 187
    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setLeft(Z)V

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :goto_1
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->setHasOptionsMenu(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateOptionsMenu()V

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g()V

    .line 228
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    return-object v0

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e:Landroid/view/View;

    const v2, 0x7f0c02d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070115

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 191
    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setVisibility(I)V

    .line 192
    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setLeft(Z)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c:Landroid/view/ViewGroup;

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    .line 196
    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setLeft(Z)V

    .line 198
    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->refreshDrawableState()V

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/yelp/android/ui/util/cw;->d(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 212
    sget v1, Lcom/yelp/android/ui/util/cw;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 213
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/fa;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/fa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fa;->cancel(Z)V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->s:Lcom/yelp/android/appdata/webrequests/fa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fa;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 238
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onDestroy()V

    .line 239
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 255
    const v0, 0x7f0c04e6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 256
    const v1, 0x7f070490

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 257
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/av;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/av;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 319
    return-void
.end method
