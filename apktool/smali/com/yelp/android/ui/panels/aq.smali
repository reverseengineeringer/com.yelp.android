.class Lcom/yelp/android/ui/panels/aq;
.super Landroid/view/animation/Animation;
.source "YourNextReviewAwaitsItem.java"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/panels/ak;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/ak;II)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/yelp/android/ui/panels/aq;->c:Lcom/yelp/android/ui/panels/ak;

    iput p2, p0, Lcom/yelp/android/ui/panels/aq;->a:I

    iput p3, p0, Lcom/yelp/android/ui/panels/aq;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/panels/aq;->c:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->e(Lcom/yelp/android/ui/panels/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    iget v1, p0, Lcom/yelp/android/ui/panels/aq;->a:I

    iget v2, p0, Lcom/yelp/android/ui/panels/aq;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 267
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 268
    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/panels/aq;->c:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->e(Lcom/yelp/android/ui/panels/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 270
    return-void
.end method
