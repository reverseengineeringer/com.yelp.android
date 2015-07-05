.class Lcom/yelp/android/ui/activities/reviews/an;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/am;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/am;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/an;->a:Lcom/yelp/android/ui/activities/reviews/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 627
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/an;->a:Lcom/yelp/android/ui/activities/reviews/am;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/am;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;->SMALL:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarSize(Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;)V

    .line 628
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 630
    sget v1, Lcom/yelp/android/ui/util/cw;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 631
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/an;->a:Lcom/yelp/android/ui/activities/reviews/am;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/am;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 632
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 633
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/an;->a:Lcom/yelp/android/ui/activities/reviews/am;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/am;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 634
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/an;->a:Lcom/yelp/android/ui/activities/reviews/am;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/am;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Landroid/graphics/Rect;)I

    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/an;->a:Lcom/yelp/android/ui/activities/reviews/am;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/am;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/an;->a:Lcom/yelp/android/ui/activities/reviews/am;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/am;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I

    .line 639
    return-void
.end method
