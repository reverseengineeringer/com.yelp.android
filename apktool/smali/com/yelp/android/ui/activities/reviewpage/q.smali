.class Lcom/yelp/android/ui/activities/reviewpage/q;
.super Ljava/lang/Object;
.source "ActivityReviewsFilteredByHighlightPage.java"

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
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;)V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/q;->a:Ljava/lang/ref/WeakReference;

    .line 298
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ex;)V
    .locals 1
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
    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->b(Lcom/yelp/android/appdata/webrequests/ex;)V

    .line 307
    :cond_0
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
    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 315
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 291
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ex;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/q;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ex;)V

    return-void
.end method
