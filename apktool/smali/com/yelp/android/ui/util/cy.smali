.class final Lcom/yelp/android/ui/util/cy;
.super Landroid/view/animation/Animation;
.source "YelpAnimationUtils.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/view/View;ZI)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yelp/android/ui/util/cy;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcom/yelp/android/ui/util/cy;->b:Z

    iput p3, p0, Lcom/yelp/android/ui/util/cy;->c:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/util/cy;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/cy;->b:Z

    if-eqz v0, :cond_1

    .line 114
    sub-float v0, v1, p1

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/cy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/util/cy;->c:I

    iget v2, p0, Lcom/yelp/android/ui/util/cy;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/util/cy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method
