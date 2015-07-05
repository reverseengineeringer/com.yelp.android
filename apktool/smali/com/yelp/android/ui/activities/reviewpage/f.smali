.class Lcom/yelp/android/ui/activities/reviewpage/f;
.super Ljava/lang/Object;
.source "ActivityAbstractReviewPager.java"

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
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/f;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V
    .locals 2
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
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/f;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a(Ljava/util/List;)V

    .line 321
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
    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/f;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 316
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 312
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ez;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/f;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ez;)V

    return-void
.end method
