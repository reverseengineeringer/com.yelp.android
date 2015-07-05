.class public Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;
.super Lcom/yelp/android/ui/activities/support/YelpMapActivity;
.source "ActivityMapForEvent.java"


# instance fields
.field private a:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/serializable/Event;

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
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/yelp/android/ui/activities/events/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/a;-><init>(Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->c:Lcom/yelp/android/ui/map/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string/jumbo v1, "extra.event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b:Lcom/yelp/android/serializable/Event;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b:Lcom/yelp/android/serializable/Event;

    invoke-static {p0, v0}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;)V

    .line 127
    :cond_0
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b:Lcom/yelp/android/serializable/Event;

    .line 134
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 136
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    const-string/jumbo v1, "ActivityMapForEvent"

    const-string/jumbo v3, "Address invalid for event, using geo location."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "geo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getLongitude()D

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

    .line 142
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 152
    :goto_0
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->startActivity(Landroid/content/Intent;)V

    .line 158
    :goto_1
    return-void

    .line 145
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getLongitude()D

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

    .line 147
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v3, "ActivityMapForEvent"

    const-string/jumbo v4, "Using address for event with geo location: [%s], uri follows.\n%s"

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

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string/jumbo v1, "ActivityMapForEvent"

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

    .line 155
    const v0, 0x7f0702c7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0702ca

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b:Lcom/yelp/android/serializable/Event;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/map/r;

    const v3, 0x7f02028c

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/map/r;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)Ljava/lang/Runnable;

    .line 85
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Map:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b:Lcom/yelp/android/serializable/Event;

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b:Lcom/yelp/android/serializable/Event;

    if-nez v0, :cond_0

    .line 63
    const-string/jumbo v0, "ActivityMapForEvent"

    const-string/jumbo v1, "Event could not be recovered from intent."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->finish()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->setContentView(I)V

    .line 71
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 76
    const v0, 0x7f0c0165

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/YelpMap;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->a:Lcom/yelp/android/ui/map/YelpMap;

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {p0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/content/Context;Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->a:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Lcom/yelp/android/ui/map/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/map/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 118
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 112
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->c()V

    .line 120
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :sswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->b()V

    goto :goto_1

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c02f1 -> :sswitch_0
        0x7f0c03b6 -> :sswitch_1
    .end sparse-switch
.end method
