.class Lcom/yelp/android/ui/activities/search/w;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

.field private b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Landroid/view/View;
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013c

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->b:Landroid/view/View;

    .line 507
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->b:Landroid/view/View;

    const v1, 0x7f0c0427

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/x;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/x;-><init>(Lcom/yelp/android/ui/activities/search/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->b:Landroid/view/View;

    return-object v0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->e(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->e(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    const v2, 0x7f0701e7

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/w;->a()Landroid/view/View;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 527
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->addView(Landroid/view/View;)V

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/w;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/map/YelpMap;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 531
    return-void
.end method
