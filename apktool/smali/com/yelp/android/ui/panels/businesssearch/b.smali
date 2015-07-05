.class Lcom/yelp/android/ui/panels/businesssearch/b;
.super Lcom/yelp/android/ui/util/x;
.source "BusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/x",
        "<TT;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/f;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 513
    invoke-interface {p2}, Lcom/yelp/android/ui/panels/businesssearch/f;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    .line 514
    if-nez v3, :cond_0

    move-object v0, v2

    .line 530
    :goto_0
    return-object v0

    .line 517
    :cond_0
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 518
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;)Z

    move-result v1

    .line 519
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 520
    iget-object v5, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v6, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-static {v6}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)Landroid/location/Location;

    move-result-object v6

    if-nez v6, :cond_1

    :goto_1
    invoke-static {v5, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;Landroid/location/Location;)Landroid/location/Location;

    .line 521
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDistance(Landroid/location/Location;)D

    move-result-wide v0

    .line 525
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)Landroid/location/Location;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v3, v0, p1, v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDistanceFormatted(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)Landroid/location/Location;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/util/StringUtils$Format;->VERBOSE:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v3, v1, p1, v2}, Lcom/yelp/android/serializable/YelpBusiness;->getDistanceFormatted(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)Landroid/location/Location;

    move-result-object v0

    goto :goto_1

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDistance(Landroid/location/Location;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/yelp/android/util/o;->e(D)D

    move-result-wide v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 530
    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 509
    check-cast p2, Lcom/yelp/android/ui/panels/businesssearch/f;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/f;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
