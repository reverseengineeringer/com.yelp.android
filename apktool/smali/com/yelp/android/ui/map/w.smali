.class Lcom/yelp/android/ui/map/w;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/yelp/android/ui/map/a;

.field final synthetic c:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;Ljava/util/List;Lcom/yelp/android/ui/map/a;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/yelp/android/ui/map/w;->c:Lcom/yelp/android/ui/map/YelpMap;

    iput-object p2, p0, Lcom/yelp/android/ui/map/w;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/yelp/android/ui/map/w;->b:Lcom/yelp/android/ui/map/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/map/w;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/by;

    .line 363
    iget-object v2, p0, Lcom/yelp/android/ui/map/w;->c:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v3, p0, Lcom/yelp/android/ui/map/w;->b:Lcom/yelp/android/ui/map/a;

    invoke-static {v2, v0, v3}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/a;)Lcom/google/android/gms/maps/model/Marker;

    goto :goto_0

    .line 365
    :cond_0
    return-void
.end method
