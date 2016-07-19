.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a(Lcom/google/android/gms/maps/model/CameraPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 4

    .prologue
    .line 670
    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->d()Lcom/google/android/gms/maps/g;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Lcom/google/android/gms/maps/g;->a()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 673
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 676
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    const v3, 0x7f070232

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 683
    return-void
.end method
