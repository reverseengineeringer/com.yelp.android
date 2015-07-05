.class Lcom/yelp/android/ui/map/y;
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
    .line 429
    iput-object p1, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->b(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/map/e;->a()V

    .line 433
    iget-object v1, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v0, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->c(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/f;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;Z)V

    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v1}, Lcom/yelp/android/ui/map/YelpMap;->b(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/map/y;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 439
    :cond_0
    return-void

    .line 433
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
