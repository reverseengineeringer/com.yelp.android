.class Lcom/yelp/android/bc/b;
.super Ljava/lang/Object;
.source "LightningShaftView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/bc/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/bc/a;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/bc/b;->a:Lcom/yelp/android/bc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 70
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/yelp/android/bc/b;->a:Lcom/yelp/android/bc/a;

    invoke-static {v1}, Lcom/yelp/android/bc/a;->a(Lcom/yelp/android/bc/a;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float v2, v0, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    iget-object v1, p0, Lcom/yelp/android/bc/b;->a:Lcom/yelp/android/bc/a;

    invoke-static {v1}, Lcom/yelp/android/bc/a;->b(Lcom/yelp/android/bc/a;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    rsub-int v0, v0, 0xff

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/bc/b;->a:Lcom/yelp/android/bc/a;

    invoke-virtual {v0}, Lcom/yelp/android/bc/a;->invalidate()V

    .line 76
    return-void
.end method
