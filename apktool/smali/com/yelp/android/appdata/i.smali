.class public Lcom/yelp/android/appdata/i;
.super Lcom/yelp/android/appdata/LocationService;
.source "NoPermissionLocationService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/appdata/LocationService;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/LocationService$Accuracies;",
            "Lcom/yelp/android/appdata/LocationService$Recentness;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/location/Location;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/LocationService$NoProvidersException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V
    .locals 0

    .prologue
    .line 41
    invoke-interface {p3}, Lcom/yelp/android/appdata/LocationService$a;->a()Z

    .line 42
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;J)V
    .locals 0

    .prologue
    .line 47
    invoke-interface {p3}, Lcom/yelp/android/appdata/LocationService$a;->a()Z

    .line 48
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$a;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/location/Location;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
