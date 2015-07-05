.class Lcom/yelp/android/ui/activities/search/v;
.super Landroid/database/DataSetObserver;
.source "SearchBusinessesByMap.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    .prologue
    const v4, 0x7f070204

    .line 473
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOnCameraUpdate(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 475
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    .line 476
    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->disableLoading()V

    .line 480
    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSpellingSuggestion()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getAmbiguousLocations()Ljava/util/List;

    move-result-object v2

    .line 482
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 484
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 485
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 487
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v4, v0}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 491
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v2, v4, v1}, Lcom/yelp/android/ui/dialogs/DidYouMeanDialog;->a(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x419

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 495
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/v;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    goto :goto_0
.end method
