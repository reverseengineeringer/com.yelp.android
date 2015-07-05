.class Lcom/yelp/android/ui/map/v;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;Z)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/yelp/android/ui/map/v;->b:Lcom/yelp/android/ui/map/YelpMap;

    iput-boolean p2, p0, Lcom/yelp/android/ui/map/v;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/map/v;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/map/v;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/map/v;->a:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 341
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/map/v;->a:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 342
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/ui/map/v;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 344
    :cond_0
    return-void
.end method
