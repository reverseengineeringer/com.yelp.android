.class public Lcom/yelp/android/ui/view/dino/ChefCarmenView;
.super Landroid/view/View;
.source "ChefCarmenView.java"


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Bitmap;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Landroid/animation/ValueAnimator;

.field private final h:Landroid/animation/ValueAnimator;

.field private final i:Landroid/graphics/Matrix;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Landroid/graphics/Path;

.field private final s:Landroid/graphics/Paint;

.field private final t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 355
    new-instance v0, Lcom/yelp/android/ui/view/dino/ChefCarmenView$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView$1;-><init>(Lcom/yelp/android/ui/view/dino/ChefCarmenView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    const v1, 0x7f02014e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a:Landroid/graphics/Bitmap;

    .line 112
    const v1, 0x7f020152

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->b:Landroid/graphics/Bitmap;

    .line 113
    const v1, 0x7f02014f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->c:Landroid/graphics/Bitmap;

    .line 114
    const v1, 0x7f020150

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->d:Landroid/graphics/Bitmap;

    .line 116
    const v1, 0x7f020153

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e:Landroid/graphics/Bitmap;

    .line 117
    const v1, 0x7f020151

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->f:Landroid/graphics/Bitmap;

    .line 119
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->c()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->g:Landroid/animation/ValueAnimator;

    .line 120
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->d()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->h:Landroid/animation/ValueAnimator;

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->s:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->s:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->s:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0141

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)F
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->j:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 268
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)F
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->j:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 273
    return-void
.end method

.method private c()Landroid/animation/ValueAnimator;
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 280
    new-array v0, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    const-string/jumbo v2, "clock_hand"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "spoon_scale"

    const/4 v2, 0x5

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 292
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 293
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 294
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    return-object v0

    .line 280
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private d()Landroid/animation/ValueAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 305
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    const-string/jumbo v2, "spoon_rotate"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "spoon_translate"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "carmen_rotate"

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 321
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 322
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 323
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 324
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    return-object v0

    .line 305
    nop

    :array_0
    .array-data 4
        -0x3f000000    # -8.0f
        0x41000000    # 8.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3f600000    # -5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x41200000    # 10.0f
    .end array-data
.end method

.method private e()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->j:F

    iget v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->j:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 336
    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a()V

    .line 187
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 194
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->b()V

    .line 195
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 211
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e()V

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 215
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e()V

    .line 216
    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->g:Landroid/animation/ValueAnimator;

    const-string/jumbo v2, "clock_hand"

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->l:F

    iget v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 222
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e()V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->l:F

    iget-object v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a(Landroid/graphics/Bitmap;)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->m:F

    iget-object v3, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->b(Landroid/graphics/Bitmap;)F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 229
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e()V

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a(Landroid/graphics/Bitmap;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->b(Landroid/graphics/Bitmap;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 233
    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->h:Landroid/animation/ValueAnimator;

    const-string/jumbo v2, "carmen_rotate"

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->h:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "spoon_translate"

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->k:F

    mul-float/2addr v0, v1

    .line 243
    iget v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->n:F

    iget-object v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a(Landroid/graphics/Bitmap;)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->g:Landroid/animation/ValueAnimator;

    const-string/jumbo v2, "spoon_scale"

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 245
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e()V

    .line 246
    iget-object v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->o:F

    iget-object v4, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->b(Landroid/graphics/Bitmap;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 247
    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->n:F

    iget v3, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->o:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 249
    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->h:Landroid/animation/ValueAnimator;

    const-string/jumbo v2, "spoon_rotate"

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->p:F

    iget v3, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->q:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 256
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->e()V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->b(Landroid/graphics/Bitmap;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1, v2}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->resolveSizeAndState(III)I

    move-result v0

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2, v2}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->resolveSizeAndState(III)I

    move-result v1

    .line 149
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 150
    invoke-virtual {p0, v0, v0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->setMeasuredDimension(II)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .prologue
    const/high16 v3, 0x42b80000    # 92.0f

    const/4 v1, 0x0

    .line 160
    int-to-float v0, p1

    iget-object v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->j:F

    .line 163
    int-to-float v0, p1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->k:F

    .line 165
    const/high16 v0, 0x420c0000    # 35.0f

    iget v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->k:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->l:F

    .line 166
    const/high16 v0, 0x42a80000    # 84.0f

    iget v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->k:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->m:F

    .line 167
    iget v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->k:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->n:F

    .line 168
    const/high16 v0, 0x430a0000    # 138.0f

    iget v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->k:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->o:F

    .line 169
    iget v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->k:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->p:F

    .line 170
    const/high16 v0, 0x43300000    # 176.0f

    iget v2, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->k:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->q:F

    .line 174
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->r:Landroid/graphics/Path;

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->r:Landroid/graphics/Path;

    int-to-float v3, p1

    int-to-float v4, p2

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->r:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->r:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 178
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 200
    if-nez p2, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->a()V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/ChefCarmenView;->b()V

    goto :goto_0
.end method
