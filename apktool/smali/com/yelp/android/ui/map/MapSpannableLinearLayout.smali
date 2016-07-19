.class public Lcom/yelp/android/ui/map/MapSpannableLinearLayout;
.super Lcom/yelp/android/ui/widgets/SpannableLinearLayout;
.source "MapSpannableLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/f;",
        ">",
        "Lcom/yelp/android/ui/widgets/SpannableLinearLayout;"
    }
.end annotation


# instance fields
.field private b:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/FrameLayout;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


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

    sget v1, Lcom/yelp/android/co/a$h;->map_spannable_header:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    sget v0, Lcom/yelp/android/co/a$f;->map:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/YelpMap;

    iput-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b:Lcom/yelp/android/ui/map/YelpMap;

    .line 38
    sget v0, Lcom/yelp/android/co/a$f;->map_frame:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->c:Landroid/widget/FrameLayout;

    .line 39
    sget v0, Lcom/yelp/android/co/a$f;->map_border:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->i:Landroid/view/View;

    .line 40
    sget v0, Lcom/yelp/android/co/a$f;->map_white_corners:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->j:Landroid/view/View;

    .line 43
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setPadding(IIII)V

    .line 44
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/e;Lcom/google/android/gms/maps/model/LatLng;ILandroid/os/Bundle;Z)Z
    .locals 4
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

    .line 165
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$a;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$a;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(F)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 171
    invoke-static {}, Lcom/yelp/android/ui/map/YelpMap;->getReadOnlyOptions()Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v2

    .line 172
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 173
    invoke-virtual {v2, p6}, Lcom/google/android/gms/maps/GoogleMapOptions;->i(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 175
    iget-object v1, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 176
    iget-object v1, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, p5, p2}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 178
    iget-object v1, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1}, Lcom/yelp/android/ui/map/YelpMap;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/map/m;

    invoke-direct {v3, p4}, Lcom/yelp/android/ui/map/m;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 182
    iget-object v1, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->setMyLocationButtonEnabled(Z)V

    .line 183
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->c:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 192
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z
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
    .line 96
    invoke-interface {p1}, Lcom/yelp/android/serializable/f;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/e;Lcom/google/android/gms/maps/model/LatLng;ILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z
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
    .line 127
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1}, Lcom/yelp/android/serializable/f;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    const-wide v4, 0x3f40624dd2f1a9fcL    # 5.0E-4

    add-double/2addr v0, v4

    invoke-interface {p1}, Lcom/yelp/android/serializable/f;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 132
    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/e;Lcom/google/android/gms/maps/model/LatLng;ILandroid/os/Bundle;Z)Z

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
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setFullBleed(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMiddle(Z)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->setMiddle(Z)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/YelpMap;->setMiddle(Z)V

    .line 61
    return-void
.end method
