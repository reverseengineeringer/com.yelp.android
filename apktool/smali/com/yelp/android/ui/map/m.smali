.class Lcom/yelp/android/ui/map/m;
.super Ljava/lang/Object;
.source "SingleBusinessInfoWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

.field final synthetic b:Lcom/yelp/android/ui/map/l;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/l;Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/yelp/android/ui/map/m;->b:Lcom/yelp/android/ui/map/l;

    iput-object p2, p0, Lcom/yelp/android/ui/map/m;->a:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/map/m;->a:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/map/m;->b:Lcom/yelp/android/ui/map/l;

    invoke-static {v0}, Lcom/yelp/android/ui/map/l;->a(Lcom/yelp/android/ui/map/l;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 152
    return-void
.end method
