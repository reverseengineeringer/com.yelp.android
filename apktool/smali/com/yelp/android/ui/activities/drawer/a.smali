.class public Lcom/yelp/android/ui/activities/drawer/a;
.super Ljava/lang/Object;
.source "DinoAnimationController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Lcom/yelp/android/DinoListView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View;

.field private h:Landroid/app/Activity;

.field private i:Ljava/util/Timer;

.field private j:Lcom/yelp/android/ui/h;

.field private k:Landroid/animation/AnimatorSet;

.field private l:Landroid/animation/AnimatorSet;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private final r:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/yelp/android/DinoListView;Landroid/widget/ImageView;Landroid/view/View;Landroid/app/Activity;IILcom/yelp/android/ui/h;)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Lcom/yelp/android/appdata/ao;->m:I

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->a:I

    .line 52
    const/16 v0, 0x249

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->b:I

    .line 53
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->c:I

    .line 54
    const/16 v0, 0x6c

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:I

    .line 327
    new-instance v0, Lcom/yelp/android/ui/activities/drawer/f;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "height"

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/drawer/f;-><init>(Lcom/yelp/android/ui/activities/drawer/a;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->r:Landroid/util/Property;

    .line 342
    new-instance v0, Lcom/yelp/android/ui/activities/drawer/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/drawer/g;-><init>(Lcom/yelp/android/ui/activities/drawer/a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->s:Landroid/view/View$OnClickListener;

    .line 74
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    .line 75
    iput-object p2, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    .line 76
    iput-object p3, p0, Lcom/yelp/android/ui/activities/drawer/a;->g:Landroid/view/View;

    .line 77
    iput-object p4, p0, Lcom/yelp/android/ui/activities/drawer/a;->h:Landroid/app/Activity;

    .line 78
    iput p5, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    .line 79
    iput p6, p0, Lcom/yelp/android/ui/activities/drawer/a;->o:I

    .line 80
    invoke-virtual {p7}, Lcom/yelp/android/ui/h;->a()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->p:I

    .line 81
    iput-object p7, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Lcom/yelp/android/ui/h;

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/drawer/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->g:Landroid/view/View;

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
    .line 323
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
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Ljava/util/Timer;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/DinoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_2

    .line 151
    if-lez p1, :cond_3

    iget v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    :goto_0
    add-int/2addr v1, v0

    .line 155
    const/4 v3, 0x1

    if-le p1, v3, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->o:I

    :cond_0
    add-int/2addr v0, v1

    .line 158
    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Lcom/yelp/android/ui/h;

    add-int/lit8 v3, p1, -0x3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/h;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->m:I

    .line 167
    :cond_2
    return-void

    :cond_3
    move v1, v0

    .line 151
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
    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/b;-><init>(Lcom/yelp/android/ui/activities/drawer/a;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/DinoListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->q:Z

    .line 215
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Ljava/util/Timer;

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Ljava/util/Timer;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/c;-><init>(Lcom/yelp/android/ui/activities/drawer/a;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 234
    return-void
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 192
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Lcom/yelp/android/ui/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/h;->e()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/DinoListView;->setSelection(I)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/DinoListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->q:Z

    .line 201
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/drawer/a;)Lcom/yelp/android/DinoListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    return-object v0
.end method

.method private d()V
    .locals 12

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/yelp/android/ui/activities/drawer/a;->b:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/yelp/android/ui/activities/drawer/a;->c:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/yelp/android/ui/activities/drawer/a;->d:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/a;->r:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 263
    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/drawer/a;->r:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/yelp/android/ui/activities/drawer/a;->f:Landroid/widget/ImageView;

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

    .line 267
    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 268
    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 269
    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 271
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/yelp/android/ui/activities/drawer/a;->l:Landroid/animation/AnimatorSet;

    .line 272
    iget-object v5, p0, Lcom/yelp/android/ui/activities/drawer/a;->l:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 273
    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 276
    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 277
    const-wide/16 v0, 0xa28

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 279
    const-wide/16 v0, 0xc8

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 281
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/e;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/e;-><init>(Lcom/yelp/android/ui/activities/drawer/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 297
    return-void

    .line 252
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

    .line 309
    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    invoke-virtual {v1}, Lcom/yelp/android/DinoListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/DinoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

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
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->h:Landroid/app/Activity;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    invoke-virtual {v0}, Lcom/yelp/android/DinoListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

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
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/drawer/a;->c(I)V

    .line 171
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 305
    iput p1, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    .line 306
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 182
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 91
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->q:Z

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/drawer/a;->b(I)V

    .line 97
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/ui/activities/drawer/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Lcom/yelp/android/ui/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/h;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    invoke-direct {p0, v3}, Lcom/yelp/android/ui/activities/drawer/a;->c(I)V

    .line 114
    :cond_2
    :goto_1
    iget v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->m:I

    iget v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->o:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 119
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 126
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 131
    iget v1, p0, Lcom/yelp/android/ui/activities/drawer/a;->n:I

    iget v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->m:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 133
    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/a;->e:Lcom/yelp/android/DinoListView;

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/DinoListView;->a(FF)V

    .line 136
    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/a;->c()V

    .line 138
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/a;->d()V

    .line 139
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/drawer/a;->q:Z

    goto :goto_0

    .line 101
    :cond_3
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/drawer/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Lcom/yelp/android/ui/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/h;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {p1, v1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Lcom/yelp/android/ui/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/h;->d()V

    goto :goto_1

    .line 107
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/drawer/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Lcom/yelp/android/ui/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/h;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a;->j:Lcom/yelp/android/ui/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/h;->e()V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method
