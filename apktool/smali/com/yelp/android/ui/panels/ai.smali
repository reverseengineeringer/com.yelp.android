.class Lcom/yelp/android/ui/panels/ai;
.super Lcom/yelp/android/ui/util/dd;
.source "YourNextReviewAwaitsFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/ah;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/ah;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ai;->a:Lcom/yelp/android/ui/panels/ah;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/dd;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ai;->a:Lcom/yelp/android/ui/panels/ah;

    iget-object v0, v0, Lcom/yelp/android/ui/panels/ah;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->c(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Lcom/yelp/android/ui/panels/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ai;->a:Lcom/yelp/android/ui/panels/ah;

    iget-object v0, v0, Lcom/yelp/android/ui/panels/ah;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->c(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Lcom/yelp/android/ui/panels/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/aj;->f()V

    .line 183
    :cond_0
    return-void
.end method
