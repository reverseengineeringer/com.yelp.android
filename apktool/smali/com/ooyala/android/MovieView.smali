.class Lcom/ooyala/android/MovieView;
.super Landroid/view/SurfaceView;
.source "MovieView.java"


# instance fields
.field private _aspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ooyala/android/MovieView;->_aspectRatio:F

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ooyala/android/MovieView;->_aspectRatio:F

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ooyala/android/MovieView;->_aspectRatio:F

    .line 21
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 30
    iget v0, p0, Lcom/ooyala/android/MovieView;->_aspectRatio:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 31
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 58
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 37
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ERROR: cannot set MovieView size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_0

    .line 42
    :cond_2
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 43
    iget v3, p0, Lcom/ooyala/android/MovieView;->_aspectRatio:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    .line 45
    iget v1, p0, Lcom/ooyala/android/MovieView;->_aspectRatio:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 56
    :cond_3
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/ooyala/android/MovieView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 47
    :cond_4
    iget v3, p0, Lcom/ooyala/android/MovieView;->_aspectRatio:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 50
    int-to-float v0, v1

    iget v2, p0, Lcom/ooyala/android/MovieView;->_aspectRatio:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1
.end method

.method public setAspectRatio(F)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/ooyala/android/MovieView;->_aspectRatio:F

    .line 25
    invoke-virtual {p0}, Lcom/ooyala/android/MovieView;->requestLayout()V

    .line 26
    return-void
.end method
