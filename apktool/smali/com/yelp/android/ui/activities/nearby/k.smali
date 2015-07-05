.class Lcom/yelp/android/ui/activities/nearby/k;
.super Ljava/lang/Object;
.source "ComboMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic b:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/k;->b:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/nearby/k;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/k;->b:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/k;->b:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/k;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    sget v2, Lcom/yelp/android/appdata/ao;->a:I

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 197
    :cond_0
    return-void
.end method
