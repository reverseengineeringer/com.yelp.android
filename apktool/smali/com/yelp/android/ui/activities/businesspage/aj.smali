.class Lcom/yelp/android/ui/activities/businesspage/aj;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/aj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/aj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/aj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1752
    :cond_0
    const-string/jumbo v1, "no_review_button"

    .line 1753
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageNoReviewButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 1758
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/aj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 1759
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/aj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v0

    .line 1760
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/aj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V

    .line 1761
    return-void

    .line 1755
    :cond_1
    const-string/jumbo v1, "with_reviews_button"

    .line 1756
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageWithReviewsButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0
.end method
