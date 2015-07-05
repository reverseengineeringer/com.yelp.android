.class Lcom/yelp/android/ui/activities/mutatebiz/c;
.super Lcom/yelp/android/ui/util/BackgroundTaskFragment;
.source "AddAddressFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/BackgroundTaskFragment",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    iget-boolean v0, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Landroid/location/Address;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    :cond_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    .line 498
    :try_start_0
    sget-object v2, Lcom/yelp/android/appdata/LocationService$Accuracies;->FINE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;)Landroid/util/Pair;
    :try_end_0
    .catch Lcom/yelp/android/appdata/LocationService$NoProvidersException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 506
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 507
    if-nez v0, :cond_2

    .line 550
    :goto_1
    return-object v7

    .line 492
    :cond_1
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 502
    const-string/jumbo v1, "There seem to be no providers at the moment"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 511
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Geocoder;

    .line 516
    :try_start_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 519
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    :try_start_2
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 521
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 526
    invoke-virtual {v1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-lez v2, :cond_6

    .line 527
    invoke-virtual {v1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    .line 529
    :goto_3
    invoke-virtual {v1, v2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "HK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 535
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 536
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 540
    :cond_3
    const/4 v2, 0x1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 548
    :cond_4
    :goto_4
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 544
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    .line 545
    :goto_5
    const-string/jumbo v3, "Ran into an error while geocoding %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v10

    aput-object v2, v4, v11

    invoke-static {p0, v3, v4}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-object v7, v8

    .line 550
    goto/16 :goto_1

    .line 544
    :catch_2
    move-exception v2

    goto :goto_5

    :cond_6
    move-object v2, v7

    goto :goto_3

    :cond_7
    move-object v1, v7

    goto :goto_4
.end method

.method protected synthetic b([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/c;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
