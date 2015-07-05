.class Lcom/yelp/android/ui/activities/reviews/ax;
.super Lcom/yelp/android/ui/util/dd;
.source "ReviewOverviewFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ax;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ax;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->n()Ljava/lang/String;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ax;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    sget v2, Lcom/yelp/android/ui/util/cw;->c:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 508
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ax;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/ao;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ax;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->a()V

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ax;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0, v4}, Lcom/yelp/android/ui/activities/reviews/ao;->c(Z)V

    .line 515
    return-void

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ax;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1, v0, v4}, Lcom/yelp/android/ui/activities/reviews/ao;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ax;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setVisibility(I)V

    .line 500
    return-void
.end method
