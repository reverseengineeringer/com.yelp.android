.class Lcom/yelp/android/ui/activities/reviewpage/k;
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
        "Lcom/yelp/android/appdata/webrequests/ex;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/k;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ex;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ex;",
            ")V"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/k;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ex;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Ljava/util/List;)V

    .line 520
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
    .line 513
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/k;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 514
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 509
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ex;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/k;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ex;)V

    return-void
.end method
