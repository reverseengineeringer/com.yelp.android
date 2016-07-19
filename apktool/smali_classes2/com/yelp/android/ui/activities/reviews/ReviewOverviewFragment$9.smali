.class Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;
.super Lcom/yelp/android/ui/util/av$a;
.source "ReviewOverviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g()V
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
    .line 544
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 553
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->n()Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    sget v2, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 557
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/reviews/c;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->a()V

    .line 563
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0, v4}, Lcom/yelp/android/ui/activities/reviews/c;->c(Z)V

    .line 564
    return-void

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1, v0, v4}, Lcom/yelp/android/ui/activities/reviews/c;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$9;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setVisibility(I)V

    .line 549
    return-void
.end method
