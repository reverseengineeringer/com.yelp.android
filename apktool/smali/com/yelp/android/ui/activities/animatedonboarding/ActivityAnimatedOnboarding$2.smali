.class Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;
.super Ljava/lang/Object;
.source "ActivityAnimatedOnboarding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->onResume()V
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
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    const/16 v1, 0x96

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(II)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->e(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->d(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_1
    return-void
.end method
