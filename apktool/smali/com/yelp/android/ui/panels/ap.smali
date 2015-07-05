.class Lcom/yelp/android/ui/panels/ap;
.super Landroid/view/animation/Animation;
.source "YourNextReviewAwaitsItem.java"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/panels/ak;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/ak;I)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ap;->b:Lcom/yelp/android/ui/panels/ak;

    iput p2, p0, Lcom/yelp/android/ui/panels/ap;->a:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ap;->b:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->e(Lcom/yelp/android/ui/panels/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    iget v1, p0, Lcom/yelp/android/ui/panels/ap;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yelp/android/ui/panels/ap;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 202
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 203
    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ap;->b:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->e(Lcom/yelp/android/ui/panels/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 205
    return-void
.end method
