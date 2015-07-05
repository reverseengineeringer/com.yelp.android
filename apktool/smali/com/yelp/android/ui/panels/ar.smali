.class Lcom/yelp/android/ui/panels/ar;
.super Lcom/yelp/android/ui/util/dd;
.source "YourNextReviewAwaitsItem.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/ak;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/ak;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ar;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/dd;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ar;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->e(Lcom/yelp/android/ui/panels/ak;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ar;->a:Lcom/yelp/android/ui/panels/ak;

    new-instance v1, Lcom/yelp/android/ui/panels/as;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/as;-><init>(Lcom/yelp/android/ui/panels/ar;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/panels/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ar;->a:Lcom/yelp/android/ui/panels/ak;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/ak;->a(Lcom/yelp/android/ui/panels/ak;Z)Z

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ar;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->f(Lcom/yelp/android/ui/panels/ak;)V

    .line 296
    return-void
.end method
