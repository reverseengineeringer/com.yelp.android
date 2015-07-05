.class Lcom/yelp/android/ui/activities/reviews/am;
.super Lcom/yelp/android/ui/util/dd;
.source "ReviewComposeFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/am;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 623
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/an;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/an;-><init>(Lcom/yelp/android/ui/activities/reviews/am;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/am;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 619
    return-void
.end method
