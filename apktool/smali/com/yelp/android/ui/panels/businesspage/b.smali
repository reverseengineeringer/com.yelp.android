.class public Lcom/yelp/android/ui/panels/businesspage/b;
.super Lcom/yelp/android/ui/widgets/k;
.source "PanelBusinessPageHeader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
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

.field private final j:Lcom/yelp/android/ui/widgets/TwoTierButton;

.field private final k:Lcom/yelp/android/ui/widgets/TwoTierButton;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "[I>;"
        }
    .end annotation
.end field

.field private final m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/widgets/o;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 6

    .prologue
    .line 65
    const v2, 0x7f0300e7

    const v3, 0x7f0300e8

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/widgets/k;-><init>(Landroid/content/Context;IILcom/yelp/android/ui/widgets/o;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0352

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->a:Landroid/support/v4/view/ViewPager;

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/businesspage/c;-><init>(Lcom/yelp/android/ui/panels/businesspage/b;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->b:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->c:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->d:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->e:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c01e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->j:Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c01e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->k:Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c01ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 100
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c01e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 103
    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->a()V

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesspage/b;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c01e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 368
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Ljava/util/Map;

    .line 369
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Ljava/util/Map;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->j:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Ljava/util/Map;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->k:Lcom/yelp/android/ui/widgets/TwoTierButton;

    new-array v3, v6, [I

    const v4, 0x7f0c01e8

    aput v4, v3, v5

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Ljava/util/Map;

    new-array v2, v6, [I

    const v3, 0x7f0c01e6

    aput v3, v2, v5

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v1, Lcom/yelp/android/ui/panels/businesspage/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/businesspage/d;-><init>(Lcom/yelp/android/ui/panels/businesspage/b;)V

    .line 395
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->j:Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setButtonStateChangedListener(Lcom/yelp/android/ui/widgets/ap;)V

    .line 396
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->k:Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setButtonStateChangedListener(Lcom/yelp/android/ui/widgets/ap;)V

    .line 397
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setButtonStateChangedListener(Lcom/yelp/android/ui/widgets/ap;)V

    .line 398
    return-void

    .line 369
    nop

    :array_0
    .array-data 4
        0x7f0c01e6
        0x7f0c01e8
    .end array-data
.end method

.method private a(Lcom/yelp/android/ui/activities/reviews/ReviewState;I)V
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 331
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0073

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 332
    const v0, 0x7f02015f

    .line 334
    if-eqz p1, :cond_0

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq p1, v2, :cond_0

    .line 336
    packed-switch p2, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setImage(I)V

    .line 363
    return-void

    .line 338
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 339
    const v0, 0x7f020160

    .line 340
    goto :goto_0

    .line 342
    :pswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 343
    const v0, 0x7f020161

    .line 344
    goto :goto_0

    .line 346
    :pswitch_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 347
    const v0, 0x7f020162

    .line 348
    goto :goto_0

    .line 350
    :pswitch_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a009f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 351
    const v0, 0x7f020163

    .line 352
    goto :goto_0

    .line 354
    :pswitch_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 355
    const v0, 0x7f020164

    .line 356
    goto :goto_0

    .line 336
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
    .line 45
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/businesspage/b;->a([I)V

    return-void
.end method

.method private varargs a([I)V
    .locals 4

    .prologue
    .line 110
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 111
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 112
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/businesspage/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/businesspage/b;[I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/businesspage/b;->b([I)V

    return-void
.end method

.method private varargs b([I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 118
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 119
    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->m:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setText(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getUserReviewRating()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/ui/activities/reviews/ReviewState;I)V

    .line 295
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 13

    .prologue
    const v12, 0x7f0700f5

    const v11, 0x7f0a008b

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotos()Ljava/util/List;

    move-result-object v3

    .line 133
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 134
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getLargeUrl()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/b;->setPulledPhotoUrl(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p1, v1}, Lcom/yelp/android/serializable/YelpBusiness;->getAlternateNameString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    .line 153
    const v3, 0x7f0e0022

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v3

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/TextView;F)V

    .line 158
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 160
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->e:Landroid/widget/TextView;

    const-string/jumbo v4, ", "

    new-instance v5, Lcom/yelp/android/serializable/w;

    invoke-direct {v5}, Lcom/yelp/android/serializable/w;-><init>()V

    invoke-static {v4, v0, v5}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->isLocationAccurate()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/yelp/android/util/o;->a(Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDistance(Landroid/location/Location;)D

    move-result-wide v4

    const-wide v6, 0x406f400000000000L    # 250.0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4

    .line 169
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1, v0, v1, v4}, Lcom/yelp/android/serializable/YelpBusiness;->getDistanceFormatted(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->VERBOSE:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1, v0, v1, v4}, Lcom/yelp/android/serializable/YelpBusiness;->getDistanceFormatted(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :goto_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPrice()I

    move-result v0

    .line 178
    if-lez v0, :cond_5

    .line 179
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    .line 180
    iget-object v4, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v0, v5}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_3
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getHours()Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 190
    new-array v4, v8, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/YelpHoursPair;

    .line 191
    invoke-static {v1, v0, v3}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Lcom/yelp/android/services/s;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c

    .line 193
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->b()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v1, 0x7f0700f4

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_4
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 243
    return-void

    .line 148
    :cond_2
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 198
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 199
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 200
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->e()J

    move-result-wide v0

    long-to-int v0, v0

    .line 201
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v3, 0x7f0e0003

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    :goto_5
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v1, 0x7f0700ee

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v1, 0x7f0a00b2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 211
    :cond_8
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    const v4, 0x7f0702ed

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 216
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 218
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->e()J

    move-result-wide v0

    long-to-int v0, v0

    .line 219
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    const v3, 0x7f0e0003

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_6
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 222
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 225
    :cond_a
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    const v3, 0x7f0a00b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 227
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->g()J

    move-result-wide v0

    long-to-int v0, v0

    .line 228
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    const v3, 0x7f0e0002

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 231
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    const v1, 0x7f0700ed

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 238
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public a(ZLcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 6

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->getLocationRankTitle()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    .line 263
    sget-object v1, Lcom/yelp/android/ui/panels/businesspage/e;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 271
    const v3, 0x7f0200f4

    .line 273
    :goto_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->j:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v4, 0x7f070137

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankColor()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/ui/widgets/TwoTierButton;III)V

    .line 279
    :goto_1
    return-void

    .line 265
    :pswitch_0
    const v3, 0x7f0203ed

    .line 266
    goto :goto_0

    .line 268
    :pswitch_1
    const v3, 0x7f020315

    .line 269
    goto :goto_0

    .line 276
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->j:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v3, 0x7f02015d

    const v4, 0x7f070075

    const v5, 0x7f0a0073

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/ui/widgets/TwoTierButton;III)V

    goto :goto_1

    .line 263
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

    .line 310
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 312
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getValue()Landroid/widget/TextView;

    move-result-object v1

    .line 313
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v2

    .line 315
    invoke-virtual {v1, p3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 316
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {p2, p1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setChecked(Z)V

    .line 320
    return-void
.end method

.method public getAlertsPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public setBookmarkChecked(Z)V
    .locals 6

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->k:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v3, 0x7f02009f

    const v4, 0x7f0700e6

    const v5, 0x7f0a00b2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/ui/widgets/TwoTierButton;III)V

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/b;->k:Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v3, 0x7f02015c

    const v4, 0x7f070074

    const v5, 0x7f0a0073

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/ui/widgets/TwoTierButton;III)V

    goto :goto_0
.end method
