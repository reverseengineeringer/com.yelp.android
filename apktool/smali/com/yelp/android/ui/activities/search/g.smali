.class Lcom/yelp/android/ui/activities/search/g;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x3ed

    .line 595
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/panels/businesssearch/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/panels/businesssearch/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 601
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 605
    :goto_1
    instance-of v3, v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v3, :cond_3

    .line 606
    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 607
    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 603
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->p()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    goto :goto_1

    .line 612
    :cond_3
    instance-of v3, v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    if-eqz v3, :cond_4

    .line 613
    check-cast v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    .line 616
    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->AdSearchListClick:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/SearchResultLocalAd;->getIriParams(Z)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 618
    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;->getBusinessSearchResult()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 624
    :cond_4
    const-string/jumbo v1, "spelling suggestion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 625
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;)V

    goto :goto_0

    .line 629
    :cond_5
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_6

    .line 630
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/g;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 634
    :cond_6
    instance-of v0, v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    if-nez v0, :cond_0

    goto :goto_0
.end method
