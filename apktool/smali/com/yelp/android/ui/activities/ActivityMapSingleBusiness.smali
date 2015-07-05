.class public Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;
.super Lcom/yelp/android/ui/activities/support/YelpMapActivity;
.source "ActivityMapSingleBusiness.java"


# instance fields
.field private a:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private final c:Lcom/yelp/android/ui/map/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/f",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;-><init>()V

    .line 82
    new-instance v0, Lcom/yelp/android/ui/activities/cq;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/cq;-><init>(Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->c:Lcom/yelp/android/ui/map/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/analytics/g;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->DirectionsToBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpRequestId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 125
    :cond_0
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 137
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddressForDrivingDirections()Ljava/lang/String;

    move-result-object v1

    .line 139
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 141
    :cond_0
    const-string/jumbo v1, "ActivityMapSingleBusiness"

    const-string/jumbo v3, "Address invalid for business, using geo location."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "geo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    :goto_0
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->startActivity(Landroid/content/Intent;)V

    .line 159
    :goto_1
    return-void

    .line 147
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "?q="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&z="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v3, "ActivityMapSingleBusiness"

    const-string/jumbo v4, "Using address for business with geo location: [%s], uri follows.\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string/jumbo v1, "ActivityMapSingleBusiness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error launching google maps intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const-string/jumbo v0, "Google Maps"

    const-string/jumbo v1, "There was a problem launching Google Maps."

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->c:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setInfoWindowListener(Lcom/yelp/android/ui/map/f;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/map/r;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getAssetForMap()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/map/r;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)Ljava/lang/Runnable;

    .line 80
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Map:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "ActivityMapSingleBusiness"

    const-string/jumbo v1, "Business could not be recovered from disk."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->finish()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->setContentView(I)V

    .line 65
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 70
    const v0, 0x7f0c0165

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/YelpMap;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->a:Lcom/yelp/android/ui/map/YelpMap;

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {p0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/content/Context;Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->a:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Lcom/yelp/android/ui/map/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 107
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->c()V

    .line 115
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :sswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->b()V

    goto :goto_1

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c02f1 -> :sswitch_0
        0x7f0c03b6 -> :sswitch_1
    .end sparse-switch
.end method
