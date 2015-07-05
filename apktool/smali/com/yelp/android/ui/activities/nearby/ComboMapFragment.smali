.class public Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;
.super Lcom/yelp/android/ui/util/YelpMapFragment;
.source "ComboMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/by;",
        ">",
        "Lcom/yelp/android/ui/util/YelpMapFragment",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/Runnable;

.field private c:Ljava/lang/Runnable;

.field private d:Z

.field private e:I

.field private g:Lcom/yelp/android/ui/activities/nearby/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/l",
            "<TT;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Z

    .line 49
    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:I

    .line 252
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method private a(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 242
    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 243
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/by;

    invoke-interface {v0}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 244
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/by;

    invoke-interface {v0}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 245
    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_2

    .line 246
    :cond_0
    const/4 v2, 0x0

    .line 249
    :cond_1
    return v2

    .line 242
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method private b(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setClipRect(Landroid/graphics/RectF;)V

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->invalidate()V

    .line 216
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method private g()Ljava/lang/Runnable;
    .locals 10

    .prologue
    const-wide v8, 0x3f689374c0000000L    # 0.003000000026077032

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/by;

    invoke-interface {v0}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 148
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    .line 152
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 156
    :cond_3
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v8

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 158
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    add-double/2addr v4, v8

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 160
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 170
    :goto_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 172
    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:I

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:I

    int-to-double v4, v1

    sub-double/2addr v2, v4

    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 178
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    .line 180
    iget-object v1, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    sub-double v2, v6, v2

    .line 183
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 184
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 187
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/k;

    invoke-direct {v0, p0, v2}, Lcom/yelp/android/ui/activities/nearby/k;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    goto/16 :goto_0

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 202
    iput p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:I

    .line 203
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->g()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:Ljava/lang/Runnable;

    .line 205
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 208
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/l",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->g:Lcom/yelp/android/ui/activities/nearby/l;

    .line 90
    return-void
.end method

.method public a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V
    .locals 3
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
    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Hold up cuz, map not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/by;

    invoke-interface {v0}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    invoke-virtual {v1, v2, p2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)Ljava/lang/Runnable;

    .line 111
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/j;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/activities/nearby/j;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;Lcom/google/android/gms/maps/model/CameraPosition;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Ljava/lang/Runnable;

    .line 124
    :goto_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->g()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:Ljava/lang/Runnable;

    .line 126
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Z

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Ljava/lang/Runnable;

    goto :goto_1

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/ui/map/YelpMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/map/YelpMap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Z

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Z

    .line 222
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:I

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b(I)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 225
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Z

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Z

    .line 231
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b(I)V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/lang/Runnable;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->g:Lcom/yelp/android/ui/activities/nearby/l;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MapFragmentCallback not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->g:Lcom/yelp/android/ui/activities/nearby/l;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/nearby/l;->a()Lcom/yelp/android/ui/map/e;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->g:Lcom/yelp/android/ui/activities/nearby/l;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/nearby/l;->i()Lcom/yelp/android/ui/map/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setInfoWindowListener(Lcom/yelp/android/ui/map/f;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->g:Lcom/yelp/android/ui/activities/nearby/l;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/l;->c()V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f03011f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c(Landroid/view/View;)V

    .line 57
    return-object v0
.end method
