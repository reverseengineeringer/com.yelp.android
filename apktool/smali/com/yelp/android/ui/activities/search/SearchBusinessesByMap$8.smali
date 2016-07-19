.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;
.super Landroid/database/DataSetObserver;
.source "SearchBusinessesByMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 633
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 634
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->e(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/c$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOnCameraUpdate(Lcom/google/android/gms/maps/c$c;)V

    .line 635
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 636
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    .line 637
    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->disableLoading()V

    .line 641
    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->d()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->a()Ljava/util/List;

    move-result-object v2

    .line 643
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 644
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    .line 655
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/o;)V

    goto :goto_0

    .line 645
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 646
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    const v3, 0x7f070251

    invoke-static {v2, v3, v1}, Lcom/yelp/android/ui/dialogs/DidYouMeanDialog;->a(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x420

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 653
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    goto :goto_1
.end method
