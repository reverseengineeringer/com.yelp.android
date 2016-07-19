.class Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$2;
.super Lcom/yelp/android/ui/util/av$a;
.source "YourNextReviewAwaitsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->a(Lcom/yelp/android/serializable/ReviewSuggestion;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/g;

.field final synthetic b:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;Lcom/yelp/android/ui/panels/g;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$2;->b:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$2;->a:Lcom/yelp/android/ui/panels/g;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$2;->b:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->b()V

    .line 172
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/av$a;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$2;->a:Lcom/yelp/android/ui/panels/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/g;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    return-void
.end method
