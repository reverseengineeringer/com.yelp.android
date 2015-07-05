.class public Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;
.super Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;
.source "ActivityReviewComplete.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/aj;


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/yelp/android/appdata/webrequests/ey;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/yelp/android/ui/widgets/WebImageView;

.field private m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

.field private n:Landroid/view/View;

.field private o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

.field private final p:Lcom/yelp/android/ui/panels/o;

.field private final q:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;-><init>()V

    .line 202
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/h;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/o;

    .line 472
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/j;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;
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
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-direct {v0, p7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string/jumbo v1, "extra.review_status_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v1, "extra.review_warning"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v1, "extra.review_is_tip"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "extra.reviewed_business"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "extra.review_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v1, "yelp:return_to_biz_id"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "extra.review_content"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "extra.review_rating"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "extra.survey_questions"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "extra.review_suggestions"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/activities/addphoto/i;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/yelp/android/ui/widgets/MessageAlertBox;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d:Z

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const v1, 0x7f0f00ad

    invoke-direct {v0, p0, v2, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 413
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 420
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    return-object v0

    .line 416
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    const v1, 0x7f0f00a2

    invoke-direct {v0, p0, v2, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 417
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getUserReviewRating()I

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const v0, 0x7f0c01a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->g:I

    move v1, v0

    .line 440
    :goto_0
    const v0, 0x7f0c01a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/ImageView;F)V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getUserCheckinsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 444
    const v0, 0x7f0e0005

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getUserCheckinsCount()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :goto_1
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getUserReviewRating()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;Z)Z
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/panels/BizAttributesFragment;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/widgets/LeftDrawableButton;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 373
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

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

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Locale;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/ey;

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/ey;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 376
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    if-nez v0, :cond_0

    .line 387
    const v0, 0x7f03018d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->b()Ljava/util/List;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    const v2, 0x7f0a00d6

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 400
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-static {p0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;)I

    move-result v1

    .line 394
    invoke-static {p0}, Lcom/yelp/android/ui/util/cp;->b(Landroid/content/Context;)I

    move-result v2

    .line 395
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getLargeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;II)V

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->l:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->b(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 318
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V

    .line 320
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->populateReviewInformation(Landroid/view/View;)V

    .line 325
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k()V

    .line 326
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->smoothScrollToPositionFromTop(II)V

    .line 343
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 468
    const v1, 0x7f0c01a7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 469
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 470
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 453
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewPosted:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
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
    .line 458
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 459
    const-string/jumbo v1, "is_converted_tip"

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string/jumbo v1, "review_length"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-object v0
.end method

.method public hideLoadingDialog()V
    .locals 0

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->disableLoading()V

    .line 314
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 281
    packed-switch p1, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 283
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 284
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 286
    const-string/jumbo v1, "bitmap_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->n:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Landroid/os/Bundle;)V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->populateReviewInformation(Landroid/view/View;)V

    .line 296
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k()V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x40d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.reviewed_business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->e:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_is_tip"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d:Z

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->f:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_rating"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->g:I

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_warning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->h:Ljava/lang/String;

    .line 130
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/g;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V

    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030045

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    const v2, 0x7f0c01a8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->n:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    const v2, 0x7f0c01a5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 150
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v2, 0x7f07009a

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setText(Ljava/lang/String;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 157
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 160
    if-nez p1, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_suggestions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.survey_questions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v0, v4}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01a6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    const-string/jumbo v3, "biz_attribute"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 183
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->h:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 195
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->p:Lcom/yelp/android/ui/panels/o;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/o;)V

    .line 198
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundColor(I)V

    .line 200
    return-void

    .line 174
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c01a7

    const-string/jumbo v3, "ynra_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 178
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewSuggestionsViewed:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "post_review_ynra"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "biz_attribute"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    .line 191
    const-string/jumbo v0, "first_to_review_returned"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->i:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 256
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    .line 257
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a:Lcom/yelp/android/serializable/YelpBusiness;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->startActivity(Landroid/content/Intent;)V

    .line 266
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedEdit:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 267
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->finish()V

    goto :goto_0

    .line 270
    :pswitch_1
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedClose:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 271
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->finish()V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c050f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onPause()V

    .line 241
    const-string/jumbo v0, "first_to_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a()V

    .line 245
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 228
    invoke-super {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onResume()V

    .line 229
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->i:Z

    if-nez v0, :cond_0

    .line 230
    const-string/jumbo v0, "first_to_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->q:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ey;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/ey;

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j:Lcom/yelp/android/appdata/webrequests/ey;

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->j()V

    .line 236
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    const-string/jumbo v0, "first_to_review_returned"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dm;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V

    return-void
.end method

.method public populateReviewInformation(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 353
    const v0, 0x7f0c01a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 354
    const v1, 0x7f0c01a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 356
    const v2, 0x7f0c019e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "extra.review_status_message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Ljava/lang/String;)Lcom/yelp/android/ui/widgets/MessageAlertBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 361
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d:Z

    if-eqz v2, :cond_0

    .line 363
    const v1, 0x7f0c01a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    return-void

    .line 366
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public showLoadingDialog()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 309
    return-void
.end method
