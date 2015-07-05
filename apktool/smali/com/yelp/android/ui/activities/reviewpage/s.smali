.class Lcom/yelp/android/ui/activities/reviewpage/s;
.super Ljava/lang/Object;
.source "ActivitySearchedReviewsPager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/fd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/s;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/s;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/fd;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a(Ljava/util/List;)V

    .line 101
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
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/s;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 95
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fd;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/s;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fd;)V

    return-void
.end method
