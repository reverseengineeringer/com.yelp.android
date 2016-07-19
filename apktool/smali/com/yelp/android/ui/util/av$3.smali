.class final Lcom/yelp/android/ui/util/av$3;
.super Landroid/view/animation/Animation;
.source "YelpAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;ILcom/yelp/android/ui/util/av$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/util/av$a;


# direct methods
.method constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/util/av$a;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/yelp/android/ui/util/av$3;->a:Landroid/view/View;

    iput p2, p0, Lcom/yelp/android/ui/util/av$3;->b:I

    iput-object p3, p0, Lcom/yelp/android/ui/util/av$3;->c:Lcom/yelp/android/ui/util/av$a;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/util/av$3;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$3;->c:Lcom/yelp/android/ui/util/av$a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$3;->c:Lcom/yelp/android/ui/util/av$a;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/av$a;->a(Landroid/view/animation/Animation;)V

    .line 217
    :cond_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method
