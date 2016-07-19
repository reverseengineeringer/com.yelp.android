.class public Lcom/yelp/android/ui/activities/mutatebiz/b;
.super Lcom/yelp/android/util/q;
.source "CountryCodeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mutatebiz/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/q",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/location/Geocoder;

.field private final b:Lcom/yelp/android/appdata/LocationService;

.field private final d:Lcom/yelp/android/ui/activities/mutatebiz/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/appdata/LocationService;Lcom/yelp/android/ui/activities/mutatebiz/b$a;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/util/q;-><init>()V

    .line 35
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->a:Landroid/location/Geocoder;

    .line 36
    iput-object p2, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->b:Lcom/yelp/android/appdata/LocationService;

    .line 37
    iput-object p3, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->d:Lcom/yelp/android/ui/activities/mutatebiz/b$a;

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->b:Lcom/yelp/android/appdata/LocationService;

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->FINE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v2, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;)Landroid/util/Pair;
    :try_end_0
    .catch Lcom/yelp/android/appdata/LocationService$NoProvidersException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v7

    .line 64
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 46
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->a:Landroid/location/Geocoder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 60
    :catch_1
    move-exception v1

    .line 61
    const-string/jumbo v2, "CountryCodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ran into an error while geocoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v0, v7

    .line 64
    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/util/q;->onPostExecute(Ljava/lang/Object;)V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->d:Lcom/yelp/android/ui/activities/mutatebiz/b$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/b$a;->a(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->d:Lcom/yelp/android/ui/activities/mutatebiz/b$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/b$a;->a()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/b;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/b;->a(Ljava/lang/String;)V

    return-void
.end method
