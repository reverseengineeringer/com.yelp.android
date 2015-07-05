.class Lcom/yelp/android/ui/util/ac;
.super Ljava/lang/Object;
.source "HideToolbarAnimationListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ab;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ab;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yelp/android/ui/util/ac;->a:Lcom/yelp/android/ui/util/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/yelp/android/ui/util/ac;->a:Lcom/yelp/android/ui/util/ab;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ab;->a(F)V

    .line 129
    return-void
.end method
