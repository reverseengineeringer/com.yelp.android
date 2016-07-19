.class public Lcom/yelp/android/ui/activities/drawer/a;
.super Ljava/lang/Object;
.source "DinoAnimationController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Lcom/yelp/android/DinoListView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Landroid/app/Activity;

.field private h:Ljava/util/Timer;

.field private i:Lcom/yelp/android/ui/d;

.field private j:Landroid/animation/AnimatorSet;

.field private k:Landroid/animation/AnimatorSet;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/yelp/android/DinoListView;Landroid/widget/ImageView;Landroid/view/View;Landroid/app/Activity;IILcom/yelp/android/ui/d;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Lcom/yelp/android/appdata/n;->m:I

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->a:I

    .line 52
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->b:I

    .line 53
    const/16 v0, 0x6c

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->c:I

    .line 370
    new-instance v0, Lcom/yelp/android/ui/activities/drawer/a$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/drawer/a$4;-><init>(Lcom/yelp/android/ui/activities/drawer/a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->r:Landroid/view/View$OnClickListener;

    .line 79
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    .line 80
    iput-object p2, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    .line 81
    iput-object p3, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/view/View;

    .line 82
    iput-object p4, p0, Lcom/yelp/android/ui/activities/drawer/a;->g:Landroid/app/Activity;

    .line 83
    iput p5, p0, Lcom/yelp/android/ui/activities/drawer/a;->m:I

    .line 84
    iput p6, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    .line 85
    invoke-virtual {p7}, Lcom/yelp/android/ui/d;->b()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->o:I

    .line 86
    iput-object p7, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Lcom/yelp/android/ui/d;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->q:Z

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/drawer/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/drawer/a;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/drawer/a;->c(I)V

    return-void
.end method

.method private a(II)Z
    .locals 1

    .prologue
    .line 367
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/drawer/a;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->h:Ljava/util/Timer;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/DinoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_2

    .line 174
    if-lez p1, :cond_3

    iget v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->m:I

    :goto_0
    add-int/2addr v1, v0

    .line 178
    const/4 v3, 0x1

    if-le p1, v3, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    :cond_0
    add-int/2addr v0, v1

    .line 181
    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Lcom/yelp/android/ui/d;

    add-int/lit8 v3, p1, -0x3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/d;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->l:I

    .line 190
    :cond_2
    return-void

    :cond_3
    move v1, v0

    .line 174
    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/drawer/a;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->a:I

    return v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/a$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/a$1;-><init>(Lcom/yelp/android/ui/activities/drawer/a;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/DinoListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->p:Z

    .line 240
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->h:Ljava/util/Timer;

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->h:Ljava/util/Timer;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/a$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/a$2;-><init>(Lcom/yelp/android/ui/activities/drawer/a;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 263
    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 215
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Lcom/yelp/android/ui/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/d;->f()V

    .line 217
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->q:Z

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/DinoListView;->setSelection(I)V

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/DinoListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->p:Z

    .line 225
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/drawer/a;)Lcom/yelp/android/DinoListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    return-object v0
.end method

.method private d()V
    .locals 12

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    invoke-virtual {v4}, Lcom/yelp/android/DinoListView;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/yelp/android/ui/activities/drawer/a;->b:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/yelp/android/ui/activities/drawer/a;->c:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 289
    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    sget-object v4, Lcom/yelp/android/ui/util/av;->g:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 298
    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    sget-object v5, Lcom/yelp/android/ui/util/av;->g:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v8, v8

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 304
    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 305
    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 306
    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    .line 309
    iget-object v5, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 310
    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 313
    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    const-wide/16 v0, 0xa28

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 316
    const-wide/16 v0, 0xc8

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Landroid/animation/AnimatorSet;

    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/a$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/a$3;-><init>(Lcom/yelp/android/ui/activities/drawer/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 341
    return-void

    .line 285
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private d(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 353
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    invoke-virtual {v1}, Lcom/yelp/android/DinoListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/DinoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    invoke-virtual {v2}, Lcom/yelp/android/DinoListView;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/drawer/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->g:Landroid/app/Activity;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    invoke-virtual {v0}, Lcom/yelp/android/DinoListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    invoke-virtual {v0}, Lcom/yelp/android/DinoListView;->getLastVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/drawer/a;->c(I)V

    .line 194
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 349
    iput p1, p0, Lcom/yelp/android/ui/activities/drawer/a;->m:I

    .line 350
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 205
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 97
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->p:Z

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 103
    if-gt v0, v4, :cond_5

    .line 104
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->q:Z

    .line 112
    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/drawer/a;->b(I)V

    .line 114
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/ui/activities/drawer/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Lcom/yelp/android/ui/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/d;->d()Z

    move-result v0

    if-nez v0, :cond_6

    .line 117
    invoke-direct {p0, v4}, Lcom/yelp/android/ui/activities/drawer/a;->c(I)V

    .line 131
    :cond_3
    :goto_2
    iget v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->l:I

    iget v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->m:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 134
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    sub-int/2addr v1, v2

    .line 140
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 147
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    .line 151
    iget v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->m:I

    iget v3, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yelp/android/ui/activities/drawer/a;->l:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 153
    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:Lcom/yelp/android/DinoListView;

    invoke-virtual {v3, v1, v2}, Lcom/yelp/android/DinoListView;->a(FF)V

    .line 158
    const/16 v1, 0xa

    if-ge p2, v1, :cond_4

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Lcom/yelp/android/ui/d;

    invoke-virtual {v1}, Lcom/yelp/android/ui/d;->a()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 160
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/a;->c()V

    .line 161
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/a;->d()V

    .line 162
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/drawer/a;->p:Z

    goto :goto_0

    .line 105
    :cond_5
    if-le v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->q:Z

    if-nez v0, :cond_2

    .line 108
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DinoSeen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 109
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/drawer/a;->q:Z

    goto :goto_1

    .line 118
    :cond_6
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/drawer/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Lcom/yelp/android/ui/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/d;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    invoke-virtual {p1, v1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Lcom/yelp/android/ui/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/d;->e()V

    goto :goto_2

    .line 124
    :cond_7
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Lcom/yelp/android/ui/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/d;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Lcom/yelp/android/ui/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/d;->f()V

    goto/16 :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method
