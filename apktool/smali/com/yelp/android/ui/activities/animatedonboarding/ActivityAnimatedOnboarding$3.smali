.class Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$3;
.super Ljava/lang/Object;
.source "ActivityAnimatedOnboarding.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$3;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$3;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$3;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$3;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 275
    :cond_0
    return-void
.end method
