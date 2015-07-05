.class final Lcom/yelp/android/ui/util/cz;
.super Landroid/view/animation/Animation;
.source "YelpAnimationUtils.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/util/dd;


# direct methods
.method constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/util/dd;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yelp/android/ui/util/cz;->a:Landroid/view/View;

    iput p2, p0, Lcom/yelp/android/ui/util/cz;->b:I

    iput-object p3, p0, Lcom/yelp/android/ui/util/cz;->c:Lcom/yelp/android/ui/util/dd;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/util/cz;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/util/cz;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/util/cz;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/util/cz;->c:Lcom/yelp/android/ui/util/dd;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/util/cz;->c:Lcom/yelp/android/ui/util/dd;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/dd;->a(Landroid/view/animation/Animation;)V

    .line 161
    :cond_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method
