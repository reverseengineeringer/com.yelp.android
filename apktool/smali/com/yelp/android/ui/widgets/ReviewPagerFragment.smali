.class public Lcom/yelp/android/ui/widgets/ReviewPagerFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ReviewPagerFragment.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/yelp/android/ui/widgets/ag;

.field private e:Lcom/yelp/android/ui/widgets/ah;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private final q:Lcom/yelp/android/av/i;

.field private final r:Lcom/yelp/android/ui/activities/reviewpage/av;

.field private final s:Landroid/support/v4/view/du;

.field private final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 272
    new-instance v0, Lcom/yelp/android/ui/widgets/ab;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/ab;-><init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->q:Lcom/yelp/android/av/i;

    .line 317
    new-instance v0, Lcom/yelp/android/ui/widgets/ac;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/ac;-><init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->r:Lcom/yelp/android/ui/activities/reviewpage/av;

    .line 377
    new-instance v0, Lcom/yelp/android/ui/widgets/ad;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/ad;-><init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->s:Landroid/support/v4/view/du;

    .line 501
    new-instance v0, Lcom/yelp/android/ui/widgets/ae;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/ae;-><init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->t:Ljava/lang/Runnable;

    .line 576
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;IILjava/lang/String;)Lcom/yelp/android/ui/widgets/ReviewPagerFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/ui/widgets/ReviewPagerFragment;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;-><init>()V

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 144
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v2, "reviews"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 146
    const-string/jumbo v2, "start_index"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string/jumbo v2, "total"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string/jumbo v2, "business_name"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 150
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->c(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;ZZ)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 511
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->j:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    return-void

    :cond_0
    move v0, v2

    .line 511
    goto :goto_0

    :cond_1
    move v1, v2

    .line 512
    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->n:Z

    return p1
.end method

.method private b(Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->r:Lcom/yelp/android/ui/activities/reviewpage/av;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/av;)V

    .line 573
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private c(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 3

    .prologue
    .line 642
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 643
    const-string/jumbo v1, "review_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string/jumbo v1, "user_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewFullPage:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 647
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/av/i;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->q:Lcom/yelp/android/av/i;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ah;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->e:Lcom/yelp/android/ui/widgets/ah;

    return-object v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->l:I

    iget v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->k:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->l:I

    return v0
.end method

.method private i()Lcom/yelp/android/ui/widgets/ag;
    .locals 3

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->DEFAULT:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/widgets/ag;-><init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Landroid/support/v4/app/FragmentManager;Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;)V

    .line 566
    :goto_0
    return-object v0

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    new-instance v0, Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_BACKWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/widgets/ag;-><init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Landroid/support/v4/app/FragmentManager;Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;)V

    goto :goto_0

    .line 561
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    new-instance v0, Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_FORWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/widgets/ag;-><init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Landroid/support/v4/app/FragmentManager;Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;)V

    goto :goto_0

    .line 566
    :cond_2
    new-instance v0, Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/widgets/ag;-><init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Landroid/support/v4/app/FragmentManager;Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->m:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ag;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/widgets/af;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_BACKWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    if-ne v0, v1, :cond_2

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 491
    if-nez p1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->s:Landroid/support/v4/view/du;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/du;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 651
    if-ltz v0, :cond_0

    .line 652
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/widgets/ah;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->e:Lcom/yelp/android/ui/widgets/ah;

    .line 450
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 461
    iget-boolean v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->n:Z

    if-eqz v2, :cond_1

    .line 462
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 468
    iget v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->l:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sub-int v0, v3, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->l:I

    .line 476
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->f()V

    .line 479
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->n:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(I)V

    .line 480
    return-void

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 471
    iget v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->m:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->m:I

    goto :goto_0

    .line 479
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public b()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    sget-object v1, Lcom/yelp/android/ui/widgets/af;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 431
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    goto :goto_0

    .line 429
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    goto :goto_0

    .line 435
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public c()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    .line 520
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 521
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h:Landroid/widget/FrameLayout;

    invoke-static {v0, v4, v5}, Lcom/yelp/android/ui/util/cw;->b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 535
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h:Landroid/widget/FrameLayout;

    invoke-static {v1, v4, v5}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 528
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 530
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 540
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->i()Lcom/yelp/android/ui/widgets/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    .line 541
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bo;)V

    .line 542
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(I)V

    .line 543
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 194
    if-nez p1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "reviews"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Ljava/util/List;)V

    .line 209
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->e()V

    .line 210
    return-void

    .line 202
    :cond_1
    const-string/jumbo v0, "reviews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    .line 203
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->i()Lcom/yelp/android/ui/widgets/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d:Lcom/yelp/android/ui/widgets/ag;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bo;)V

    .line 205
    const-string/jumbo v0, "is_loading_forward"

    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->n:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->n:Z

    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b:Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "business_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->c:Ljava/lang/String;

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string/jumbo v1, "start_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->l:I

    .line 165
    iget v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->l:I

    iput v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->m:I

    .line 166
    iput v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->p:I

    .line 172
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->o:Ljava/util/List;

    .line 173
    const-string/jumbo v1, "total"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->k:I

    .line 174
    return-void

    .line 168
    :cond_0
    const-string/jumbo v1, "forward_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->l:I

    .line 169
    const-string/jumbo v1, "backwards_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->m:I

    .line 170
    const-string/jumbo v1, "review_votes_count"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->p:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 179
    const v0, 0x7f030170

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 180
    const v0, 0x7f0c047b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->s:Landroid/support/v4/view/du;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/du;)V

    .line 182
    const v0, 0x7f0c047c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h:Landroid/widget/FrameLayout;

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h:Landroid/widget/FrameLayout;

    const v2, 0x7f0c047d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->i:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h:Landroid/widget/FrameLayout;

    const v2, 0x7f0c047e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->j:Landroid/widget/ImageView;

    .line 186
    return-object v1
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 227
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    .line 229
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vote_request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 231
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 233
    goto :goto_0

    .line 234
    :cond_0
    iput v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->p:I

    .line 235
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 214
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->p:I

    if-ge v1, v0, :cond_0

    .line 218
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->o:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vote_request"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->q:Lcom/yelp/android/av/i;

    invoke-virtual {p0, v0, v3, v4}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    const-string/jumbo v0, "reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 241
    const-string/jumbo v0, "forward_index"

    iget v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string/jumbo v0, "backwards_index"

    iget v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string/jumbo v0, "is_loading_forward"

    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string/jumbo v0, "review_votes_count"

    iget v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    return-void
.end method
