.class Lcom/yelp/android/ui/activities/reviewpage/d;
.super Ljava/lang/Object;
.source "ActivityAbstractReviewPage.java"

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
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V
    .locals 1

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->a:Ljava/lang/ref/WeakReference;

    .line 689
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fd;)V
    .locals 1
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
    .line 693
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    .line 694
    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Lcom/yelp/android/appdata/webrequests/fd;)V

    .line 697
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
    .line 701
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    .line 702
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 705
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 682
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fd;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fd;)V

    return-void
.end method
