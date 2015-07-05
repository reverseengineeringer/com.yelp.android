.class final Lcom/yelp/android/ui/util/da;
.super Landroid/view/animation/Animation;
.source "YelpAnimationUtils.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/View;I)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/yelp/android/ui/util/da;->a:Landroid/view/View;

    iput p2, p0, Lcom/yelp/android/ui/util/da;->b:I

    iput-object p3, p0, Lcom/yelp/android/ui/util/da;->c:Landroid/view/View;

    iput p4, p0, Lcom/yelp/android/ui/util/da;->d:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/util/da;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 213
    iget-object v1, p0, Lcom/yelp/android/ui/util/da;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/yelp/android/ui/util/da;->b:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 215
    iget-object v1, p0, Lcom/yelp/android/ui/util/da;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/util/da;->c:Landroid/view/View;

    iget v1, p0, Lcom/yelp/android/ui/util/da;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yelp/android/ui/util/da;->d:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 219
    return-void
.end method
