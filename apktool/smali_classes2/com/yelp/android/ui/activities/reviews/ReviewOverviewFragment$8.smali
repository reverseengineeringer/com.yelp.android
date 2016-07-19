.class Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$8;
.super Lcom/yelp/android/ui/util/av$a;
.source "ReviewOverviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->c()V

    .line 440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$8;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->f(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->setVisibility(I)V

    .line 442
    return-void
.end method
