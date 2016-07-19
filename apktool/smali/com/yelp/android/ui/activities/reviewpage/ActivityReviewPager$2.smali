.class Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$2;
.super Ljava/lang/Object;
.source "ActivityReviewPager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;
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
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dy$a;)V
    .locals 5
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
    .line 576
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 585
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->I()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->c:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Ljava/util/Locale;)V

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Ljava/util/List;)V

    .line 589
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
    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 572
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 567
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dy$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dy$a;)V

    return-void
.end method
