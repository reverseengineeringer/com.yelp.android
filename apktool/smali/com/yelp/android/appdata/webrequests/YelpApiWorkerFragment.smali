.class public Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;
.super Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;
.source "YelpApiWorkerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/k",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cm;

    .line 29
    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/cm;->a(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/k",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->b(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a:Ljava/util/Map;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/cm;

    invoke-direct {v1, p2}, Lcom/yelp/android/appdata/webrequests/cm;-><init>(Lcom/yelp/android/appdata/webrequests/k;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    return-void
.end method
