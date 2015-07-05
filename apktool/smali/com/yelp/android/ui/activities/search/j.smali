.class Lcom/yelp/android/ui/activities/search/j;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/j;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1309
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchAddBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 1311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/j;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v2

    .line 1312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/j;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/j;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getLocation()Landroid/location/Address;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 1315
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1316
    if-eqz v2, :cond_0

    .line 1317
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/serializable/Category;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1320
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1321
    invoke-static {v2, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1322
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1323
    return-void

    .line 1312
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
