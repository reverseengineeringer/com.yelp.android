.class public Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;
.super Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;
.source "ActivityReviewComplete.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/yelp/android/appdata/webrequests/dy;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/yelp/android/ui/widgets/WebImageView;

.field private m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/yelp/android/ui/panels/BizAttributesFragment;

.field private final q:Lcom/yelp/android/ui/panels/BizAttributesFragment$a;

.field private final r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dy$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;-><init>()V

    .line 258
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q:Lcom/yelp/android/ui/panels/BizAttributesFragment$a;

    .line 543
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-direct {v0, p7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string/jumbo v1, "extra.review_status_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "extra.review_warning"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "extra.review_is_tip"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const-string/jumbo v1, "extra.reviewed_business"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "extra.review_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "yelp:return_to_biz_id"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "extra.review_content"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v1, "extra.review_rating"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string/jumbo v1, "extra.review_share_types"

    invoke-static {p10}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 133
    const-string/jumbo v1, "extra.survey_questions"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "extra.review_suggestions"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 135
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/activities/addphoto/a;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/yelp/android/ui/widgets/MessageAlertBox;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 479
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d:Z

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const v1, 0x7f090128

    invoke-direct {v0, p0, v2, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 481
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 488
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    return-object v0

    .line 484
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const v1, 0x7f09011d

    invoke-direct {v0, p0, v2, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 485
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 501
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->H()I

    move-result v0

    if-nez v0, :cond_0

    .line 502
    const v0, 0x7f0f01d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->g:I

    move v1, v0

    .line 510
    :goto_0
    const v0, 0x7f0f01d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 513
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->G()I

    move-result v0

    if-lez v0, :cond_1

    .line 514
    const v0, 0x7f080005

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->G()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :goto_1
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->H()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/panels/BizAttributesFragment;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/widgets/LeftDrawableButton;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->e:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 436
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dy;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->e:Ljava/lang/String;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/dy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Locale;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/dy;

    .line 445
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/dy;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dy;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 446
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    if-nez v0, :cond_0

    .line 457
    const v0, 0x7f030209

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->c()Ljava/util/List;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    const v2, 0x7f0e0125

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 469
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-static {p0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;)I

    move-result v1

    .line 464
    invoke-static {p0}, Lcom/yelp/android/ui/util/ar;->b(Landroid/content/Context;)I

    move-result v2

    .line 465
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;II)V

    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ar;->b(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ")V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V

    .line 382
    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->populateReviewInformation(Landroid/view/View;)V

    .line 387
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k()V

    .line 388
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->smoothScrollToPositionFromTop(II)V

    .line 406
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    .line 539
    const v1, 0x7f0f01d8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 540
    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 541
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewPosted:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 530
    const-string/jumbo v1, "is_converted_tip"

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string/jumbo v1, "review_length"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    return-object v0
.end method

.method public hideLoadingDialog()V
    .locals 0

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->disableLoading()V

    .line 376
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 344
    packed-switch p1, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 346
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 347
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    const-string/jumbo v1, "extra.images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 351
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->n:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Landroid/os/Bundle;)V

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->populateReviewInformation(Landroid/view/View;)V

    .line 359
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k()V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x411
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.reviewed_business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->e:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_is_tip"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d:Z

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->f:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_rating"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->g:I

    .line 149
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_warning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->h:Ljava/lang/String;

    .line 151
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V

    .line 169
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030050

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    const v2, 0x7f0f01d9

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->n:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    const v2, 0x7f0f01d6

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 179
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v2, 0x7f070118

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setText(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    const v2, 0x7f0f01d5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Landroid/widget/TextView;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$2;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 201
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 207
    if-nez p1, :cond_6

    .line 208
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_suggestions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.survey_questions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v0, v4}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    .line 219
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f01d7

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    const-string/jumbo v3, "biz_attribute"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 238
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->h:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 252
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q:Lcom/yelp/android/ui/panels/BizAttributesFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment$a;)V

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundColor(I)V

    .line 256
    return-void

    .line 226
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    move-result-object v1

    .line 229
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v2

    const v3, 0x7f0f01d8

    const-string/jumbo v4, "ynra_fragment"

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()I

    .line 233
    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->PostReviewYNRA:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v1, v0}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/IriSource;Ljava/util/List;)V

    goto :goto_0

    .line 244
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "biz_attribute"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    .line 248
    const-string/jumbo v0, "first_to_review_returned"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->i:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 318
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    .line 319
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 324
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->startActivity(Landroid/content/Intent;)V

    .line 329
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewPostedEdit:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 330
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->finish()V

    goto :goto_0

    .line 333
    :pswitch_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewPostedClose:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 334
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->finish()V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0618
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onPause()V

    .line 303
    const-string/jumbo v0, "first_to_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a()V

    .line 307
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 289
    invoke-super {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onResume()V

    .line 290
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->i:Z

    if-nez v0, :cond_0

    .line 291
    const-string/jumbo v0, "first_to_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/dy;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dy;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/dy;

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/dy;

    if-nez v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j()V

    .line 298
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    const-string/jumbo v0, "first_to_review_returned"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p2, Lcom/yelp/android/serializable/MediaPayload;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V

    return-void
.end method

.method public populateReviewInformation(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 416
    const v0, 0x7f0f01d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 417
    const v1, 0x7f0f01d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 419
    const v2, 0x7f0f01cf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 421
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "extra.review_status_message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Ljava/lang/String;)Lcom/yelp/android/ui/widgets/MessageAlertBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 424
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d:Z

    if-eqz v2, :cond_0

    .line 426
    const v1, 0x7f0f01d1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 432
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    return-void

    .line 429
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public showLoadingDialog()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 371
    return-void
.end method
