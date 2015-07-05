.class Lcom/yelp/android/ui/activities/businesspage/as;
.super Landroid/content/BroadcastReceiver;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2239
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    .line 2240
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getBusinessId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2277
    :goto_0
    return-void

    .line 2245
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/YelpBusiness;->setReviewState(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 2246
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getRating()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/YelpBusiness;->setUserReviewRating(I)V

    .line 2247
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 2250
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/panels/businesspage/b;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2251
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->n(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Landroid/view/View;ZLjava/lang/String;)V

    .line 2256
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->isConvertedToTip()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2258
    :cond_1
    :goto_1
    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2260
    if-eqz v1, :cond_3

    .line 2261
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2262
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2264
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/aw;->clear()V

    .line 2265
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 2266
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 2268
    :cond_3
    if-eqz v0, :cond_5

    .line 2269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2272
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->clear()V

    .line 2273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 2274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 2276
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/as;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 2256
    goto :goto_1
.end method
