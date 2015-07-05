.class Lcom/yelp/android/ui/map/x;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic b:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/yelp/android/ui/map/x;->b:Lcom/yelp/android/ui/map/YelpMap;

    iput-object p2, p0, Lcom/yelp/android/ui/map/x;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/map/x;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/map/YelpMap;->b(Lcom/yelp/android/ui/map/YelpMap;Z)V

    .line 373
    iget-object v0, p0, Lcom/yelp/android/ui/map/x;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/x;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Lcom/yelp/android/ui/map/ab;

    iget-object v1, p0, Lcom/yelp/android/ui/map/x;->b:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v2, p0, Lcom/yelp/android/ui/map/x;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v2}, Lcom/yelp/android/ui/map/YelpMap;->d(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/map/ab;-><init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;I)V

    .line 376
    new-instance v1, Lcom/yelp/android/ui/map/z;

    iget-object v2, p0, Lcom/yelp/android/ui/map/x;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/map/x;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    sget v4, Lcom/yelp/android/appdata/ao;->a:I

    invoke-static {v3, v4}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/ui/map/z;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/map/x;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 381
    :cond_0
    return-void
.end method
