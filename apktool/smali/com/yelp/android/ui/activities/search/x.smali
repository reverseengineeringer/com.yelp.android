.class Lcom/yelp/android/ui/activities/search/x;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/w;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/w;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/x;->a:Lcom/yelp/android/ui/activities/search/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/x;->a:Lcom/yelp/android/ui/activities/search/w;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/x;->a:Lcom/yelp/android/ui/activities/search/w;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/x;->a:Lcom/yelp/android/ui/activities/search/w;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/map/YelpMap;->getViewableRegion()[D

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a([D)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/fv;)V

    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/x;->a:Lcom/yelp/android/ui/activities/search/w;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/x;->a:Lcom/yelp/android/ui/activities/search/w;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/w;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->removeView(Landroid/view/View;)V

    .line 513
    return-void
.end method
