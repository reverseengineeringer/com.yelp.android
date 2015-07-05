.class Lcom/yelp/android/ui/activities/reviews/aw;
.super Lcom/yelp/android/ui/util/dd;
.source "ReviewOverviewFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/aw;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aw;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->d()V

    .line 406
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aw;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aw;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setVisibility(I)V

    .line 408
    return-void
.end method
