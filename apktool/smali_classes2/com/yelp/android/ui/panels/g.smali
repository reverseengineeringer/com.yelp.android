.class public Lcom/yelp/android/ui/panels/g;
.super Landroid/widget/RelativeLayout;
.source "YourNextReviewAwaitsItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/panels/g$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/view/VelocityTracker;

.field private c:Lcom/yelp/android/ui/widgets/AwardBanner;

.field private d:Lcom/yelp/android/serializable/ReviewSuggestion;

.field private e:Lcom/yelp/android/ui/panels/g$a;

.field private f:Lcom/yelp/android/analytics/iris/IriSource;

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Lcom/yelp/android/ui/activities/reviews/StarsView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/yelp/android/webimageview/WebImageView;

.field private o:Landroid/widget/ImageView;

.field private final p:Lcom/yelp/android/ui/util/av$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/serializable/ReviewSuggestion;Lcom/yelp/android/ui/panels/g$a;Lcom/yelp/android/analytics/iris/IriSource;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 325
    new-instance v0, Lcom/yelp/android/ui/panels/g$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/g$7;-><init>(Lcom/yelp/android/ui/panels/g;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->p:Lcom/yelp/android/ui/util/av$a;

    .line 71
    iput-object p3, p0, Lcom/yelp/android/ui/panels/g;->e:Lcom/yelp/android/ui/panels/g$a;

    .line 72
    iput-object p4, p0, Lcom/yelp/android/ui/panels/g;->f:Lcom/yelp/android/analytics/iris/IriSource;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030212

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    const v0, 0x7f0f05e6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    .line 76
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->k:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0f05e9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->l:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0f05e8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->o:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0f05ec

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->m:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0f02e0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/webimageview/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->n:Lcom/yelp/android/webimageview/WebImageView;

    .line 81
    const v0, 0x7f0f05e7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/AwardBanner;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->c:Lcom/yelp/android/ui/widgets/AwardBanner;

    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/g;->b()V

    .line 83
    const v0, 0x7f0f0266

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/g$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/g$1;-><init>(Lcom/yelp/android/ui/panels/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0f05ed

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/g;->setSuggestion(Lcom/yelp/android/serializable/ReviewSuggestion;)V

    .line 97
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-string/jumbo v0, "bundle://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    cmpl-float v0, p1, v3

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v1, v0

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 290
    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    .line 294
    :goto_1
    new-instance v3, Lcom/yelp/android/ui/panels/g$6;

    invoke-direct {v3, p0, v2, v0}, Lcom/yelp/android/ui/panels/g$6;-><init>(Lcom/yelp/android/ui/panels/g;II)V

    .line 306
    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 307
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->p:Lcom/yelp/android/ui/util/av$a;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    return-void

    .line 285
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/g;->i:Z

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->f:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v0

    .line 266
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v1, "suggestion_type"

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getSuggestion()Lcom/yelp/android/serializable/ReviewSuggestion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/ReviewSuggestion;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ReviewSuggestionOpened:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0, v1, p1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070207

    const v4, 0x7f07039b

    invoke-static {v2, v3, v4, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->e:Lcom/yelp/android/ui/panels/g$a;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/panels/g$a;->a(Lcom/yelp/android/ui/panels/g;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/g;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/g;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/g;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/g;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/yelp/android/ui/panels/g;->i:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f0f05eb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/StarsView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->j:Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->j:Lcom/yelp/android/ui/activities/reviews/StarsView;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->MEDIUM:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarStyle(Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->j:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v1, Lcom/yelp/android/ui/panels/g$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/g$2;-><init>(Lcom/yelp/android/ui/panels/g;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnStarsClicked(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->j:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v1, Lcom/yelp/android/ui/panels/g$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/g$3;-><init>(Lcom/yelp/android/ui/panels/g;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnActionDown(Ljava/lang/Runnable;)V

    .line 121
    const v0, 0x7f0f05ea

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/g$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/g$4;-><init>(Lcom/yelp/android/ui/panels/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/g;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/g;->d()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/panels/g;)Lcom/yelp/android/ui/panels/g$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->e:Lcom/yelp/android/ui/panels/g$a;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 313
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ed;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ed;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 314
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ed;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 315
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewSuggestionRemoved:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/panels/g;)Lcom/yelp/android/ui/activities/reviews/StarsView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->j:Lcom/yelp/android/ui/activities/reviews/StarsView;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/g;->i:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/g;->p:Lcom/yelp/android/ui/util/av$a;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/av;->c(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 323
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/panels/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/panels/g;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/g;->c()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/g;->i:Z

    return v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->d:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion()Lcom/yelp/android/serializable/ReviewSuggestion;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->d:Lcom/yelp/android/serializable/ReviewSuggestion;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 159
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/g;->i:Z

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v8

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/g;->g:F

    .line 166
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/g;->b:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 168
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/g;->h:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/yelp/android/ui/panels/g;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 171
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/yelp/android/ui/panels/g;->g:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 175
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 176
    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 177
    iget-object v1, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 182
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/g;->h:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->e:Lcom/yelp/android/ui/panels/g$a;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/panels/g$a;->b(Lcom/yelp/android/ui/panels/g;)V

    .line 184
    iput-boolean v8, p0, Lcom/yelp/android/ui/panels/g;->h:Z

    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v8, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    :cond_5
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/g;->h:Z

    if-eqz v0, :cond_8

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 198
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 199
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/panels/g;->a(F)V

    .line 234
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->e:Lcom/yelp/android/ui/panels/g$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/g$a;->a()V

    .line 235
    iput-boolean v9, p0, Lcom/yelp/android/ui/panels/g;->h:Z

    goto/16 :goto_0

    .line 203
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/yelp/android/ui/panels/g;->g:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    int-to-double v4, v0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_7

    .line 208
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/panels/g;->a(F)V

    goto :goto_1

    .line 213
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 216
    new-instance v1, Lcom/yelp/android/ui/panels/g$5;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/panels/g$5;-><init>(Lcom/yelp/android/ui/panels/g;I)V

    .line 230
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 236
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->j:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/g;->a(I)V

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/yelp/android/ui/panels/g$a;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g;->e:Lcom/yelp/android/ui/panels/g$a;

    .line 151
    return-void
.end method

.method public setSuggestion(Lcom/yelp/android/serializable/ReviewSuggestion;)V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewSuggestion;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewSuggestion;->d()Ljava/lang/String;

    move-result-object v1

    .line 135
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g;->d:Lcom/yelp/android/serializable/ReviewSuggestion;

    .line 136
    iget-object v2, p0, Lcom/yelp/android/ui/panels/g;->j:Lcom/yelp/android/ui/activities/reviews/StarsView;

    iget-object v3, p0, Lcom/yelp/android/ui/panels/g;->d:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/ReviewSuggestion;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    .line 137
    iget-object v2, p0, Lcom/yelp/android/ui/panels/g;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/yelp/android/ui/panels/g;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewSuggestion;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/yelp/android/ui/panels/g;->o:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->n:Lcom/yelp/android/webimageview/WebImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200bb

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 141
    if-eqz v1, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->m:Landroid/widget/TextView;

    const v1, 0x7f0702d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/g;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->c:Lcom/yelp/android/ui/widgets/AwardBanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 147
    :cond_1
    return-void
.end method
