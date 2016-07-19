.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 685
    return-void
.end method
