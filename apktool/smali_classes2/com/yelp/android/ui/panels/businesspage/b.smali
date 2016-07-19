.class public Lcom/yelp/android/ui/panels/businesspage/b;
.super Lcom/yelp/android/ui/widgets/d;
.source "PanelBusinessPageHeader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/panels/businesspage/b$3;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/view/ViewPager;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:Lcom/yelp/android/ui/activities/reviews/StarsView;

.field private final l:Lcom/yelp/android/ui/widgets/TwoTierButton;

.field private final m:Lcom/yelp/android/ui/widgets/TwoTierButton;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "[I>;"
        }
    .end annotation
.end field

.field private final o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/widgets/d$a;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 10

    .prologue
    const v9, 0x7f0f022b

    const v8, 0x7f0f0229

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 70
    const v2, 0x7f030140

    const v3, 0x7f030141

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/widgets/d;-><init>(Landroid/content/Context;IILcom/yelp/android/ui/widgets/d$a;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->a:Landroid/support/v4/view/ViewPager;

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/panels/businesspage/b$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/businesspage/b$1;-><init>(Lcom/yelp/android/ui/panels/businesspage/b;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->b:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->c:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0381

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->d:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0430

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->e:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0432

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0433

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->m:Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/StarsView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->k:Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->j:Landroid/widget/TextView;

    .line 112
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->o:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :goto_0
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 129
    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070118

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->a()V

    .line 133
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->k:Lcom/yelp/android/ui/activities/reviews/StarsView;

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->o:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->getStarStyle()Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarStyle(Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;)V

    .line 120
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->j:Landroid/widget/TextView;

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->o:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->isWithText()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesspage/b;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 434
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->n:Ljava/util/Map;

    .line 435
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->n:Ljava/util/Map;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->n:Ljava/util/Map;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->m:Lcom/yelp/android/ui/widgets/TwoTierButton;

    new-array v3, v6, [I

    const v4, 0x7f0f0227

    aput v4, v3, v5

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->n:Ljava/util/Map;

    new-array v2, v6, [I

    const v3, 0x7f0f0225

    aput v3, v2, v5

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    new-instance v1, Lcom/yelp/android/ui/panels/businesspage/b$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/businesspage/b$2;-><init>(Lcom/yelp/android/ui/panels/businesspage/b;)V

    .line 456
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setButtonStateChangedListener(Lcom/yelp/android/ui/widgets/TwoTierButton$a;)V

    .line 457
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->m:Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setButtonStateChangedListener(Lcom/yelp/android/ui/widgets/TwoTierButton$a;)V

    .line 458
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setButtonStateChangedListener(Lcom/yelp/android/ui/widgets/TwoTierButton$a;)V

    .line 459
    return-void

    .line 435
    nop

    :array_0
    .array-data 4
        0x7f0f0225
        0x7f0f0227
    .end array-data
.end method

.method private a(Lcom/yelp/android/ui/activities/reviews/ReviewState;I)V
    .locals 3

    .prologue
    .line 394
    if-eqz p1, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq p1, v0, :cond_0

    .line 396
    packed-switch p2, :pswitch_data_0

    .line 429
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f0201d4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setImage(I)V

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f0201d5

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setImage(I)V

    goto :goto_0

    .line 408
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 410
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setImage(I)V

    goto :goto_0

    .line 413
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setImage(I)V

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setImage(I)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f0201d3

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setImage(I)V

    goto/16 :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesspage/b;[I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/businesspage/b;->a([I)V

    return-void
.end method

.method private varargs a([I)V
    .locals 4

    .prologue
    .line 136
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 137
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 138
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/businesspage/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/businesspage/b;[I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/businesspage/b;->b([I)V

    return-void
.end method

.method private varargs b([I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 143
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 144
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 145
    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 11

    .prologue
    const v10, 0x7f07017d

    const v9, 0x7f0e00c6

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 228
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aM()Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->d()Ljava/util/TimeZone;

    move-result-object v3

    .line 230
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/YelpHoursPair;

    .line 231
    invoke-static {v1, v0, v3}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Lcom/yelp/android/services/f$a;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->r()Z

    move-result v1

    if-nez v1, :cond_6

    .line 233
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v1, 0x7f07017c

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->e()J

    move-result-wide v0

    long-to-int v0, v0

    .line 241
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v3, 0x7f080003

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v1, 0x7f070178

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v1, 0x7f0e00fe

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v4, 0x7f07032e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->e()J

    move-result-wide v0

    long-to-int v0, v0

    .line 260
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    const v3, 0x7f080003

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 267
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    const v3, 0x7f0e00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->g()J

    move-result-wide v0

    long-to-int v0, v0

    .line 270
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    const v3, 0x7f080002

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    const v1, 0x7f070177

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 281
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 157
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aT()Ljava/util/List;

    move-result-object v3

    .line 159
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 160
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/b;->setPulledPhotoUrl(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p1, v1}, Lcom/yelp/android/serializable/YelpBusiness;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    .line 179
    const v3, 0x7f080025

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 184
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aV()Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->e:Landroid/widget/TextView;

    const-string/jumbo v3, ", "

    new-instance v4, Lcom/yelp/android/serializable/Category$b;

    invoke-direct {v4}, Lcom/yelp/android/serializable/Category$b;-><init>()V

    invoke-static {v3, v0, v4}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/StringUtils$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    :goto_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/yelp/android/util/i;->a(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;)D

    move-result-wide v2

    const-wide v4, 0x406f400000000000L    # 250.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    .line 196
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1, v0, v1, v3}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->VERBOSE:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1, v0, v1, v3}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->M()I

    move-result v0

    .line 205
    if-lez v0, :cond_5

    .line 206
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    .line 207
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->ar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v0, v4}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_3
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 217
    return-void

    .line 174
    :cond_2
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public a(ZLcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 6

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->l()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    .line 307
    sget-object v1, Lcom/yelp/android/ui/panels/businesspage/b$3;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 315
    const v3, 0x7f02014a

    .line 317
    :goto_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v4, 0x7f0701bc

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankColor()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/ui/widgets/TwoTierButton;III)V

    .line 327
    :goto_1
    return-void

    .line 309
    :pswitch_0
    const v3, 0x7f020580

    .line 310
    goto :goto_0

    .line 312
    :pswitch_1
    const v3, 0x7f02044b

    .line 313
    goto :goto_0

    .line 320
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v3, 0x7f0201cd

    const v4, 0x7f0700ef

    const v5, 0x7f0e00ac

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/ui/widgets/TwoTierButton;III)V

    goto :goto_1

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(ZLcom/yelp/android/ui/widgets/TwoTierButton;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 378
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getValue()Landroid/widget/TextView;

    move-result-object v1

    .line 379
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v2

    .line 381
    invoke-virtual {v1, p3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 382
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p2, p1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setChecked(Z)V

    .line 386
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 340
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 344
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->o:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->o:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setText(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->H()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/ui/activities/reviews/ReviewState;I)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->j:Landroid/widget/TextView;

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->o:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->isWithText()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->k:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->H()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    goto :goto_0

    .line 353
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public getAlertsPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public setBookmarkChecked(Z)V
    .locals 6

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->m:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v3, 0x7f0200d3

    const v4, 0x7f070172

    const v5, 0x7f0e00fe

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/ui/widgets/TwoTierButton;III)V

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->m:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v3, 0x7f0201cc

    const v4, 0x7f0700ee

    const v5, 0x7f0e00ac

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/ui/widgets/TwoTierButton;III)V

    goto :goto_0
.end method
