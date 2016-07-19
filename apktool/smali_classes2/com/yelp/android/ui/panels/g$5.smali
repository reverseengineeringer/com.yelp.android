.class Lcom/yelp/android/ui/panels/g$5;
.super Landroid/view/animation/Animation;
.source "YourNextReviewAwaitsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/g;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/panels/g;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/g;I)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g$5;->b:Lcom/yelp/android/ui/panels/g;

    iput p2, p0, Lcom/yelp/android/ui/panels/g$5;->a:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$5;->b:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->e(Lcom/yelp/android/ui/panels/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 223
    iget v1, p0, Lcom/yelp/android/ui/panels/g$5;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yelp/android/ui/panels/g$5;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 225
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 226
    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$5;->b:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->e(Lcom/yelp/android/ui/panels/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 228
    return-void
.end method
