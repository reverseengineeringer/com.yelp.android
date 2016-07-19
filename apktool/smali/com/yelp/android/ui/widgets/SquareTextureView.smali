.class public Lcom/yelp/android/ui/widgets/SquareTextureView;
.super Landroid/view/TextureView;
.source "SquareTextureView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method private getScaleMatrix()Landroid/graphics/Matrix;
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 54
    iget v1, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->b:I

    iget v2, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->c:I

    if-le v1, v2, :cond_0

    .line 55
    iget v1, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->c:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 61
    :goto_0
    iget v2, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->a:I

    div-int/lit8 v2, v2, 0x2

    .line 63
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    int-to-float v4, v2

    int-to-float v2, v2

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 65
    return-object v3

    .line 56
    :cond_0
    iget v1, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->c:I

    iget v2, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->b:I

    if-le v1, v2, :cond_1

    .line 57
    iget v1, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 40
    iput p1, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->b:I

    .line 41
    iput p2, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->c:I

    .line 42
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/SquareTextureView;->getScaleMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SquareTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SquareTextureView;->invalidate()V

    .line 45
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 29
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->a:I

    .line 33
    iget v0, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->a:I

    iget v1, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/SquareTextureView;->setMeasuredDimension(II)V

    .line 34
    iget v0, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->c:I

    if-lez v0, :cond_0

    .line 35
    iget v0, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->b:I

    iget v1, p0, Lcom/yelp/android/ui/widgets/SquareTextureView;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/SquareTextureView;->a(II)V

    .line 37
    :cond_0
    return-void
.end method
