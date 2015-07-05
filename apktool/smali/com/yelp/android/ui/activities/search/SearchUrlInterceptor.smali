.class public Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "SearchUrlInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/o;

    invoke-direct {v2, v0}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 61
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fv;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/fv;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "hot_new_businesses"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/fv;

    .line 67
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v2, 0x7f0702ea

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "yelp:external_request"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->finish()V

    .line 100
    return-void

    .line 69
    :cond_1
    const-string/jumbo v2, "find_desc"

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    .line 70
    const-string/jumbo v2, "find_loc"

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    .line 71
    const-class v2, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 72
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "check_in_offers"

    invoke-static {v4, v0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    sget-object v3, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;->CHECK_IN_OFFERS:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/util/EnumSet;)Lcom/yelp/android/appdata/webrequests/fv;

    .line 76
    const-string/jumbo v2, "cflt"

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 78
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/m;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v2}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/fv;

    .line 81
    :cond_3
    const-string/jumbo v2, "attribs_filter"

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/search/SearchUrlInterceptor;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    array-length v0, v2

    if-lez v0, :cond_0

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    array-length v4, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v2, v0

    .line 87
    new-instance v6, Lcom/yelp/android/serializable/AttributeFilter;

    invoke-direct {v6, v5}, Lcom/yelp/android/serializable/AttributeFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_4
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    new-instance v2, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v2, v3}, Lcom/yelp/android/serializable/AttributeFilters;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v2}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/AttributeFilters;)V

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;

    goto/16 :goto_0
.end method
