.class Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11$1;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 660
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->SMALL:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarStyle(Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;)V

    .line 661
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 663
    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 665
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->n(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 667
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 668
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 669
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Landroid/graphics/Rect;)V

    .line 673
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11$1;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$11;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I

    .line 675
    return-void
.end method
