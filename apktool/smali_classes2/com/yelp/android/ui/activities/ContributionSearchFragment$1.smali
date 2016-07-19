.class Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "ContributionSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ContributionSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

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
    .line 294
    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->l()V

    .line 298
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/Collection;)V

    .line 299
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 300
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c(I)V

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BusinessContributionType;->isMedia()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddPhotoPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v1}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 311
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->g()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 312
    const-string/jumbo v1, "button"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_1
    const-string/jumbo v1, "term"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->d(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/g;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->Search:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getCount()I

    move-result v0

    invoke-interface {p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->f()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b(Z)V

    .line 328
    :cond_3
    return-void

    .line 305
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v1, v2, :cond_0

    .line 306
    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->CheckInPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v1}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    const v4, 0x7f070231

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b(Z)V

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/activities/support/b$e;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/b$e;ZI)V

    move v0, v1

    .line 344
    :cond_1
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
    .line 354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b(Z)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 290
    check-cast p2, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    return-void
.end method
