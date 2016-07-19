.class public Lcom/yelp/android/ui/map/i;
.super Lcom/yelp/android/ui/map/b;
.source "SearchActionInfoWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yelp/android/serializable/LocalAd;",
        ">",
        "Lcom/yelp/android/ui/map/b;"
    }
.end annotation


# instance fields
.field private e:Lcom/google/android/gms/maps/model/c;

.field private f:Lcom/yelp/android/ui/panels/e;

.field private g:Lcom/yelp/android/ui/map/YelpMapWrapperLayout;

.field private h:Ljava/lang/String;

.field private final i:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/yelp/android/ui/map/i;->i:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;
    .locals 6

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/map/i;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/a;

    .line 37
    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->e:Lcom/google/android/gms/maps/model/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->e:Lcom/google/android/gms/maps/model/c;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/map/i;->e:Lcom/google/android/gms/maps/model/c;

    .line 39
    new-instance v1, Lcom/yelp/android/ui/panels/e;

    iget-object v2, p0, Lcom/yelp/android/ui/map/i;->i:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {v1, v2, p1, v0}, Lcom/yelp/android/ui/panels/e;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/google/android/gms/maps/model/c;Lcom/yelp/android/ui/panels/businesssearch/a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/map/i;->f:Lcom/yelp/android/ui/panels/e;

    .line 40
    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->f:Lcom/yelp/android/ui/panels/e;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/e;->a()V

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->f:Lcom/yelp/android/ui/panels/e;

    iget-object v2, p0, Lcom/yelp/android/ui/map/i;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/e;->setSearchRequestId(Ljava/lang/String;)V

    .line 45
    if-eqz v0, :cond_4

    .line 46
    const/4 v2, 0x0

    .line 47
    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->d:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 48
    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 49
    check-cast v1, Lcom/yelp/android/serializable/LocalAd;

    .line 50
    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    iget-object v2, p0, Lcom/yelp/android/ui/map/i;->f:Lcom/yelp/android/ui/panels/e;

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/yelp/android/ui/panels/e;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/LocalAd;)V

    .line 53
    const/4 v1, 0x1

    .line 59
    :goto_0
    if-nez v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->f:Lcom/yelp/android/ui/panels/e;

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/e;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->c:Lcom/yelp/android/ui/map/e$a;

    if-eqz v1, :cond_4

    .line 64
    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->c:Lcom/yelp/android/ui/map/e$a;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/map/e$a;->b(Ljava/lang/Object;)V

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/map/i;->g:Lcom/yelp/android/ui/map/YelpMapWrapperLayout;

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/map/i;->g:Lcom/yelp/android/ui/map/YelpMapWrapperLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/map/i;->f:Lcom/yelp/android/ui/panels/e;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->a(Lcom/google/android/gms/maps/model/c;Landroid/view/View;)V

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/map/i;->f:Lcom/yelp/android/ui/panels/e;

    return-object v0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/map/YelpMapWrapperLayout;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/yelp/android/ui/map/i;->g:Lcom/yelp/android/ui/map/YelpMapWrapperLayout;

    .line 31
    return-void
.end method
