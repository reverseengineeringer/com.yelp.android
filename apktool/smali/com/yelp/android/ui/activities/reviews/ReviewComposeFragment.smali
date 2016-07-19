.class public Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;
.super Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;
.source "ReviewComposeFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dy$a;",
        ">;",
        "Lcom/yelp/android/ui/panels/PanelError$a;"
    }
.end annotation


# instance fields
.field private A:Lcom/yelp/android/appdata/webrequests/dy$a;

.field private B:Ljava/util/Timer;

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/util/TimerTask;

.field private E:Landroid/text/TextWatcher;

.field private final F:Landroid/view/View$OnClickListener;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/EditText;

.field private g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private h:Lcom/yelp/android/ui/panels/PanelError;

.field private i:Lcom/yelp/android/ui/activities/reviews/b;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private n:Z

.field private o:Lcom/yelp/android/serializable/YelpBusiness;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewThreshold;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/yelp/android/appdata/webrequests/dy;

.field private z:Lcom/yelp/android/appdata/webrequests/YelpException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;-><init>()V

    .line 91
    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p:I

    .line 92
    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    .line 93
    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    .line 110
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->F:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p:I

    return p1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 640
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 641
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 642
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 679
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    const v2, 0x7f0f0331

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 682
    :cond_0
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->c()I

    move-result v0

    .line 572
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0334

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 577
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 578
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 580
    :cond_0
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 581
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/b;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHeight(I)V

    .line 588
    return-void

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private a(Landroid/text/Spanned;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const v4, 0x7f070541

    const/4 v1, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dy;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 771
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    :cond_3
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/b;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 778
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/b;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 788
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 789
    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 790
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$2;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 801
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070579

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 810
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 764
    goto/16 :goto_1

    .line 773
    :cond_5
    const v2, 0x7f020463

    goto/16 :goto_2

    .line 778
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->F:Landroid/view/View$OnClickListener;

    goto :goto_3

    .line 812
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 824
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto/16 :goto_0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/dy$a;)V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 931
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 939
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    if-eqz v0, :cond_1

    .line 940
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m()V

    .line 942
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    .line 943
    return-void

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/b;->a(Ljava/util/List;)V

    goto :goto_0

    .line 935
    :cond_3
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/b;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 937
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/b;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-lez v0, :cond_0

    .line 596
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Ljava/lang/String;)V

    .line 598
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;J)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Landroid/content/res/Configuration;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 492
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->v:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r:I

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->l()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b:Landroid/view/View;

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j:Landroid/view/View;

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$8;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i()V

    .line 430
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h()V

    .line 431
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 434
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$9;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->E:Landroid/text/TextWatcher;

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->E:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 463
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 509
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->t:I

    return v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 565
    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p:I

    return v0
.end method

.method private j()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 618
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 619
    if-eqz v0, :cond_0

    .line 620
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 621
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 624
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 625
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 630
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 631
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 632
    const-string/jumbo v0, "stars"

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 634
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 635
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V

    .line 636
    return-object v1
.end method

.method private k()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 691
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->l()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->o()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 694
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 695
    :goto_1
    iget v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 702
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 703
    const v0, 0x7f070322

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    :goto_3
    return-object v0

    :cond_0
    move v0, v2

    .line 691
    goto :goto_0

    :cond_1
    move v3, v2

    .line 694
    goto :goto_1

    :cond_2
    move v1, v2

    .line 695
    goto :goto_2

    .line 704
    :cond_3
    if-eqz v0, :cond_4

    .line 705
    const v0, 0x7f070544

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 707
    :cond_4
    const v0, 0x7f070541

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->v:Z

    return v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r:I

    return v0
.end method

.method private l()Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 716
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 717
    const/4 v1, 0x0

    .line 719
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewThreshold;

    .line 720
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->a()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 726
    :goto_0
    if-nez v0, :cond_1

    .line 727
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 729
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->c()I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;I)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    return v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->w:Z

    if-nez v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    if-eqz v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dy;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l()Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Landroid/text/Spanned;)V

    goto :goto_0

    .line 755
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n()V

    goto :goto_0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 837
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 841
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f020464

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 843
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f070579

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 847
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l()Landroid/text/Spanned;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v1

    if-lez v1, :cond_4

    .line 853
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 859
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 876
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/b;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 878
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-static {v1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 879
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setBackgroundColor(I)V

    .line 881
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 883
    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 951
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 953
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f0702d7

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 956
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 959
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_1

    .line 960
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o()V

    .line 961
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/dy$a;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/dy$a;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/appdata/webrequests/dy$a;)V

    .line 964
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/dy$a;

    goto :goto_0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/b;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    .line 987
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 988
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$3;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/PanelLoading;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dy$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dy$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 921
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    if-eqz v0, :cond_0

    .line 922
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/appdata/webrequests/dy$a;)V

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_0
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/dy$a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 604
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dy;->m()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 606
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dy;

    iget v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    const/16 v3, 0xa

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/dy;-><init>(Ljava/lang/String;IILjava/util/Locale;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    .line 613
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dy;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 615
    :cond_1
    return-void
.end method

.method public b()Lcom/yelp/android/ui/panels/PanelError;
    .locals 5

    .prologue
    .line 892
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    .line 894
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 895
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 900
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 311
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->d()Lcom/yelp/android/g/g;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->t:I

    .line 312
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 136
    check-cast p1, Lcom/yelp/android/ui/activities/reviews/c;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    .line 137
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Landroid/content/res/Configuration;)V

    .line 399
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/b;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/b;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    .line 151
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$4;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->C:Ljava/lang/Runnable;

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p:I

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->v:Z

    .line 170
    if-eqz p1, :cond_1

    .line 171
    const-string/jumbo v0, "extra_reviews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/b;->a(Ljava/util/List;)V

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    .line 179
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->setHasOptionsMenu(Z)V

    .line 180
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 363
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 364
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateOptionsMenu()V

    .line 188
    :cond_0
    const v0, 0x7f0300d5

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0334

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0333

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0331

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/StarsView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0335

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0337

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0332

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0330

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    .line 197
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    .line 198
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->w:Z

    .line 199
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q()V

    .line 200
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r()V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v0

    if-lez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 220
    if-nez p3, :cond_2

    .line 223
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(J)V

    .line 229
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "stars"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->SMALL:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarStyle(Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;)V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    .line 241
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->x:Ljava/util/List;

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->x:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 247
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-lez v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f070322

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f020463

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 256
    :goto_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e()V

    .line 267
    :goto_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$5;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnStarsClicked(Ljava/lang/Runnable;)V

    .line 277
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g()V

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    return-object v0

    .line 225
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j()Landroid/view/View;

    goto :goto_0

    .line 235
    :cond_3
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    goto :goto_1

    .line 254
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p()V

    goto :goto_2

    .line 258
    :cond_5
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f()V

    .line 260
    if-nez p3, :cond_6

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 263
    :cond_6
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->w:Z

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dy;->a(Z)V

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/dy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dy;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->E:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 357
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onDestroy()V

    .line 358
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 866
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 867
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    if-eqz v0, :cond_0

    .line 868
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o()V

    .line 870
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 337
    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->B:Ljava/util/Timer;

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->D:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 341
    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->D:Ljava/util/TimerTask;

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviews/c;->a(Z)V

    .line 343
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onPause()V

    .line 344
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 373
    :cond_0
    const v0, 0x7f0f05f0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 374
    const v1, 0x7f070222

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 375
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$7;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3a98

    const/16 v4, 0x8

    .line 284
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c()V

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->e()V

    .line 286
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$6;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->D:Ljava/util/TimerTask;

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 295
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 303
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->B:Ljava/util/Timer;

    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->B:Ljava/util/Timer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->D:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 305
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onResume()V

    .line 306
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 388
    const-string/jumbo v0, "extra_reviews"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 390
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dy$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dy$a;)V

    return-void
.end method

.method public q_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 910
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 911
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/dy$a;

    .line 913
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 914
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 915
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r()V

    .line 916
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 917
    return-void
.end method
