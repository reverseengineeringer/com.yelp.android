.class public Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;
.super Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;
.source "ReviewComposeFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/panels/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ez;",
        ">;",
        "Lcom/yelp/android/ui/panels/aa;"
    }
.end annotation


# instance fields
.field private A:Lcom/yelp/android/appdata/webrequests/ez;

.field private B:Ljava/util/Timer;

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/util/TimerTask;

.field private E:Landroid/text/TextWatcher;

.field private final F:Landroid/view/View$OnClickListener;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/EditText;

.field private g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private h:Lcom/yelp/android/ui/panels/PanelError;

.field private i:Lcom/yelp/android/ui/activities/reviews/z;

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

.field private y:Lcom/yelp/android/appdata/webrequests/ey;

.field private z:Lcom/yelp/android/appdata/webrequests/YelpException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;-><init>()V

    .line 94
    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p:I

    .line 95
    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    .line 96
    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    .line 113
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ac;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ac;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->F:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Landroid/graphics/Rect;)I
    .locals 3

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->c()I

    move-result v0

    .line 552
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v2, 0x7f0c02ce

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 556
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 557
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 559
    :cond_0
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/z;->isEmpty()Z

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

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHeight(I)V

    .line 564
    return v0

    .line 560
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Landroid/graphics/Rect;)I
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 611
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 612
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 613
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/am;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/am;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 643
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    const v2, 0x7f0c02cb

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 646
    :cond_0
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/text/Spanned;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const v4, 0x7f070543

    const/4 v1, 0x0

    .line 722
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 733
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

    .line 735
    :cond_3
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/z;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 742
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/z;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/z;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 749
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 750
    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 751
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ad;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ad;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 761
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070570

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

    .line 766
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 725
    goto/16 :goto_1

    .line 735
    :cond_5
    const v2, 0x7f020323

    goto/16 :goto_2

    .line 742
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->F:Landroid/view/View$OnClickListener;

    goto :goto_3

    .line 768
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 780
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/z;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto/16 :goto_0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/ez;)V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 887
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 895
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    if-eqz v0, :cond_1

    .line 896
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m()V

    .line 898
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    .line 899
    return-void

    .line 889
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/z;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/z;->a(Ljava/util/List;)V

    goto :goto_0

    .line 891
    :cond_3
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/z;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 893
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/z;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Ljava/lang/String;)V

    .line 575
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;J)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Landroid/content/res/Configuration;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 474
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->v:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r:I

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->l()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b:Landroid/view/View;

    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j:Landroid/view/View;

    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto :goto_0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/aj;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/aj;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i()V

    .line 413
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h()V

    .line 414
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 417
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ak;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ak;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->E:Landroid/text/TextWatcher;

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->E:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 445
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 491
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->t:I

    return v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/al;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/al;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 544
    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p:I

    return v0
.end method

.method private j()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 590
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 591
    if-eqz v0, :cond_0

    .line 592
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 593
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 596
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 597
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 601
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 602
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 603
    const-string/jumbo v0, "stars"

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 604
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 605
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 606
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V

    .line 607
    return-object v1
.end method

.method private k()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 655
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->l()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->o()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 657
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 658
    :goto_1
    iget v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 665
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 666
    const v0, 0x7f0702d8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    :goto_3
    return-object v0

    :cond_0
    move v0, v2

    .line 655
    goto :goto_0

    :cond_1
    move v3, v2

    .line 657
    goto :goto_1

    :cond_2
    move v1, v2

    .line 658
    goto :goto_2

    .line 667
    :cond_3
    if-eqz v0, :cond_4

    .line 668
    const v0, 0x7f070545

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 670
    :cond_4
    const v0, 0x7f070543

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->v:Z

    return v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r:I

    return v0
.end method

.method private l()Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 679
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 680
    const/4 v1, 0x0

    .line 682
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

    .line 683
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->getThreshold()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 689
    :goto_0
    if-nez v0, :cond_1

    .line 690
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 692
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->getTextAtThreshold()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->getRedVal()I

    move-result v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->getGreenVal()I

    move-result v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewThreshold;->getBlueVal()I

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
    .line 69
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q:I

    return v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->w:Z

    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    if-eqz v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l()Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Landroid/text/Spanned;)V

    goto :goto_0

    .line 716
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n()V

    goto :goto_0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 793
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 797
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f020324

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 799
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f070570

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 803
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l()Landroid/text/Spanned;

    move-result-object v0

    .line 804
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 809
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

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 815
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 829
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 832
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/z;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-static {v1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 835
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setBackgroundColor(I)V

    .line 837
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 839
    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 907
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 909
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f070285

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 912
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 915
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_1

    .line 916
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o()V

    .line 917
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/ez;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/ez;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/appdata/webrequests/ez;)V

    .line 920
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/ez;

    goto :goto_0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 928
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/z;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    .line 943
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 944
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ae;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/ae;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/PanelLoading;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ")V"
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    if-eqz v0, :cond_0

    .line 878
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/appdata/webrequests/ez;)V

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/ez;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 581
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 583
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ey;

    iget v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    const/16 v3, 0xa

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Ljava/lang/String;IILjava/util/Locale;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    .line 585
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 587
    :cond_1
    return-void
.end method

.method public c()Lcom/yelp/android/ui/panels/PanelError;
    .locals 5

    .prologue
    .line 848
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    .line 850
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 851
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/aa;)V

    .line 856
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    return-object v0
.end method

.method public m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 866
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 867
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->A:Lcom/yelp/android/appdata/webrequests/ez;

    .line 869
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 870
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h:Lcom/yelp/android/ui/panels/PanelError;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 871
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r()V

    .line 872
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 873
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 301
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    .line 302
    new-instance v1, Lcom/yelp/android/appdata/n;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/services/x;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/yelp/android/appdata/n;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Lcom/yelp/android/appdata/n;->d()Lcom/yelp/android/e/m;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/e/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->t:I

    .line 305
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 136
    check-cast p1, Lcom/yelp/android/ui/activities/reviews/ao;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    .line 137
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 382
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Landroid/content/res/Configuration;)V

    .line 383
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/z;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/z;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    .line 151
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/af;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/af;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->C:Ljava/lang/Runnable;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p:I

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->v:Z

    .line 167
    if-eqz p1, :cond_1

    .line 168
    const-string/jumbo v0, "extra_reviews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/z;->a(Ljava/util/List;)V

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->s:I

    .line 176
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->setHasOptionsMenu(Z)V

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 353
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 354
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->updateOptionsMenu()V

    .line 184
    :cond_0
    const v0, 0x7f0300ba

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0c02d0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0c02ce

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0c02cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0c02cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/StarsView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0c02cf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0c02d1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0c02cc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0c02ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    .line 194
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->w:Z

    .line 195
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->q()V

    .line 196
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->r()V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->g()I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f010049

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v4}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 214
    if-nez p3, :cond_2

    .line 217
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(J)V

    .line 223
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "stars"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;->SMALL:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarSize(Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;)V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    .line 233
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n:Z

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->x:Ljava/util/List;

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->x:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 239
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f0702d8

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f020323

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 248
    :goto_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e()V

    .line 259
    :goto_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ag;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ag;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnStarsClicked(Ljava/lang/Runnable;)V

    .line 268
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g()V

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    return-object v0

    .line 219
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j()Landroid/view/View;

    goto :goto_0

    .line 229
    :cond_3
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;->LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    goto :goto_1

    .line 246
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->p()V

    goto :goto_2

    .line 250
    :cond_5
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f()V

    .line 252
    if-nez p3, :cond_6

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 255
    :cond_6
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->w:Z

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->cancel(Z)V

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->y:Lcom/yelp/android/appdata/webrequests/ey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->E:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 347
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onDestroy()V

    .line 348
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
    .line 822
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->z:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 823
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    if-eqz v0, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o()V

    .line 826
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 329
    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->B:Ljava/util/Timer;

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->D:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 333
    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->D:Ljava/util/TimerTask;

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ao;->a(Z)V

    .line 335
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onPause()V

    .line 336
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 358
    const v0, 0x7f0c04e6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 359
    const v1, 0x7f0701d5

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 360
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ai;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ai;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 368
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3a98

    const/16 v4, 0x8

    .line 275
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d()V

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->e()V

    .line 277
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ah;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ah;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->D:Ljava/util/TimerTask;

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 285
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 293
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->B:Ljava/util/Timer;

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->B:Ljava/util/Timer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->D:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 295
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onResume()V

    .line 296
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 372
    const-string/jumbo v0, "extra_reviews"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/z;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 374
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 375
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ez;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V

    return-void
.end method
