.class Lcom/yelp/android/ui/view/dino/b$1;
.super Ljava/lang/Object;
.source "MinecartShaftView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/view/dino/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/view/dino/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/view/dino/b;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yelp/android/ui/view/dino/b$1;->a:Lcom/yelp/android/ui/view/dino/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/yelp/android/ui/view/dino/b$1;->a:Lcom/yelp/android/ui/view/dino/b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/view/dino/b;->a(Lcom/yelp/android/ui/view/dino/b;F)F

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/b$1;->a:Lcom/yelp/android/ui/view/dino/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/view/dino/b;->invalidate()V

    .line 66
    return-void
.end method
