.class Lcom/yelp/android/ui/map/s;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/yelp/android/ui/map/s;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/map/s;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/yelp/android/ui/map/s;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v1}, Lcom/yelp/android/ui/map/YelpMap;->b(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 214
    iget-object v1, p0, Lcom/yelp/android/ui/map/s;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 215
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setIndoorEnabled(Z)Z

    .line 216
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 217
    return-void
.end method
