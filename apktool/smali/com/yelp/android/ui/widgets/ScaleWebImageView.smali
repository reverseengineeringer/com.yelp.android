.class public Lcom/yelp/android/ui/widgets/ScaleWebImageView;
.super Lcom/yelp/android/ui/widgets/ShadowWebImageView;
.source "ScaleWebImageView.java"


# instance fields
.field private a:Landroid/view/ScaleGestureDetector;

.field private b:Lcom/yelp/android/ui/widgets/ao;

.field private c:Landroid/view/GestureDetector;

.field private d:Landroid/graphics/Matrix;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroid/graphics/PointF;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private final n:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->j:Z

    .line 284
    new-instance v0, Lcom/yelp/android/ui/widgets/al;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/al;-><init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->n:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->j:Z

    .line 284
    new-instance v0, Lcom/yelp/android/ui/widgets/al;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/al;-><init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->n:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;F)F
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    return p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 50
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->n:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a:Landroid/view/ScaleGestureDetector;

    .line 51
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/widgets/ak;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/widgets/ak;-><init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->c:Landroid/view/GestureDetector;

    .line 79
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 81
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->i:Landroid/graphics/PointF;

    .line 82
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    return-void
.end method

.method private a(FFF)V
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    mul-float/2addr v0, p1

    .line 223
    iget v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 224
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f:F

    iget v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    div-float p1, v0, v1

    .line 225
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f:F

    iput v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 234
    return-void

    .line 226
    :cond_0
    iget v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->g:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 227
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->g:F

    iget v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    div-float p1, v0, v1

    .line 228
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->g:F

    iput v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    goto :goto_0

    .line 230
    :cond_1
    iput v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;FFF)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(FFF)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->h:F

    return v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 198
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v0

    .line 202
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v1

    .line 204
    int-to-float v2, v0

    iget v3, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->l:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 205
    int-to-float v3, v1

    iget v4, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->m:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 207
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    iput v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->h:F

    .line 208
    iget v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->g:F

    .line 209
    iget v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f:F

    .line 211
    iget v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->l:I

    int-to-float v2, v2

    iget v3, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    mul-float/2addr v2, v3

    .line 212
    iget v3, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->m:I

    int-to-float v3, v3

    iget v4, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    mul-float/2addr v3, v4

    .line 213
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    .line 214
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v2, v5

    sub-float/2addr v0, v2

    .line 215
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    iget v4, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 216
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 219
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/ScaleWebImageView;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Lcom/yelp/android/ui/widgets/ao;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b:Lcom/yelp/android/ui/widgets/ao;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getCenteringValues()Landroid/util/Pair;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 282
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->j:Z

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getCenteringValues()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->l:I

    return v0
.end method

.method private getCenteringValues()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 246
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 247
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 248
    const/4 v2, 0x2

    aget v2, v0, v2

    .line 249
    const/4 v3, 0x5

    aget v3, v0, v3

    .line 250
    const/4 v4, 0x0

    aget v4, v0, v4

    iget v5, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->l:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    .line 251
    const/4 v5, 0x4

    aget v0, v0, v5

    iget v5, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->m:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v4, v6

    sub-float/2addr v0, v4

    sub-float/2addr v0, v2

    .line 264
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v5, v2

    if-gez v2, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float v2, v5, v6

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    .line 273
    :cond_0
    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 257
    :cond_1
    cmpl-float v0, v2, v1

    if-lez v0, :cond_2

    .line 258
    neg-float v0, v2

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    cmpg-float v0, v2, v0

    if-gez v0, :cond_5

    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    sub-float/2addr v0, v2

    goto :goto_0

    .line 267
    :cond_3
    cmpl-float v2, v3, v1

    if-lez v2, :cond_4

    .line 268
    neg-float v1, v3

    goto :goto_1

    .line 269
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    cmpg-float v2, v3, v2

    if-gez v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->m:I

    return v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->c()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 92
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 93
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 94
    iget v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    iget v3, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->l:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 97
    float-to-int v3, v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 98
    const/4 v3, 0x2

    aget v1, v1, v3

    float-to-int v1, v1

    .line 104
    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v3, v2

    float-to-int v2, v2

    if-ne v1, v2, :cond_2

    if-gtz p1, :cond_0

    .line 112
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->onSizeChanged(IIII)V

    .line 88
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b()V

    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    iget v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e:F

    iget v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->h:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->j:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 134
    iput-boolean v9, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->k:Z

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->i:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 187
    :cond_1
    return v9

    .line 135
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_8

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->k:Z

    if-eqz v0, :cond_8

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->i:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->i:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 139
    const/16 v3, 0x9

    new-array v3, v3, [F

    .line 140
    iget-object v4, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 141
    aget v4, v3, v5

    iget v5, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->l:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    .line 142
    const/4 v5, 0x4

    aget v5, v3, v5

    iget v6, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->m:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 143
    aget v6, v3, v7

    .line 144
    const/4 v7, 0x5

    aget v3, v3, v7

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    move v0, v1

    .line 164
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v5, v4

    if-gez v4, :cond_6

    .line 180
    :goto_2
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 153
    :cond_4
    add-float v7, v6, v0

    cmpl-float v7, v7, v1

    if-lez v7, :cond_5

    .line 154
    neg-float v0, v6

    goto :goto_1

    .line 155
    :cond_5
    add-float v7, v6, v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    sub-float/2addr v0, v6

    goto :goto_1

    .line 170
    :cond_6
    add-float v4, v3, v2

    cmpl-float v1, v4, v1

    if-lez v1, :cond_7

    .line 171
    neg-float v1, v3

    goto :goto_2

    .line 172
    :cond_7
    add-float v1, v3, v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_9

    .line 176
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    sub-float/2addr v1, v3

    goto :goto_2

    .line 182
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 183
    iput-boolean v5, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->k:Z

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_2
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->l:I

    .line 122
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->m:I

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b()V

    .line 125
    return-void
.end method

.method public setTapListener(Lcom/yelp/android/ui/widgets/ao;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b:Lcom/yelp/android/ui/widgets/ao;

    .line 192
    return-void
.end method
