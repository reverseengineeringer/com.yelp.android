.class public Lcom/yelp/android/ui/activities/search/d;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/d$a;
    }
.end annotation


# direct methods
.method public static a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->U()Lcom/yelp/android/serializable/CachedSearch;

    move-result-object v2

    .line 288
    if-nez v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-object v0

    .line 292
    :cond_1
    new-instance v1, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    .line 294
    invoke-virtual {v2}, Lcom/yelp/android/serializable/CachedSearch;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    invoke-virtual {v2}, Lcom/yelp/android/serializable/CachedSearch;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 302
    :goto_1
    invoke-virtual {v2}, Lcom/yelp/android/serializable/CachedSearch;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yelp/android/serializable/CachedSearch;->g()Lcom/yelp/android/serializable/Filter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 304
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    .line 305
    invoke-virtual {v2}, Lcom/yelp/android/serializable/CachedSearch;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(I)V

    .line 307
    invoke-virtual {v2}, Lcom/yelp/android/serializable/CachedSearch;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    invoke-virtual {v2}, Lcom/yelp/android/serializable/CachedSearch;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->f(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-object v0, v1

    .line 313
    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v2}, Lcom/yelp/android/serializable/CachedSearch;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 297
    invoke-virtual {v2}, Lcom/yelp/android/serializable/CachedSearch;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    goto :goto_1

    .line 299
    :cond_3
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    const v4, 0x7f0701a5

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    goto :goto_1
.end method

.method public static a(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;)",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;"
        }
    .end annotation

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    if-eqz p0, :cond_1

    .line 322
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 323
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;",
            "Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;",
            ")",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 335
    if-nez p0, :cond_0

    move-object v0, v1

    .line 343
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 339
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 343
    goto :goto_0
.end method

.method public static a(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Distance;",
            "Lcom/yelp/android/serializable/Sort;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    .line 372
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Distance;->b()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 373
    const v2, 0x7f07065f

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Distance;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_0
    if-eqz p1, :cond_1

    sget-object v2, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    if-eq p1, v2, :cond_1

    .line 377
    const v2, 0x7f0702cb

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/yelp/android/serializable/Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_1
    invoke-static {p2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    const-string/jumbo v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchContext:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/yelp/android/ui/activities/search/d$a;",
            ">(TSearchContext;)V"
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/app/Activity;Z)V

    .line 238
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchContext:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/yelp/android/ui/activities/search/d$a;",
            ">(TSearchContext;Z)V"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    check-cast v0, Lcom/yelp/android/ui/activities/search/d$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/d$a;->p()Lcom/yelp/android/appdata/o;

    move-result-object v0

    .line 243
    if-nez v0, :cond_0

    .line 244
    const-string/jumbo v0, "searchSession in openSearchOverlay"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchBar:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 248
    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->l()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    .line 251
    check-cast v0, Lcom/yelp/android/ui/activities/search/e;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/e;->l()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->SEARCH:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    move-object v0, p0

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Z)Landroid/content/Intent;

    move-result-object v1

    move-object v0, p0

    .line 261
    check-cast v0, Lcom/yelp/android/ui/activities/search/e;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/e;->o()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 99
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 100
    const-string/jumbo v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string/jumbo v2, "user_query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v1, "suggest"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/g;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->SearchGlobal:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 114
    return-void

    .line 108
    :cond_0
    const-string/jumbo v3, "text"

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v2, "suggest"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchContext:",
            "Landroid/content/Context;",
            ":",
            "Lcom/yelp/android/ui/activities/search/d$a;",
            ">(TSearchContext;",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    const v0, 0x7f0f0574

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 207
    instance-of v1, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;

    if-eqz v1, :cond_0

    .line 208
    const v1, 0x7f070377

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 209
    const v1, 0x7f020042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 211
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/o;)V
    .locals 5

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 83
    const-string/jumbo v0, "null response in emitSpellingSuggestionAnalytic"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->d()Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 90
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v1, "suggest"

    invoke-virtual {v3, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/g;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->SearchDymTerm:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0, v3}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/o;)V
    .locals 5

    .prologue
    .line 64
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 65
    const-string/jumbo v1, "text"

    invoke-virtual {p2}, Lcom/yelp/android/appdata/o;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v1, "suggest"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p2}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v2

    .line 69
    new-instance v3, Lcom/yelp/android/analytics/g;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->SearchDymAddress:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v3, v4, v1, v0}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContextSearchable:",
            "Landroid/content/Context;",
            ":",
            "Lcom/yelp/android/ui/activities/search/e;",
            ">(",
            "Landroid/content/Intent;",
            "TContextSearchable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchContext:",
            "Landroid/support/v7/app/ActionBarActivity;",
            ":",
            "Lcom/yelp/android/ui/activities/search/d$a;",
            ">(TSearchContext;",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    .prologue
    const v3, 0x7f0f05c4

    .line 153
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100023

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 156
    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    .line 160
    if-nez v1, :cond_2

    .line 161
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030202

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 162
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    .line 163
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->h(Landroid/view/View;F)V

    move-object v1, v0

    .line 167
    :cond_2
    if-eqz v1, :cond_0

    move-object v0, p0

    .line 168
    check-cast v0, Lcom/yelp/android/ui/activities/search/d$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/d$a;->p()Lcom/yelp/android/appdata/o;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->setTerms(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v2

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->I()[D

    move-result-object v2

    if-eqz v2, :cond_4

    .line 173
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f070232

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->setLocation(Ljava/lang/CharSequence;)V

    .line 179
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getTextField()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/search/d$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/search/d$1;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getFilterButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/d$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/d$2;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->setLocation(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v0, Lcom/yelp/android/serializable/CachedSearch;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->H()Lcom/yelp/android/serializable/Filter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->C()I

    move-result v6

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/serializable/CachedSearch;-><init>(Lcom/yelp/android/serializable/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 279
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/serializable/CachedSearch;J)V

    goto :goto_0
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/aw;Lcom/yelp/android/serializable/ContinueLastOrderInfo;Lcom/yelp/android/appdata/o;)V
    .locals 4

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/aw;->b()Ljava/lang/String;

    move-result-object v1

    .line 395
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p2}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 401
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/ContinueLastOrderInfo;)V

    .line 409
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContextSearchable:",
            "Landroid/content/Context;",
            ":",
            "Lcom/yelp/android/ui/activities/search/e;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TContextSearchable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p2

    check-cast v0, Lcom/yelp/android/ui/activities/search/e;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/e;->n()[D

    move-result-object v1

    move-object v0, p2

    .line 132
    check-cast v0, Lcom/yelp/android/ui/activities/search/e;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/e;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 p0, 0x0

    .line 135
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/yelp/android/database/g;->b()Lcom/yelp/android/database/d;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/yelp/android/database/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lcom/yelp/android/database/g;->c()Lcom/yelp/android/database/c;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/yelp/android/database/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/e;

    move-result-object v0

    .line 140
    new-instance v2, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v2}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    invoke-virtual {v2, p0}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/serializable/Filter;

    invoke-direct {v3}, Lcom/yelp/android/serializable/Filter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/yelp/android/database/e;->b(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eo;->a([D)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    .line 148
    check-cast p2, Lcom/yelp/android/ui/activities/search/e;

    invoke-interface {p2, v0, p3}, Lcom/yelp/android/ui/activities/search/e;->a(Lcom/yelp/android/appdata/webrequests/eo;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchContext:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/yelp/android/ui/activities/search/d$a;",
            ">(TSearchContext;",
            "Landroid/view/MenuItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    .line 217
    :pswitch_0
    check-cast p0, Lcom/yelp/android/ui/activities/search/d$a;

    invoke-interface {p0}, Lcom/yelp/android/ui/activities/search/d$a;->i()V

    .line 225
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x7f0f0574
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/GenericSearchFilter;",
            ">;",
            "Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;",
            ")",
            "Lcom/yelp/android/serializable/GenericSearchFilter;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    .line 349
    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->a()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 353
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
