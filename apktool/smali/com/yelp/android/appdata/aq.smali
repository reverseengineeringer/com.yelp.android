.class Lcom/yelp/android/appdata/aq;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "SearchSession.java"


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
.field final synthetic a:Lcom/yelp/android/appdata/ap;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/ap;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/j;->a(Landroid/location/Location;)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v0}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v0}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/j;->a(Landroid/location/Location;)V

    .line 147
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 7
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v0, p2}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 90
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v3

    .line 91
    const-string/jumbo v0, "1jqz5y"

    invoke-static {v0}, Lcom/adjust/sdk/e;->a(Ljava/lang/String;)V

    .line 92
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string/jumbo v5, "term"

    move-object v0, p1

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchTerms()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v0}, Lcom/yelp/android/appdata/ap;->c(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/analytics/iris/IriSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v0}, Lcom/yelp/android/appdata/ap;->c(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/analytics/iris/IriSource;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/analytics/iris/IriSource;->addParameter(Ljava/util/Map;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v0}, Lcom/yelp/android/appdata/ap;->d(Lcom/yelp/android/appdata/ap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    const-string/jumbo v0, "button"

    iget-object v5, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v5}, Lcom/yelp/android/appdata/ap;->d(Lcom/yelp/android/appdata/ap;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    :cond_1
    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getPromotedFilter()Lcom/yelp/android/serializable/PromotedFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    const-string/jumbo v0, "promoted_filter_alias"

    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getPromotedFilter()Lcom/yelp/android/serializable/PromotedFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/PromotedFilter;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v0, "toggle_on"

    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getPromotedFilter()Lcom/yelp/android/serializable/PromotedFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/PromotedFilter;->isOn()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_2
    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 116
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getSearchActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 123
    :goto_0
    const-string/jumbo v5, "search_actions_shown"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Lcom/yelp/android/analytics/g;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->Search:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v6, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v6}, Lcom/yelp/android/appdata/ap;->e(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6, v4}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    invoke-virtual {v3, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    iget-object v3, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v3}, Lcom/yelp/android/appdata/ap;->e(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getOffset()I

    move-result v3

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;I)I

    .line 129
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    iget-object v3, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v3}, Lcom/yelp/android/appdata/ap;->e(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v4}, Lcom/yelp/android/appdata/ap;->f(Lcom/yelp/android/appdata/ap;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v4}, Lcom/yelp/android/appdata/ap;->e(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getTotal()I

    move-result v4

    if-lt v3, v4, :cond_5

    :goto_1
    invoke-static {v0, v1}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;Z)Z

    .line 131
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    iget-object v1, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v1}, Lcom/yelp/android/appdata/ap;->b(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->copy()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 132
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->notifyChanged()V

    .line 133
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->Search:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-static {v0}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 134
    check-cast p1, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_4

    .line 136
    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->LastSearchCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 139
    :cond_4
    return-void

    :cond_5
    move v1, v2

    .line 129
    goto :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "No Providers enabled"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v0}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/j;->a()Z

    move-result v0

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 81
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v0}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/j;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->notifyInvalidated()V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    iget-object v1, p0, Lcom/yelp/android/appdata/aq;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {v1}, Lcom/yelp/android/appdata/ap;->b(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->copy()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/ap;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 84
    const-string/jumbo v0, "Error occured with search request"

    invoke-static {p0, v0, p2}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p2, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/aq;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    return-void
.end method
