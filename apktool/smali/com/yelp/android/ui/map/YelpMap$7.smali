.class Lcom/yelp/android/ui/map/YelpMap$7;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/LatLng;

.field final synthetic b:Lcom/yelp/android/ui/map/a;

.field final synthetic c:Lcom/yelp/android/serializable/f;

.field final synthetic d:I

.field final synthetic e:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/LatLng;Lcom/yelp/android/ui/map/a;Lcom/yelp/android/serializable/f;I)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap$7;->e:Lcom/yelp/android/ui/map/YelpMap;

    iput-object p2, p0, Lcom/yelp/android/ui/map/YelpMap$7;->a:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/yelp/android/ui/map/YelpMap$7;->b:Lcom/yelp/android/ui/map/a;

    iput-object p4, p0, Lcom/yelp/android/ui/map/YelpMap$7;->c:Lcom/yelp/android/serializable/f;

    iput p5, p0, Lcom/yelp/android/ui/map/YelpMap$7;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 3

    .prologue
    .line 474
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap$7;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap$7;->b:Lcom/yelp/android/ui/map/a;

    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap$7;->c:Lcom/yelp/android/serializable/f;

    invoke-interface {v1, v2}, Lcom/yelp/android/ui/map/a;->a(Lcom/yelp/android/serializable/f;)Lcom/google/android/gms/maps/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "marker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/map/YelpMap$7;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 481
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap$7;->e:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/e;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap$7;->c:Lcom/yelp/android/serializable/f;

    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/map/e;->a(Ljava/lang/Object;Lcom/google/android/gms/maps/model/c;)V

    .line 483
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap$7;->e:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/c;)Lcom/google/android/gms/maps/model/c;

    .line 484
    return-void
.end method
