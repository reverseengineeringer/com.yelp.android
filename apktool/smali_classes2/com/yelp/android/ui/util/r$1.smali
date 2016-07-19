.class Lcom/yelp/android/ui/util/r$1;
.super Ljava/lang/Object;
.source "HideToolbarAnimationListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/r;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/r;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/r;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yelp/android/ui/util/r$1;->a:Lcom/yelp/android/ui/util/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/yelp/android/ui/util/r$1;->a:Lcom/yelp/android/ui/util/r;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/r;->a(F)V

    .line 130
    return-void
.end method
