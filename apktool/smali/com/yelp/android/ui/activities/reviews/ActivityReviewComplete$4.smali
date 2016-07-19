.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;
.super Ljava/lang/Object;
.source "ActivityReviewComplete.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dy$a;",
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
    .line 544
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dy$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dy$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 561
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;Z)Z

    .line 562
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.review_share_types"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v5

    .line 567
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->g(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/services/ShareService$ShareObjectType;->REVIEW:Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->startActivity(Landroid/content/Intent;)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    sget-object v2, Lcom/yelp/android/services/ShareService$ShareObjectType;->REVIEW:Lcom/yelp/android/services/ShareService$ShareObjectType;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->h(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v4}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
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
    .line 550
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 551
    const-string/jumbo v0, "ActivityReviewComplete"

    invoke-static {v0, p2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 552
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;Z)Z

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->b:I

    .line 555
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->f(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 544
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dy$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dy$a;)V

    return-void
.end method
