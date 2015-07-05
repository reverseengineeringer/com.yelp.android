.class Lcom/yelp/android/bc/d;
.super Ljava/lang/Object;
.source "MinecartShaftView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/bc/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/bc/c;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yelp/android/bc/d;->a:Lcom/yelp/android/bc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/yelp/android/bc/d;->a:Lcom/yelp/android/bc/c;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/bc/c;->a(Lcom/yelp/android/bc/c;F)F

    .line 62
    iget-object v0, p0, Lcom/yelp/android/bc/d;->a:Lcom/yelp/android/bc/c;

    invoke-virtual {v0}, Lcom/yelp/android/bc/c;->invalidate()V

    .line 63
    return-void
.end method
