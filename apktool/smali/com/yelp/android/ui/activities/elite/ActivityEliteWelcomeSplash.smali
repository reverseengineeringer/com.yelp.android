.class public Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityEliteWelcomeSplash.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/yelp/android/appdata/webrequests/bh;

.field private l:Ljava/lang/String;

.field private final m:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 317
    new-instance v0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;-><init>(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method private a(FFFFI)Landroid/view/animation/AnimationSet;
    .locals 10

    .prologue
    .line 203
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 206
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    move v4, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 216
    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 217
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 220
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 221
    const-wide/16 v2, 0x4b0

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 222
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 225
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    int-to-float v3, p5

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 233
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 234
    const-wide/16 v2, 0x384

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 235
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 237
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 238
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 239
    invoke-virtual {v9, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 240
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 241
    return-object v9
.end method

.method private a()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->startActivity(Landroid/content/Intent;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->finish()V

    .line 142
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 281
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 284
    const v0, 0x7f0f02d2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 286
    const v0, 0x7f0f02c9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 288
    const v0, 0x7f0f02c8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 294
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 152
    new-instance v1, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$1;-><init>(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->j:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$2;-><init>(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->i:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$3;-><init>(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 10

    .prologue
    const v3, 0x3ecccccd    # 0.4f

    const/4 v7, 0x0

    .line 183
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->e()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->d()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v6, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a:Landroid/widget/ImageView;

    const/high16 v1, -0x3f700000    # -4.5f

    const/high16 v2, -0x3f800000    # -4.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a(FFFFI)Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->b:Landroid/widget/ImageView;

    const/high16 v5, -0x40000000    # -2.0f

    const v6, -0x3f6ccccd    # -4.6f

    const/16 v9, -0xa

    move-object v4, p0

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a(FFFFI)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->c:Landroid/widget/ImageView;

    const v5, 0x4019999a    # 2.4f

    const v6, -0x3fe66666    # -2.4f

    const/high16 v8, 0x3f000000    # 0.5f

    const/16 v9, 0xa

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a(FFFFI)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    return-void
.end method

.method private d()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f000000    # 0.5f

    const v8, -0x414ccccd    # -0.35f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 251
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 252
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 254
    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->f:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 259
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 260
    new-instance v1, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$4;-><init>(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    iget-object v1, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->f:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 274
    return-object v0

    .line 258
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->b()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f0300b3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->setContentView(I)V

    .line 77
    const v0, 0x7f0f02ca

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0f02cb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->b:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0f02cc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->c:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0f02ce

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->d:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0f02cf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->e:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0f02d1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->f:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f0f02d0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->g:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0f02d5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->j:Landroid/view/View;

    .line 85
    const v0, 0x7f0f02d6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->i:Landroid/view/View;

    .line 86
    const v0, 0x7f0f02d3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->h:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->l:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->B()[I

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    array-length v0, v0

    .line 93
    :goto_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 94
    const v0, 0x7f0e0085

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a(I)V

    .line 95
    const v0, 0x7f0e0082

    const v1, 0x7f0e007f

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a(II)V

    .line 103
    :goto_1
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 97
    const v0, 0x7f0e0087

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a(I)V

    .line 98
    const v0, 0x7f0e0084

    const v1, 0x7f0e0081

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a(II)V

    goto :goto_1

    .line 100
    :cond_2
    const v0, 0x7f0e0086

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a(I)V

    .line 101
    const v0, 0x7f0e0083

    const v1, 0x7f0e0080

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->a(II)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 128
    const-string/jumbo v0, "accept_invitation"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->k:Lcom/yelp/android/appdata/webrequests/bh;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 109
    const-string/jumbo v0, "accept_invitation"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->k:Lcom/yelp/android/appdata/webrequests/bh;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bh;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->k:Lcom/yelp/android/appdata/webrequests/bh;

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->k:Lcom/yelp/android/appdata/webrequests/bh;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bh;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/bh;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->k:Lcom/yelp/android/appdata/webrequests/bh;

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->k:Lcom/yelp/android/appdata/webrequests/bh;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bh;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->enableLoading()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->k:Lcom/yelp/android/appdata/webrequests/bh;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bh;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->enableLoading()V

    goto :goto_0
.end method
