.class public Lcom/yelp/android/bc/c;
.super Landroid/widget/ImageView;
.source "MinecartShaftView.java"


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field private b:F

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/yelp/android/bc/c;->b()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020199

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/bc/c;->c:Landroid/graphics/Bitmap;

    .line 34
    iput-object p2, p0, Lcom/yelp/android/bc/c;->d:Landroid/graphics/Paint;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/bc/c;F)F
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/yelp/android/bc/c;->b:F

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/bc/c;->a:Landroid/animation/ValueAnimator;

    .line 58
    iget-object v0, p0, Lcom/yelp/android/bc/c;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/yelp/android/bc/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/bc/d;-><init>(Lcom/yelp/android/bc/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/bc/c;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/bc/c;->a:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 67
    return-void

    .line 57
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/bc/c;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/yelp/android/bc/c;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/bc/c;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 43
    iget-object v1, p0, Lcom/yelp/android/bc/c;->c:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/yelp/android/bc/c;->b:F

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/yelp/android/bc/c;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/yelp/android/bc/c;->b:F

    neg-float v3, v3

    mul-float/2addr v2, v3

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/bc/c;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/bc/c;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/yelp/android/bc/c;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/yelp/android/bc/c;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    return-void
.end method
