.class Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;
.super Landroid/os/AsyncTask;
.source "ChangeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/settings/ChangeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

.field private final b:Landroid/location/Geocoder;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Landroid/location/Geocoder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 505
    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->b:Landroid/location/Geocoder;

    .line 506
    iput-object p3, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->c:Ljava/lang/String;

    .line 507
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 511
    .line 515
    if-eqz p1, :cond_2

    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, p1, v1

    if-eqz v1, :cond_2

    .line 516
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->b:Landroid/location/Geocoder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 528
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 529
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 531
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Lcom/yelp/android/appdata/webrequests/dr;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 532
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Lcom/yelp/android/appdata/webrequests/dr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/dr;->a(Z)V

    .line 533
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Lcom/yelp/android/appdata/webrequests/dr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/dr;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 536
    :cond_1
    iget-object v7, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/dr;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->c:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/k$b;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/yelp/android/appdata/webrequests/dr;-><init>(DDLcom/yelp/android/appdata/webrequests/k$b;)V

    invoke-static {v7, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Lcom/yelp/android/appdata/webrequests/dr;)Lcom/yelp/android/appdata/webrequests/dr;

    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Lcom/yelp/android/appdata/webrequests/dr;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dr;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 542
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 550
    :goto_1
    return-object v0

    .line 520
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v4

    .line 521
    if-eqz v4, :cond_0

    .line 522
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->b:Landroid/location/Geocoder;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_3
    const-string/jumbo v0, "ChangeSettings"

    const-string/jumbo v1, "Location is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 545
    :catch_0
    move-exception v0

    .line 546
    const-string/jumbo v1, "ChangeSettings"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()V

    .line 557
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->f()V

    .line 558
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 560
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 499
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 499
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
