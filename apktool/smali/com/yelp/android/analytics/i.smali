.class public Lcom/yelp/android/analytics/i;
.super Ljava/lang/Object;
.source "IriUtils.java"


# static fields
.field static final a:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/yelp/android/analytics/iris/ViewIri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/yelp/android/analytics/iris/EventIri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/i;->a:[Ljava/lang/Class;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/analytics/h;)V
    .locals 8

    .prologue
    .line 52
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    .line 58
    :goto_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/yelp/android/util/o;->d(D)D

    move-result-wide v2

    .line 65
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 66
    const-string/jumbo v4, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v4, "long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v0, "accuracy"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v0, "efs"

    invoke-static {v1}, Lcom/yelp/android/util/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    .line 72
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/yelp/android/appdata/LocationService;->c(Landroid/content/Context;)Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    goto :goto_0
.end method
