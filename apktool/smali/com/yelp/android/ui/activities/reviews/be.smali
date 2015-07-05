.class Lcom/yelp/android/ui/activities/reviews/be;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "ReviewSuggestionsPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusinessesFromBusinessSearchResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 494
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Lcom/yelp/android/util/ErrorType;)Lcom/yelp/android/util/ErrorType;

    .line 496
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v0

    .line 497
    const-string/jumbo v1, "term"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getOffset()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    const-string/jumbo v1, "button"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/g;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->Search:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    .line 505
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 479
    const/4 v0, 0x0

    return v0
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
    .line 484
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/be;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 485
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 475
    check-cast p2, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/be;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    return-void
.end method
