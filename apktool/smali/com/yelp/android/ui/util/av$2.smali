.class final Lcom/yelp/android/ui/util/av$2;
.super Landroid/view/animation/Animation;
.source "YelpAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;IZLcom/yelp/android/ui/util/av$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/view/View;ZI)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yelp/android/ui/util/av$2;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcom/yelp/android/ui/util/av$2;->b:Z

    iput p3, p0, Lcom/yelp/android/ui/util/av$2;->c:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 165
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/av$2;->b:Z

    if-eqz v0, :cond_1

    .line 169
    sub-float v0, v1, p1

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/util/av$2;->c:I

    iget v2, p0, Lcom/yelp/android/ui/util/av$2;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method
