.class public Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;
.super Lcom/yelp/android/ui/util/YelpMapFragment;
.source "MoveBusinessPlacementFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/util/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpMapFragment",
        "<",
        "Lcom/yelp/android/serializable/by;",
        ">;",
        "Lcom/yelp/android/ui/util/g",
        "<",
        "Lcom/yelp/android/serializable/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Landroid/location/Address;

.field private d:Lcom/yelp/android/ui/activities/mutatebiz/ad;

.field private e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;-><init>()V

    .line 401
    return-void
.end method

.method public static a(Landroid/location/Address;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    const-string/jumbo v1, "business_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3

    .prologue
    .line 274
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/aa;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/mutatebiz/aa;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/google/android/gms/maps/model/CameraPosition;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 292
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Z

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ab;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ab;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOnCameraUpdate(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 303
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c046d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 230
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/z;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/z;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Landroid/location/Address;)V

    .line 242
    return-void
.end method

.method public a(Landroid/location/Address;)V
    .locals 6

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    invoke-virtual {p1}, Landroid/location/Address;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Address;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->j()V

    .line 250
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string/jumbo v0, ", "

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/f;->b(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->b(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Lcom/yelp/android/appdata/webrequests/cn;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/cn;->cancel(Z)V

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->b(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Lcom/yelp/android/appdata/webrequests/cn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Location;)V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->j()V

    .line 314
    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Location;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 318
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "address"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->g()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/yelp/android/serializable/Location;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/yelp/android/serializable/Location;)V

    return-void
.end method

.method b()Landroid/location/Address;
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getCurrentCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 264
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 265
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    return-object v0
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->j()V

    .line 330
    invoke-static {p1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/util/ErrorType;->getTextId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 331
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Z

    return v0
.end method

.method public d()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditAddressPosition:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/mutatebiz/ad;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/ui/activities/mutatebiz/ad;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attach your MoveBusinessPlacement to an MoveBusinessPlacementFragmentListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "tag_geocode_request_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    const-string/jumbo v2, "tag_geocode_request_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->setHasOptionsMenu(Z)V

    .line 120
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/YelpMapFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 206
    const v0, 0x7f100016

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 207
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    const v1, 0x7f030181

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 127
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c(Landroid/view/View;)V

    .line 128
    const v1, 0x7f0c04b1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 130
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "business_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "address"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    iput-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    .line 133
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/ui/activities/mutatebiz/ad;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/mutatebiz/ad;->b()Landroid/location/Address;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    iput-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    .line 138
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f07048d

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    const/4 v3, 0x1

    const-string/jumbo v6, ", "

    iget-object v7, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-static {v6, v7}, Lcom/yelp/android/ui/activities/mutatebiz/f;->a(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v2, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/content/Context;Landroid/location/Location;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->hasLatitude()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->hasLongitude()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 152
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/content/Context;Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    .line 155
    :cond_1
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/CameraPosition;->builder(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    .line 158
    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 162
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->f()V

    .line 164
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    const v2, 0x7f0c005d

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02028b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v8, v8, v8, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 170
    return-object v0

    .line 138
    :cond_3
    const v2, 0x7f07048e

    goto/16 :goto_0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;->onDetach()V

    .line 201
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 223
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 215
    :sswitch_0
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Z

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/ui/activities/mutatebiz/ad;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b()Landroid/location/Address;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ad;->a(Landroid/location/Address;)V

    goto :goto_0

    .line 220
    :cond_0
    :sswitch_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/ui/activities/mutatebiz/ad;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ad;->a(Landroid/location/Address;)V

    goto :goto_0

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x7f0c0504 -> :sswitch_1
        0x7f0c050c -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;->onResume()V

    .line 191
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e()Lcom/yelp/android/ui/map/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Landroid/location/Address;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Landroid/location/Address;)V

    .line 194
    :cond_0
    return-void
.end method
