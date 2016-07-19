.class Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$4;
.super Ljava/lang/Object;
.source "ActivityEliteWelcomeSplash.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->e()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$4;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$4;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->c(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$4;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->d(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 268
    :cond_0
    return-void
.end method
