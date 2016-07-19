.class public Lcom/yelp/android/ui/map/YelpMap;
.super Lcom/yelp/android/ui/widgets/SpannableFrameLayout;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/c$c;
.implements Lcom/google/android/gms/maps/c$d;
.implements Lcom/yelp/android/ui/map/e$a;
.implements Lcom/yelp/android/ui/map/f$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/f;",
        ">",
        "Lcom/yelp/android/ui/widgets/SpannableFrameLayout;",
        "Lcom/google/android/gms/maps/c$c;",
        "Lcom/google/android/gms/maps/c$d;",
        "Lcom/yelp/android/ui/map/e$a",
        "<TT;>;",
        "Lcom/yelp/android/ui/map/f$a;"
    }
.end annotation


# instance fields
.field private b:Lcom/google/android/gms/maps/MapView;

.field private c:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private i:Lcom/google/android/gms/maps/c$c;

.field private j:Lcom/yelp/android/ui/map/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private k:Lcom/yelp/android/ui/map/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/e$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private m:Landroid/graphics/RectF;

.field private n:Lcom/google/android/gms/maps/model/c;

.field private o:Lcom/google/android/gms/maps/model/LatLng;

.field private p:D

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 157
    invoke-static {p2}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/location/Location;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/map/YelpMap;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/map/YelpMap;->q:I

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/map/YelpMap;->q:I

    .line 168
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 169
    return-void
.end method

.method public static a(Landroid/location/Location;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 6

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    if-eqz p0, :cond_0

    .line 90
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->b()Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(F)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 96
    :cond_0
    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->b(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/c;)Lcom/google/android/gms/maps/model/c;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->n:Lcom/google/android/gms/maps/model/c;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/e;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/yelp/android/ui/map/e;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yelp/android/ui/map/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 465
    invoke-interface {p1}, Lcom/yelp/android/serializable/f;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 468
    iget v0, p0, Lcom/yelp/android/ui/map/YelpMap;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/map/YelpMap;->q:I

    .line 469
    iget v5, p0, Lcom/yelp/android/ui/map/YelpMap;->q:I

    .line 470
    iget-object v6, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v0, Lcom/yelp/android/ui/map/YelpMap$7;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/map/YelpMap$7;-><init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/LatLng;Lcom/yelp/android/ui/map/a;Lcom/yelp/android/serializable/f;I)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 486
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/YelpMap;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/YelpMap;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 637
    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/YelpMap$9;

    invoke-direct {v1, p0, p1, p0}, Lcom/yelp/android/ui/map/YelpMap$9;-><init>(Lcom/yelp/android/ui/map/YelpMap;ZLcom/google/android/gms/maps/c$c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 645
    return-void
.end method

.method public static b(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    .line 114
    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 117
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->d(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->h(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->e(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->g(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 121
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->c(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->f(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 127
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->j(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 128
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/e$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->k:Lcom/yelp/android/ui/map/e$a;

    return-object v0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/yelp/android/ui/map/e;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/yelp/android/ui/map/e;

    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {v0, p0}, Lcom/yelp/android/ui/map/e;->a(Lcom/yelp/android/ui/map/e$a;)V

    .line 651
    :cond_0
    return-void

    .line 649
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getReadOnlyOptions()Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->d(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->h(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->e(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->g(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->c(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->f(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->j(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 148
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/google/android/gms/maps/model/LatLngBounds;"
        }
    .end annotation

    .prologue
    .line 510
    const/4 v3, 0x0

    .line 512
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/f;

    invoke-interface {v2}, Lcom/yelp/android/serializable/f;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    move-wide/from16 v18, v0

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    move-wide/from16 v16, v0

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v14, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v12, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 519
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/f;

    .line 520
    invoke-interface {v2}, Lcom/yelp/android/serializable/f;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v20

    .line 521
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    if-nez v3, :cond_4

    .line 528
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->b()Lcom/google/android/gms/maps/model/LatLngBounds$a;

    move-result-object v2

    move-object v10, v2

    .line 531
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->b:D

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static/range {v2 .. v9}, Lcom/yelp/android/util/i;->a(DDDD)D

    move-result-wide v2

    .line 540
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    .line 541
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    .line 543
    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 544
    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 545
    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 546
    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 548
    new-instance v12, Lcom/google/android/gms/maps/model/LatLng;

    add-double v14, v8, v6

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double v16, v4, v2

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    :goto_2
    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object v3, v10

    .line 550
    goto/16 :goto_0

    .line 554
    :cond_1
    sub-double v2, v16, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f589374c0000000L    # 0.001500000013038516

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 555
    const-wide v2, 0x3f589374c0000000L    # 0.001500000013038516

    sub-double v4, v16, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 556
    add-double v16, v16, v2

    .line 557
    sub-double v18, v18, v2

    .line 559
    :cond_2
    sub-double v2, v12, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f589374c0000000L    # 0.001500000013038516

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 560
    const-wide v2, 0x3f589374c0000000L    # 0.001500000013038516

    sub-double v4, v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 561
    add-double/2addr v12, v2

    .line 562
    sub-double/2addr v14, v2

    .line 564
    :cond_3
    const-wide v2, 0x3f40624de0000000L    # 5.000000237487257E-4

    add-double v2, v2, v16

    .line 565
    const-wide v4, 0x3f40624de0000000L    # 5.000000237487257E-4

    sub-double v4, v18, v4

    .line 566
    const-wide v6, 0x3f40624de0000000L    # 5.000000237487257E-4

    add-double/2addr v6, v12

    .line 567
    const-wide v8, 0x3f40624de0000000L    # 5.000000237487257E-4

    sub-double v8, v14, v8

    .line 568
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v10, v4, v5, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 569
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v2, v3, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v10, v2}, Lcom/yelp/android/util/i;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/yelp/android/ui/map/YelpMap;->p:D

    .line 573
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v2, v10, v4}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v2

    :cond_4
    move-object v10, v3

    goto/16 :goto_1

    :cond_5
    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    goto/16 :goto_2
.end method

.method public a()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/MapView;->b(Landroid/os/Bundle;)V

    .line 275
    const-string/jumbo v1, "extra.map_view"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 277
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
    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->removeView(Landroid/view/View;)V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/map/YelpMap;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    if-eqz v0, :cond_2

    .line 210
    new-instance v0, Lcom/google/android/gms/maps/MapView;

    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    .line 214
    :goto_0
    instance-of v0, v1, Lcom/yelp/android/ui/map/f$a;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 215
    check-cast v0, Lcom/yelp/android/ui/map/f$a;

    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-interface {v0, v2}, Lcom/yelp/android/ui/map/f$a;->a(Lcom/google/android/gms/maps/MapView;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/map/YelpMap;->addView(Landroid/view/View;I)V

    .line 218
    iput-object p2, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/yelp/android/ui/map/e;

    .line 220
    new-instance v0, Lcom/yelp/android/ui/map/f;

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/ui/map/f;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/map/f$a;)V

    .line 221
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/f;->a(Lcom/google/android/gms/maps/MapView;)V

    .line 223
    if-eqz p1, :cond_3

    .line 224
    const-string/jumbo v0, "extra.map_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 226
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/MapView;->a(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/YelpMap$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/map/YelpMap$1;-><init>(Lcom/yelp/android/ui/map/YelpMap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 245
    return-void

    .line 212
    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/MapView;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    goto :goto_0

    :cond_3
    move-object v0, p1

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/maps/MapView;)V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/google/android/gms/maps/c$c;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/google/android/gms/maps/c$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$c;->a(Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 629
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/maps/model/CameraPosition;Lcom/google/android/gms/maps/c$a;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/YelpMap$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/ui/map/YelpMap$3;-><init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/google/android/gms/maps/c$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 324
    return-void
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/YelpMap$4;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/map/YelpMap$4;-><init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 371
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->k:Lcom/yelp/android/ui/map/e$a;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->k:Lcom/yelp/android/ui/map/e$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/map/e$a;->a(Ljava/lang/Object;)V

    .line 692
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/yelp/android/serializable/f;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/serializable/f;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/yelp/android/ui/map/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;Z)V

    .line 428
    return-void
.end method

.method public a(Ljava/util/List;Lcom/yelp/android/ui/map/a;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/yelp/android/ui/map/a",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 441
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/f;

    .line 444
    invoke-interface {v0}, Lcom/yelp/android/serializable/f;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/map/YelpMap;->o:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v2, v3}, Lcom/yelp/android/util/i;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v2

    .line 446
    iget-wide v4, p0, Lcom/yelp/android/ui/map/YelpMap;->p:D

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    :cond_1
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/List;

    .line 453
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/f;

    .line 454
    invoke-direct {p0, v0, p2}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/a;)V

    goto :goto_1

    .line 456
    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->b()V

    .line 251
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->k:Lcom/yelp/android/ui/map/e$a;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->k:Lcom/yelp/android/ui/map/e$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/map/e$a;->b(Ljava/lang/Object;)V

    .line 699
    :cond_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/yelp/android/serializable/f;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/YelpMap;->b(Lcom/yelp/android/serializable/f;)V

    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->a()V

    .line 257
    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/gms/maps/model/c;)V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/yelp/android/ui/map/e;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->j:Lcom/yelp/android/ui/map/e;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/map/e;->e(Lcom/google/android/gms/maps/model/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/f;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/serializable/f;)V

    .line 685
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->c()V

    .line 263
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->d()V

    .line 269
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Z)V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->l:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/google/android/gms/maps/c$c;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->setOnCameraUpdate(Lcom/google/android/gms/maps/c$c;)V

    .line 338
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/YelpMap$8;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/map/YelpMap$8;-><init>(Lcom/yelp/android/ui/map/YelpMap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 501
    return-void
.end method

.method public getCurrentCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastMarker()Lcom/google/android/gms/maps/model/c;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->n:Lcom/google/android/gms/maps/model/c;

    return-object v0
.end method

.method public getMapView()Lcom/google/android/gms/maps/MapView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method public getViewableRegion()[D
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 587
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->d()Lcom/google/android/gms/maps/g;

    move-result-object v0

    .line 589
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/g;->a(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 590
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/MapView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/MapView;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/g;->a(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 593
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 595
    const/4 v0, 0x6

    new-array v0, v0, [D

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    aput-wide v4, v0, v6

    const/4 v4, 0x1

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    aput-wide v6, v0, v4

    const/4 v1, 0x2

    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    aput-wide v4, v0, v1

    const/4 v1, 0x3

    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    aput-wide v4, v0, v1

    const/4 v1, 0x4

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->a:D

    aput-wide v4, v0, v1

    const/4 v1, 0x5

    iget-wide v2, v3, Lcom/google/android/gms/maps/model/LatLng;->b:D

    aput-wide v2, v0, v1

    .line 604
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 740
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/map/YelpMap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->m:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 662
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 663
    return-void
.end method

.method public setClipRect(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->m:Landroid/graphics/RectF;

    .line 655
    return-void
.end method

.method public setInfoWindowListener(Lcom/yelp/android/ui/map/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/map/e$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 379
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->k:Lcom/yelp/android/ui/map/e$a;

    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/YelpMap$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/map/YelpMap$5;-><init>(Lcom/yelp/android/ui/map/YelpMap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 387
    return-void
.end method

.method public setInteractive(Z)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/YelpMap$6;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/map/YelpMap$6;-><init>(Lcom/yelp/android/ui/map/YelpMap;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 417
    return-void
.end method

.method public setMapMode(I)V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/YelpMap$10;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/map/YelpMap$10;-><init>(Lcom/yelp/android/ui/map/YelpMap;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 709
    return-void
.end method

.method public setMapSpan(Lcom/yelp/android/serializable/MapSpan;)V
    .locals 8

    .prologue
    .line 286
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->b()Lcom/google/android/gms/maps/model/LatLngBounds$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->a()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->b()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->a()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->d()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->b()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->c()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->a()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->d()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->b()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->c()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->a()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->d()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->b()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->c()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->a()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->d()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->b()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MapSpan;->c()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 306
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 307
    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 2

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/yelp/android/ui/map/YelpMap;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->b:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/yelp/android/ui/map/YelpMap$2;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/map/YelpMap$2;-><init>(Lcom/yelp/android/ui/map/YelpMap;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 721
    :cond_0
    return-void
.end method

.method public setOnCameraUpdate(Lcom/google/android/gms/maps/c$c;)V
    .locals 1

    .prologue
    .line 396
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/google/android/gms/maps/c$c;

    .line 397
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap;->i:Lcom/google/android/gms/maps/c$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Z)V

    .line 398
    return-void

    .line 397
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 195
    return-void
.end method
