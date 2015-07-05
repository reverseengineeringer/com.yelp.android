.class Lcom/yelp/android/ui/panels/ag;
.super Lcom/yelp/android/ui/util/dd;
.source "YourNextReviewAwaitsFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/ak;

.field final synthetic b:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;Lcom/yelp/android/ui/panels/ak;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ag;->b:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/ag;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ag;->b:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c()V

    .line 143
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/dd;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ag;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ak;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    return-void
.end method
