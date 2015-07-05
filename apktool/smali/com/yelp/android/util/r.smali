.class public Lcom/yelp/android/util/r;
.super Ljava/lang/Object;
.source "NavigationUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;DD)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;)Z

    move-result v0

    .line 56
    if-eqz v0, :cond_0

    const-string/jumbo v0, "ptk"

    .line 57
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "http://maps.google.com/maps?f=d&daddr=%s+@%f,%f&doflg=%s&navigate=yes"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    return-object v1

    .line 56
    :cond_0
    const-string/jumbo v0, "ptm"

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/r;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;)V
    .locals 6

    .prologue
    .line 65
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->OpenMapsApp:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "address"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/String;DD)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 6

    .prologue
    .line 71
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->OpenMapsApp:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "biz_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getAddressForDrivingDirections()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Ljava/lang/String;DD)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
