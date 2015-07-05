.class public Lcom/yelp/android/ui/map/YelpMap;
.super Lcom/yelp/android/ui/widgets/SpannableFrameLayout;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/yelp/android/ui/map/f;
.implements Lcom/yelp/android/ui/map/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/by;",
        ">",
        "Lcom/yelp/android/ui/widgets/SpannableFrameLayout;",
        "Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;",
        "Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;",
        "Lcom/yelp/android/ui/map/f",
        "<TT;>;",
        "Lcom/yelp/android/ui/map/i;"
    }
.end annotation


# instance fields
.field private g:Lcom/google/android/gms/maps/MapView;

.field private h:Lcom/yelp/android/ui/map/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private i:Lcom/yelp/android/ui/map/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

.field private k:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/map/aa;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 136
    invoke-static {p1, p2}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/content/Context;Landroid/location/Location;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/map/YelpMap;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 148
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 127
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/location/Location;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 6

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 77
    :cond_0
    invoke-static {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/content/Context;Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 96
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 100
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 106
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/MapView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/a;)Lcom/google/android/gms/maps/model/Marker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yelp/android/ui/map/a",
            "<TT;>;)",
            "Lcom/google/android/gms/maps/model/Marker;"
        }
    .end annotation

    .prologue
    .line 512
    invoke-interface {p1}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-interface {p2, p1}, Lcom/yelp/android/ui/map/a;->a(Lcom/yelp/android/serializable/by;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->h:Lcom/yelp/android/ui/map/e;

    invoke-interface {v1, p1, v0}, Lcom/yelp/android/ui/map/e;->a(Ljava/lang/Object;Lcom/google/android/gms/maps/model/Marker;)V

    .line 520
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/YelpMap;Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/a;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/a;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/YelpMap;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/YelpMap;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 557
    :cond_0
    return-void

    .line 555
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/e;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->h:Lcom/yelp/android/ui/map/e;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/map/YelpMap;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/YelpMap;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->h:Lcom/yelp/android/ui/map/e;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->h:Lcom/yelp/android/ui/map/e;

    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {v0, p0}, Lcom/yelp/android/ui/map/e;->a(Lcom/yelp/android/ui/map/f;)V

    .line 563
    :cond_0
    return-void

    .line 561
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/f;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/yelp/android/ui/map/f;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/map/YelpMap;)Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/aa;

    .line 692
    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/MapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 695
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/google/android/gms/maps/model/LatLngBounds;"
        }
    .end annotation

    .prologue
    .line 386
    const/4 v3, 0x0

    .line 388
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/by;

    invoke-interface {v2}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v11

    .line 390
    iget-wide v0, v11, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    .line 391
    iget-wide v0, v11, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    .line 392
    iget-wide v14, v11, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 393
    iget-wide v12, v11, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 395
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/by;

    .line 396
    invoke-interface {v2}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v21

    .line 397
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    if-nez v3, :cond_2

    .line 403
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v2

    move-object v10, v2

    .line 406
    :goto_1
    iget-wide v2, v11, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v11, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v2 .. v9}, Lcom/yelp/android/util/o;->a(DDDD)D

    move-result-wide v2

    .line 411
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 412
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 414
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 415
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 416
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 417
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 419
    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    add-double v12, v8, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double v14, v4, v2

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    :goto_2
    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object v3, v10

    .line 421
    goto/16 :goto_0

    .line 422
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    return-object v2

    :cond_2
    move-object v10, v3

    goto :goto_1

    :cond_3
    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    goto :goto_2
.end method

.method public a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)Ljava/lang/Runnable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/yelp/android/ui/map/a",
            "<TT;>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lcom/yelp/android/ui/map/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/map/w;-><init>(Lcom/yelp/android/ui/map/YelpMap;Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 368
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/yelp/android/ui/map/aa;

    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/Collection;

    iget-object v3, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    new-instance v4, Lcom/yelp/android/ui/map/x;

    invoke-direct {v4, p0, v0}, Lcom/yelp/android/ui/map/x;-><init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/ui/map/aa;-><init>(Ljava/util/Collection;Lcom/google/android/gms/maps/MapView;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/map/YelpMap;->m:Z

    .line 683
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    const-string/jumbo v1, "extra.map_view"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/yelp/android/ui/map/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->removeView(Landroid/view/View;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/map/YelpMap;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->k:Lcom/google/android/gms/maps/GoogleMapOptions;

    if-eqz v1, :cond_2

    .line 189
    new-instance v1, Lcom/google/android/gms/maps/MapView;

    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->k:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    .line 193
    :goto_0
    instance-of v1, v0, Lcom/yelp/android/ui/map/i;

    if-eqz v1, :cond_1

    .line 194
    check-cast v0, Lcom/yelp/android/ui/map/i;

    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/map/i;->a(Lcom/google/android/gms/maps/MapView;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->addView(Landroid/view/View;I)V

    .line 197
    iput-object p2, p0, Lcom/yelp/android/ui/map/YelpMap;->h:Lcom/yelp/android/ui/map/e;

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/Collection;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/map/YelpMap;->m:Z

    .line 201
    new-instance v0, Lcom/yelp/android/ui/map/g;

    invoke-virtual {p0}, Lcom/yelp/android/ui/map/YelpMap;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/ui/map/g;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/map/i;)V

    .line 202
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/g;->a(Lcom/google/android/gms/maps/MapView;)V

    .line 204
    if-eqz p1, :cond_3

    .line 205
    const-string/jumbo v0, "extra.map_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 207
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 209
    new-instance v0, Lcom/yelp/android/ui/map/s;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/s;-><init>(Lcom/yelp/android/ui/map/YelpMap;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 219
    return-void

    .line 191
    :cond_2
    new-instance v1, Lcom/google/android/gms/maps/MapView;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    goto :goto_0

    :cond_3
    move-object v0, p1

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/maps/MapView;)V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public a(Lcom/google/android/gms/maps/model/CameraPosition;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/yelp/android/ui/map/z;

    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-direct {v1, v2, v0, p2}, Lcom/yelp/android/ui/map/z;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 288
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/by;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/yelp/android/ui/map/f;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/yelp/android/ui/map/f;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/map/f;->a(Ljava/lang/Object;)V

    .line 709
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/yelp/android/serializable/by;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/serializable/by;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/yelp/android/ui/map/YelpMap;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-nez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/aa;

    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/Collection;

    iget-object v3, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-direct {v1, v2, v3, p1}, Lcom/yelp/android/ui/map/aa;-><init>(Ljava/util/Collection;Lcom/google/android/gms/maps/MapView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 225
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/by;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/yelp/android/ui/map/f;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/yelp/android/ui/map/f;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/map/f;->b(Ljava/lang/Object;)V

    .line 716
    :cond_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/yelp/android/serializable/by;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/YelpMap;->b(Lcom/yelp/android/serializable/by;)V

    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 231
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/yelp/android/ui/map/YelpMap;->g()V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 238
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    .line 244
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/yelp/android/ui/map/y;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/y;-><init>(Lcom/yelp/android/ui/map/YelpMap;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getCurrentCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getMapView()Lcom/google/android/gms/maps/MapView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method public getPlayServicesAvailable()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/yelp/android/ui/map/YelpMap;->m:Z

    return v0
.end method

.method public getViewableRegion()[D
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 450
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    .line 451
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 452
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/MapView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/MapView;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 454
    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 456
    const/4 v3, 0x6

    new-array v3, v3, [D

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    aput-wide v4, v3, v6

    const/4 v4, 0x1

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    aput-wide v6, v3, v4

    const/4 v1, 0x2

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    aput-wide v4, v3, v1

    const/4 v1, 0x3

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    aput-wide v4, v3, v1

    const/4 v0, 0x4

    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    aput-wide v4, v3, v0

    const/4 v0, 0x5

    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    aput-wide v4, v3, v0

    return-object v3
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;->onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 509
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->n:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 607
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 608
    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->h:Lcom/yelp/android/ui/map/e;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->h:Lcom/yelp/android/ui/map/e;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/map/e;->b(Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/by;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/serializable/by;)V

    .line 702
    :cond_0
    return-void
.end method

.method public setClipRect(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->n:Landroid/graphics/RectF;

    .line 596
    return-void
.end method

.method public setInfoWindowListener(Lcom/yelp/android/ui/map/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/map/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 302
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/yelp/android/ui/map/f;

    .line 303
    new-instance v0, Lcom/yelp/android/ui/map/t;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/t;-><init>(Lcom/yelp/android/ui/map/YelpMap;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public setInteractive(Z)V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/yelp/android/ui/map/v;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/map/v;-><init>(Lcom/yelp/android/ui/map/YelpMap;Z)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method public setMapMode(I)V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 725
    :cond_0
    return-void
.end method

.method public setMapSpan(Lcom/yelp/android/serializable/MapSpan;)V
    .locals 8

    .prologue
    .line 261
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLon()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLatDelta()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLon()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLonDelta()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLatDelta()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLon()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLonDelta()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLatDelta()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLon()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLonDelta()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLatDelta()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLon()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->getLonDelta()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    sget v1, Lcom/yelp/android/appdata/ao;->a:I

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/yelp/android/ui/map/z;

    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->g:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/ui/map/z;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/CameraUpdate;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 281
    :cond_0
    return-void
.end method

.method public setOnCameraUpdate(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V
    .locals 1

    .prologue
    .line 318
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    .line 319
    new-instance v0, Lcom/yelp/android/ui/map/u;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/u;-><init>(Lcom/yelp/android/ui/map/YelpMap;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->k:Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 174
    return-void
.end method
