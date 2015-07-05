.class public Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;
.super Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;
.source "YelpApiWorkerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/h",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cz;

    .line 41
    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/cz;->a(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/h",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;)V"
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Z)V

    .line 17
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/h",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;Z)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->b(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/YelpApiWorkerFragment;->a:Ljava/util/Map;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/cz;

    invoke-direct {v1, p2, p3}, Lcom/yelp/android/appdata/webrequests/cz;-><init>(Lcom/yelp/android/appdata/webrequests/h;Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-void
.end method
