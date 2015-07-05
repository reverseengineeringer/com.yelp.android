.class public Lcom/yelp/android/ui/panels/ak;
.super Landroid/widget/RelativeLayout;
.source "YourNextReviewAwaitsItem.java"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/view/VelocityTracker;

.field private c:Lcom/yelp/android/serializable/ReviewSuggestion;

.field private d:Lcom/yelp/android/ui/panels/at;

.field private e:Lcom/yelp/android/analytics/iris/IriSource;

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Lcom/yelp/android/ui/activities/reviews/StarsView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/yelp/android/webimageview/WebImageView;

.field private n:Landroid/widget/ImageView;

.field private final o:Lcom/yelp/android/ui/util/dd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/serializable/ReviewSuggestion;Lcom/yelp/android/ui/panels/at;Lcom/yelp/android/analytics/iris/IriSource;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 291
    new-instance v0, Lcom/yelp/android/ui/panels/ar;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/ar;-><init>(Lcom/yelp/android/ui/panels/ak;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ak;->o:Lcom/yelp/android/ui/util/dd;

    .line 66
    iput-object p3, p0, Lcom/yelp/android/ui/panels/ak;->d:Lcom/yelp/android/ui/panels/at;

    .line 67
    iput-object p4, p0, Lcom/yelp/android/ui/panels/ak;->e:Lcom/yelp/android/analytics/iris/IriSource;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030194

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    const v0, 0x7f0c04df

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    .line 71
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ak;->j:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0c04e1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ak;->k:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0c04e0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ak;->n:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0c04e3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ak;->l:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0c0310

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/webimageview/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ak;->m:Lcom/yelp/android/webimageview/WebImageView;

    .line 76
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/ak;->b()V

    .line 77
    const v0, 0x7f0c021a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/al;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/al;-><init>(Lcom/yelp/android/ui/panels/ak;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0c04e4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/ak;->setSuggestion(Lcom/yelp/android/serializable/ReviewSuggestion;)V

    .line 89
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
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

    .line 257
    cmpl-float v0, p1, v3

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v1, v0

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 260
    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    .line 262
    :goto_1
    new-instance v3, Lcom/yelp/android/ui/panels/aq;

    invoke-direct {v3, p0, v2, v0}, Lcom/yelp/android/ui/panels/aq;-><init>(Lcom/yelp/android/ui/panels/ak;II)V

    .line 272
    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 273
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->o:Lcom/yelp/android/ui/util/dd;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    return-void

    .line 257
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/ak;->h:Z

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->e:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v0

    .line 243
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ReviewSuggestionOpened:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 246
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0, v1, p1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070642

    const v4, 0x7f070360

    invoke-static {v2, v3, v4, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->d:Lcom/yelp/android/ui/panels/at;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/panels/at;->a(Lcom/yelp/android/ui/panels/ak;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/ak;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/ak;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/ak;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/ak;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/ak;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/yelp/android/ui/panels/ak;->h:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f0c0295

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/StarsView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ak;->i:Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->i:Lcom/yelp/android/ui/activities/reviews/StarsView;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;->MEDIUM:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarSize(Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->i:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v1, Lcom/yelp/android/ui/panels/am;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/am;-><init>(Lcom/yelp/android/ui/panels/ak;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnStarsClicked(Ljava/lang/Runnable;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->i:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v1, Lcom/yelp/android/ui/panels/an;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/an;-><init>(Lcom/yelp/android/ui/panels/ak;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnActionDown(Ljava/lang/Runnable;)V

    .line 111
    const v0, 0x7f0c04e2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/ao;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/ao;-><init>(Lcom/yelp/android/ui/panels/ak;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/ak;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/ak;->d()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/panels/ak;)Lcom/yelp/android/ui/panels/at;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->d:Lcom/yelp/android/ui/panels/at;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 279
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fh;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fh;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V

    .line 280
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fh;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 281
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewSuggestionRemoved:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/panels/ak;)Lcom/yelp/android/ui/activities/reviews/StarsView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->i:Lcom/yelp/android/ui/activities/reviews/StarsView;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/ak;->h:Z

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/ak;->o:Lcom/yelp/android/ui/util/dd;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/cw;->c(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/panels/ak;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/panels/ak;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/ak;->c()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/ak;->h:Z

    return v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->c:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion()Lcom/yelp/android/serializable/ReviewSuggestion;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->c:Lcom/yelp/android/serializable/ReviewSuggestion;

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

    .line 144
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/ak;->h:Z

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v8

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/ak;->f:F

    .line 151
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ak;->b:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 153
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/ak;->g:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/yelp/android/ui/panels/ak;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 156
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/yelp/android/ui/panels/ak;->f:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 159
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 160
    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 161
    iget-object v1, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 166
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/ak;->g:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->d:Lcom/yelp/android/ui/panels/at;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/panels/at;->b(Lcom/yelp/android/ui/panels/ak;)V

    .line 168
    iput-boolean v8, p0, Lcom/yelp/android/ui/panels/ak;->g:Z

    goto :goto_0

    .line 171
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v8, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    :cond_5
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/ak;->g:Z

    if-eqz v0, :cond_8

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 181
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 182
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/panels/ak;->a(F)V

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->d:Lcom/yelp/android/ui/panels/at;

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/at;->a()V

    .line 212
    iput-boolean v9, p0, Lcom/yelp/android/ui/panels/ak;->g:Z

    goto/16 :goto_0

    .line 186
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/yelp/android/ui/panels/ak;->f:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    int-to-double v4, v0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_7

    .line 190
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/panels/ak;->a(F)V

    goto :goto_1

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 197
    new-instance v1, Lcom/yelp/android/ui/panels/ap;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/panels/ap;-><init>(Lcom/yelp/android/ui/panels/ak;I)V

    .line 207
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 213
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->i:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/ak;->a(I)V

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/yelp/android/ui/panels/at;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ak;->d:Lcom/yelp/android/ui/panels/at;

    .line 136
    return-void
.end method

.method public setSuggestion(Lcom/yelp/android/serializable/ReviewSuggestion;)V
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewSuggestion;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewSuggestion;->getReviewActivity()Ljava/lang/String;

    move-result-object v1

    .line 123
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ak;->c:Lcom/yelp/android/serializable/ReviewSuggestion;

    .line 124
    iget-object v2, p0, Lcom/yelp/android/ui/panels/ak;->i:Lcom/yelp/android/ui/activities/reviews/StarsView;

    iget-object v3, p0, Lcom/yelp/android/ui/panels/ak;->c:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/ReviewSuggestion;->getLatestReviewRating()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    .line 125
    iget-object v2, p0, Lcom/yelp/android/ui/panels/ak;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, p0, Lcom/yelp/android/ui/panels/ak;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewSuggestion;->getReasonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/yelp/android/ui/panels/ak;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/yelp/android/webimageview/WebImageView;->getResourceForName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->m:Lcom/yelp/android/webimageview/WebImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ak;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020090

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 129
    if-eqz v1, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ak;->l:Landroid/widget/TextView;

    const v1, 0x7f070283

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :cond_0
    return-void
.end method
