.class Lcom/yelp/android/ui/panels/g$6;
.super Landroid/view/animation/Animation;
.source "YourNextReviewAwaitsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/g;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/panels/g;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/g;II)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g$6;->c:Lcom/yelp/android/ui/panels/g;

    iput p2, p0, Lcom/yelp/android/ui/panels/g$6;->a:I

    iput p3, p0, Lcom/yelp/android/ui/panels/g$6;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$6;->c:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->e(Lcom/yelp/android/ui/panels/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 300
    iget v1, p0, Lcom/yelp/android/ui/panels/g$6;->a:I

    iget v2, p0, Lcom/yelp/android/ui/panels/g$6;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 301
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 302
    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$6;->c:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->e(Lcom/yelp/android/ui/panels/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 304
    return-void
.end method
