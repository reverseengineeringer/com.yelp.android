.class public Lcom/yelp/android/ui/activities/search/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# direct methods
.method public static a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/yelp/android/database/q;->d()Lcom/yelp/android/database/savedsearch/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/savedsearch/a;->a()Lcom/yelp/android/database/savedsearch/i;

    move-result-object v2

    .line 318
    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 322
    :cond_1
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fv;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/fv;-><init>()V

    .line 324
    invoke-virtual {v2}, Lcom/yelp/android/database/savedsearch/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 325
    invoke-virtual {v2}, Lcom/yelp/android/database/savedsearch/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    .line 332
    :goto_1
    invoke-virtual {v2}, Lcom/yelp/android/database/savedsearch/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yelp/android/database/savedsearch/i;->d()Lcom/yelp/android/serializable/Filter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;

    .line 335
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    .line 336
    invoke-virtual {v2}, Lcom/yelp/android/database/savedsearch/i;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setOffset(I)V

    .line 338
    invoke-virtual {v2}, Lcom/yelp/android/database/savedsearch/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 339
    invoke-virtual {v2}, Lcom/yelp/android/database/savedsearch/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCacheDescriptorOverride(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-object v0, v1

    .line 344
    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {v2}, Lcom/yelp/android/database/savedsearch/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 327
    invoke-virtual {v2}, Lcom/yelp/android/database/savedsearch/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    goto :goto_1

    .line 329
    :cond_3
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    const v4, 0x7f070123

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchContext:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/yelp/android/ui/activities/search/ax;",
            ">(TSearchContext;)V"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    check-cast v0, Lcom/yelp/android/ui/activities/search/ax;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/ax;->o()Lcom/yelp/android/appdata/ap;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    .line 261
    const-string/jumbo v0, "searchSession in openSearchOverlay"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchBar:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 265
    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/ap;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->m()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    .line 268
    check-cast v0, Lcom/yelp/android/ui/activities/search/ay;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/ay;->k()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;

    move-result-object v1

    move-object v0, p0

    .line 270
    check-cast v0, Lcom/yelp/android/ui/activities/search/ay;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/ay;->n()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 126
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 127
    const-string/jumbo v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "user_query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v1, "suggest"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/g;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->SearchGlobal:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 140
    return-void

    .line 135
    :cond_0
    const-string/jumbo v3, "text"

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v2, "suggest"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/location/Address;Lcom/yelp/android/appdata/ap;)V
    .locals 5

    .prologue
    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 93
    const-string/jumbo v1, "text"

    invoke-virtual {p2}, Lcom/yelp/android/appdata/ap;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v1, "suggest"

    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p2}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v2

    .line 97
    new-instance v3, Lcom/yelp/android/analytics/g;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->SearchDymAddress:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v3, v4, v1, v0}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchContext:",
            "Landroid/content/Context;",
            ":",
            "Lcom/yelp/android/ui/activities/search/ax;",
            ">(TSearchContext;",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    const v0, 0x7f0c046d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 226
    instance-of v1, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;

    if-eqz v1, :cond_0

    .line 227
    const v1, 0x7f07033d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 228
    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 230
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/ap;)V
    .locals 5

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    .line 103
    if-nez v0, :cond_0

    .line 111
    const-string/jumbo v0, "null response in emitSpellingSuggestionAnalytic"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/ap;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSpellingSuggestion()Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 118
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v1, "suggest"

    invoke-virtual {v3, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/g;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->SearchDymTerm:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0, v3}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContextSearchable:",
            "Landroid/content/Context;",
            ":",
            "Lcom/yelp/android/ui/activities/search/ay;",
            ">(",
            "Landroid/content/Intent;",
            "TContextSearchable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchContext:",
            "Landroid/support/v7/app/ActionBarActivity;",
            ":",
            "Lcom/yelp/android/ui/activities/search/ax;",
            ">(TSearchContext;",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    .prologue
    const v3, 0x7f0c04be

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 187
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 188
    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    .line 192
    if-nez v1, :cond_2

    .line 193
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030188

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 194
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    .line 195
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->f(Landroid/view/View;F)V

    move-object v1, v0

    .line 198
    :cond_2
    if-eqz v1, :cond_0

    move-object v0, p0

    .line 199
    check-cast v0, Lcom/yelp/android/ui/activities/search/ax;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/ax;->o()Lcom/yelp/android/appdata/ap;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_3

    .line 201
    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/ap;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->setTerms(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->setLocation(Ljava/lang/CharSequence;)V

    .line 204
    :cond_3
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getTextField()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/search/au;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/search/au;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getFilterButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/av;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/av;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContextSearchable:",
            "Landroid/content/Context;",
            ":",
            "Lcom/yelp/android/ui/activities/search/ay;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TContextSearchable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p2

    check-cast v0, Lcom/yelp/android/ui/activities/search/ay;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/ay;->l()Landroid/content/Context;

    move-result-object v1

    move-object v0, p2

    .line 153
    check-cast v0, Lcom/yelp/android/ui/activities/search/ay;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/ay;->m()[D

    move-result-object v2

    move-object v0, p2

    .line 154
    check-cast v0, Lcom/yelp/android/ui/activities/search/ay;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/ay;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 p0, 0x0

    .line 157
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/yelp/android/database/q;->c()Lcom/yelp/android/database/l;

    move-result-object v3

    invoke-virtual {v3, p2, p1}, Lcom/yelp/android/database/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/yelp/android/database/q;->e()Lcom/yelp/android/database/j;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/yelp/android/database/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/m;

    move-result-object v3

    .line 162
    const v0, 0x7f070131

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    const-class v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 167
    sget-object v5, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;->CHECK_IN_OFFERS:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 172
    :cond_1
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fv;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/fv;-><init>()V

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/util/EnumSet;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/serializable/Filter;

    new-instance v6, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v6, v4}, Lcom/yelp/android/serializable/AttributeFilters;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v6}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/AttributeFilters;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v3, p1}, Lcom/yelp/android/database/m;->b(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a([D)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    .line 180
    check-cast p2, Lcom/yelp/android/ui/activities/search/ay;

    invoke-interface {p2, v0, p3}, Lcom/yelp/android/ui/activities/search/ay;->a(Lcom/yelp/android/appdata/webrequests/fv;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/serializable/Filter;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 302
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v0, Lcom/yelp/android/database/savedsearch/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/database/savedsearch/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/Filter;Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lcom/yelp/android/database/q;->d()Lcom/yelp/android/database/savedsearch/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/savedsearch/a;->a(Lcom/yelp/android/database/savedsearch/i;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchContext:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/yelp/android/ui/activities/search/ax;",
            ">(TSearchContext;",
            "Landroid/view/MenuItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 245
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 236
    :sswitch_0
    check-cast p0, Lcom/yelp/android/ui/activities/search/ax;

    invoke-interface {p0}, Lcom/yelp/android/ui/activities/search/ax;->g()V

    .line 247
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    :sswitch_1
    check-cast p0, Lcom/yelp/android/ui/activities/search/ax;

    invoke-interface {p0}, Lcom/yelp/android/ui/activities/search/ax;->j()V

    goto :goto_1

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x7f0c035d -> :sswitch_1
        0x7f0c046d -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SearchActivityContext:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/yelp/android/ui/activities/search/ax;",
            ">(TSearchActivityContext;)V"
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    check-cast v0, Lcom/yelp/android/ui/activities/search/ax;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/ax;->o()Lcom/yelp/android/appdata/ap;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Lcom/yelp/android/database/savedsearch/k;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/ap;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->k()Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/database/savedsearch/k;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/Filter;)V

    .line 280
    new-instance v0, Lcom/yelp/android/ui/activities/search/aw;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/aw;-><init>(Landroid/app/Activity;)V

    .line 294
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/yelp/android/database/q;->b()Lcom/yelp/android/database/savedsearch/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/database/savedsearch/c;->a(Lcom/yelp/android/database/savedsearch/k;Lcom/yelp/android/database/w;)V

    .line 296
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchSave:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 298
    :cond_0
    return-void
.end method
