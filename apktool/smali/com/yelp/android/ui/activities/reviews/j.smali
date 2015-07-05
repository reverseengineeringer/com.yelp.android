.class Lcom/yelp/android/ui/activities/reviews/j;
.super Ljava/lang/Object;
.source "ActivityReviewComplete.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ez;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

.field private b:I


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/j;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ")V"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/j;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;Z)Z

    .line 491
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->isFirstReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/j;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/j;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/j;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->f(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->startActivity(Landroid/content/Intent;)V

    .line 496
    :cond_0
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 479
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/j;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 480
    const-string/jumbo v0, "ActivityReviewComplete"

    invoke-static {v0, p2}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 481
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/j;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;Z)Z

    .line 486
    :goto_0
    return-void

    .line 483
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/j;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/j;->b:I

    .line 484
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/j;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->e(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 473
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ez;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/j;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V

    return-void
.end method
