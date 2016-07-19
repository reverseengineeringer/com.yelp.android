.class final Lcom/yelp/android/ui/activities/reviewpage/b$a;
.super Ljava/lang/Object;
.source "LocalAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const v0, 0x7f0f023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->a:Landroid/widget/ImageView;

    .line 273
    const v0, 0x7f0f023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->b:Landroid/widget/TextView;

    .line 274
    const v0, 0x7f0f023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->g:Landroid/widget/TextView;

    .line 275
    const v0, 0x7f0f0240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->c:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f0f0241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->d:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0f0243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->e:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f0f0242

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->f:Landroid/widget/ImageView;

    .line 280
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;->biz_ad_unit_restyling_new_layout:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 294
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    return-void

    .line 284
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;->biz_ad_unit_restyling_new_layout_120x120:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$a;->e:Landroid/widget/TextView;

    return-object v0
.end method
