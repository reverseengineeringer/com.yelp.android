.class Lcom/yelp/android/ui/map/aa;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private final b:Lcom/google/android/gms/maps/MapView;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/map/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/gms/maps/MapView;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/map/aa;",
            ">;",
            "Lcom/google/android/gms/maps/MapView;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iput-object p2, p0, Lcom/yelp/android/ui/map/aa;->b:Lcom/google/android/gms/maps/MapView;

    .line 628
    iput-object p3, p0, Lcom/yelp/android/ui/map/aa;->c:Ljava/lang/Runnable;

    .line 629
    iput-object p1, p0, Lcom/yelp/android/ui/map/aa;->d:Ljava/util/Collection;

    .line 630
    iget-object v0, p0, Lcom/yelp/android/ui/map/aa;->d:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/map/aa;->a:I

    .line 633
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/aa;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/aa;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/yelp/android/ui/map/aa;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 643
    iget-object v0, p0, Lcom/yelp/android/ui/map/aa;->b:Lcom/google/android/gms/maps/MapView;

    iget-object v1, p0, Lcom/yelp/android/ui/map/aa;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->post(Ljava/lang/Runnable;)Z

    .line 644
    iget-object v0, p0, Lcom/yelp/android/ui/map/aa;->d:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 666
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/aa;->b:Lcom/google/android/gms/maps/MapView;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/maps/MapView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 653
    iget v1, p0, Lcom/yelp/android/ui/map/aa;->a:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 654
    iget v0, p0, Lcom/yelp/android/ui/map/aa;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/map/aa;->a:I

    .line 655
    iget-object v0, p0, Lcom/yelp/android/ui/map/aa;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p0, v4, v5}, Lcom/google/android/gms/maps/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/map/aa;->d:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 659
    iget-object v1, p0, Lcom/yelp/android/ui/map/aa;->b:Lcom/google/android/gms/maps/MapView;

    if-nez v1, :cond_2

    .line 660
    const-string/jumbo v1, "YelpMapPostWhenReady"

    const-string/jumbo v2, "mMapView is null"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 662
    :cond_2
    const-string/jumbo v1, "YelpMapPostWhenReady"

    const-string/jumbo v2, "mMapView.getMap() threw the NPE"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
