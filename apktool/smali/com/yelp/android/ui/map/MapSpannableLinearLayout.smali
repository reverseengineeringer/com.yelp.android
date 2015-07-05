.class public Lcom/yelp/android/ui/map/MapSpannableLinearLayout;
.super Lcom/yelp/android/ui/widgets/SpannableLinearLayout;
.source "MapSpannableLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/by;",
        ">",
        "Lcom/yelp/android/ui/widgets/SpannableLinearLayout;"
    }
.end annotation


# instance fields
.field private g:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<TT;>;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setOrientation(I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yelp/android/bf/i;->map_spannable_header:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    sget v0, Lcom/yelp/android/bf/g;->map:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/YelpMap;

    iput-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    .line 38
    sget v0, Lcom/yelp/android/bf/g;->map_frame:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->h:Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setPadding(IIII)V

    .line 42
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/e;Lcom/google/android/gms/maps/model/LatLng;ILandroid/os/Bundle;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yelp/android/ui/map/e",
            "<TT;>;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "I",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v2}, Lcom/yelp/android/ui/map/YelpMap;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v2

    .line 147
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 148
    invoke-virtual {v2, p6}, Lcom/google/android/gms/maps/GoogleMapOptions;->liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 150
    iget-object v1, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 151
    iget-object v1, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, p5, p2}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 153
    invoke-virtual {p0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/map/r;

    invoke-direct {v2, p4}, Lcom/yelp/android/ui/map/r;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)Ljava/lang/Runnable;

    .line 157
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getPlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yelp/android/ui/map/e",
            "<TT;>;I",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface {p1}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/e;Lcom/google/android/gms/maps/model/LatLng;ILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->h:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 183
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yelp/android/ui/map/e",
            "<TT;>;I",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v4, 0x3f40624dd2f1a9fcL    # 5.0E-4

    add-double/2addr v0, v4

    invoke-interface {p1}, Lcom/yelp/android/serializable/by;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/e;Lcom/google/android/gms/maps/model/LatLng;ILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public getYelpMap()Lcom/yelp/android/ui/map/YelpMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/map/YelpMap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMiddle(Z)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->setMiddle(Z)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->g:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/YelpMap;->setMiddle(Z)V

    .line 59
    return-void
.end method
