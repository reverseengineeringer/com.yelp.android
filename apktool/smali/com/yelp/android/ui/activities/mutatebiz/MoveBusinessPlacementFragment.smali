.class public Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;
.super Lcom/yelp/android/ui/util/YelpMapFragment;
.source "MoveBusinessPlacementFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpMapFragment",
        "<",
        "Lcom/yelp/android/serializable/f;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/location/Address;

.field private c:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$a;

.field private d:Lcom/yelp/android/appdata/webrequests/cd;

.field private final e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;-><init>()V

    .line 265
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 287
    return-void
.end method

.method public static a(Landroid/location/Address;Ljava/lang/String;)Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;-><init>()V

    .line 64
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b(Landroid/location/Address;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->b()Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v0

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(F)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/google/android/gms/maps/model/CameraPosition;Lcom/google/android/gms/maps/c$a;)V

    .line 258
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    return-object v0
.end method

.method public static b(Landroid/location/Address;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    const-string/jumbo v1, "business_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0574

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 208
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$1;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Landroid/location/Address;)V

    .line 223
    return-void
.end method

.method public a(Landroid/location/Address;)V
    .locals 6

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 229
    invoke-virtual {p1}, Landroid/location/Address;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Address;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->l()V

    .line 231
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string/jumbo v0, ", "

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/a;->b(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/appdata/webrequests/cd;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/appdata/webrequests/cd;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/cd;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/appdata/webrequests/cd;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/cd;->a(Z)V

    .line 238
    :cond_1
    new-instance v1, Lcom/yelp/android/appdata/webrequests/cd;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/cd;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/appdata/webrequests/cd;

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/appdata/webrequests/cd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cd;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/appdata/webrequests/cd;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method b()Landroid/location/Address;
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getCurrentCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getCurrentCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 249
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 250
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    goto :goto_0
.end method

.method public c()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditAddressPosition:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onAttach(Landroid/app/Activity;)V

    .line 83
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attach your MoveBusinessPlacement to an MoveBusinessPlacementFragmentListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->setHasOptionsMenu(Z)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/YelpMapFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 191
    const v0, 0x7f10001a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 102
    const v1, 0x7f0301fc

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 103
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c(Landroid/view/View;)V

    .line 104
    const v1, 0x7f0f05bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "business_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "address"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    iput-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    .line 109
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$a;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$a;->c()Landroid/location/Address;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    iput-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    .line 113
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0704a5

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    const/4 v3, 0x1

    const-string/jumbo v6, ", "

    iget-object v7, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    invoke-static {v6, v7}, Lcom/yelp/android/ui/activities/mutatebiz/a;->a(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v2, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/location/Location;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->hasLatitude()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->hasLongitude()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->b()Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/yelp/android/ui/map/YelpMap;->b(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    .line 140
    :cond_1
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->b()Lcom/google/android/gms/maps/model/CameraPosition$a;

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->n()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->n()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/CameraPosition;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v2

    .line 143
    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(F)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 147
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->g()V

    .line 149
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    const v2, 0x7f0f0080

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020378

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v8, v8, v8, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 155
    return-object v0

    .line 113
    :cond_3
    const v2, 0x7f0704a4

    goto/16 :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;->onDetach()V

    .line 185
    const-string/jumbo v0, "request_geocode_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/appdata/webrequests/cd;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 186
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$a;->b()V

    .line 199
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0615
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;->onResume()V

    .line 172
    const-string/jumbo v0, "request_geocode_request"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cd;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->d:Lcom/yelp/android/appdata/webrequests/cd;

    .line 177
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->f()Lcom/yelp/android/ui/map/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b:Landroid/location/Address;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Landroid/location/Address;)V

    .line 180
    :cond_0
    return-void
.end method
