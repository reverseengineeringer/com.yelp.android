.class Lcom/yelp/android/ui/activities/search/u;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "SearchBusinessesByMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/u;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 466
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/u;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/u;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/activities/support/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 458
    return v3
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    .line 451
    const-string/jumbo v0, "ActivityBusinessListResultsMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error searching for businesses:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/u;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    check-cast p1, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 453
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 447
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/u;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
