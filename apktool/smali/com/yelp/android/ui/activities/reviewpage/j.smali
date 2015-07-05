.class Lcom/yelp/android/ui/activities/reviewpage/j;
.super Ljava/lang/Object;
.source "ActivityReviewPager.java"

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
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/j;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V
    .locals 5
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
    .line 493
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 502
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/yelp/android/appdata/webrequests/ez;->c:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/j;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Ljava/util/List;)V

    .line 505
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 488
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/j;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 489
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 484
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ez;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/j;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V

    return-void
.end method
