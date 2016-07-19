.class Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;
.super Landroid/support/v4/view/ViewPager$h;
.source "ActivityAnimatedOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V
    .locals 1

    .prologue
    .line 297
    iput-object p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$h;-><init>()V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$h;->a(I)V

    .line 372
    if-nez p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;I)I

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->d(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    .line 379
    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-wide v8, 0x3fd999999999999aL    # 0.4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 304
    sget-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->pages:[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aget-object v4, v0, p1

    .line 306
    float-to-double v6, p2

    cmpl-double v0, v6, v8

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v0

    if-ne v0, p1, :cond_4

    move v3, v1

    .line 308
    :goto_0
    sub-float v0, v11, p2

    float-to-double v6, v0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_5

    move v0, v1

    .line 312
    :goto_1
    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_SIGN_UP:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    if-eq v4, v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_6

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    move-result-object v0

    new-instance v3, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    iget v5, v4, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->endFrame:I

    iget v4, v4, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->startFrame:I

    const/16 v6, 0x10

    invoke-direct {v3, v5, v4, v6}, Lcom/yelp/android/ui/activities/animatedonboarding/b;-><init>(III)V

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/b;)V

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;I)V

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->g(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a()[Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a()[Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    .line 348
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->h(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 349
    cmpl-float v0, p2, v10

    if-lez v0, :cond_2

    float-to-double v4, p2

    cmpg-double v0, v4, v8

    if-gez v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;I)I

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    .line 362
    :cond_2
    :goto_3
    if-nez p1, :cond_3

    cmpl-float v0, p2, v10

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->b:Z

    if-nez v0, :cond_3

    .line 363
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->b(I)V

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;I)V

    .line 366
    return-void

    :cond_4
    move v3, v2

    .line 306
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 308
    goto/16 :goto_1

    .line 329
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    move-result-object v0

    new-instance v3, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    iget v5, v4, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->startFrame:I

    iget v4, v4, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->endFrame:I

    const/4 v6, 0x2

    invoke-direct {v3, v5, v4, v6}, Lcom/yelp/android/ui/activities/animatedonboarding/b;-><init>(III)V

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/b;)V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;I)V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->d(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->g(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-static {}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b()[Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v3

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b()[Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    goto/16 :goto_2

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->i(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    sub-float v0, v11, p2

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2

    sub-float v0, v11, p2

    float-to-double v4, v0

    cmpg-double v0, v4, v8

    if-gez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;I)I

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    goto/16 :goto_3
.end method

.method public b(I)V
    .locals 8

    .prologue
    const v7, 0x7f0f0174

    const/16 v6, 0x16f

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    const v1, 0x7f0f00ec

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 384
    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$9;->a:[I

    sget-object v2, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->pages:[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 465
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->d()[Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->d()[Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 466
    return-void

    .line 386
    :pswitch_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->b:Z

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 392
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->b:Z

    goto :goto_0

    .line 396
    :pswitch_1
    if-eqz v0, :cond_0

    .line 398
    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    .line 401
    new-instance v2, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5$1;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5$1;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 410
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->j(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->k(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->k(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->l(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->m(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 418
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->m(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto/16 :goto_0

    .line 426
    :pswitch_2
    if-eqz v0, :cond_0

    .line 428
    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    mul-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    .line 431
    sget v2, Lcom/yelp/android/ui/util/av;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 432
    new-instance v2, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5$2;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5$2;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 439
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->j(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->k(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->l(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->m(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->getJobListSize()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->c()V

    .line 454
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(I)V

    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    sget-object v2, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_FOUR:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    iget v2, v2, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->endFrame:I

    const/4 v3, 0x2

    invoke-direct {v1, v6, v2, v3}, Lcom/yelp/android/ui/activities/animatedonboarding/b;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/b;)V

    goto/16 :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
