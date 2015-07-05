.class public abstract Lcom/yelp/android/appdata/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/yelp/android/appdata/ar;


# instance fields
.field protected d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/LocationService;->d:J

    .line 80
    return-void
.end method

.method public static final c(Landroid/content/Context;)Lcom/yelp/android/appdata/LocationService;
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/yelp/android/appdata/s;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/s;-><init>(Landroid/content/Context;)V

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/as;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/as;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;)Landroid/util/Pair;
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
.end method

.method protected a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p1, p3}, Lcom/yelp/android/appdata/LocationService$Accuracies;->satisfies(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lcom/yelp/android/appdata/LocationService$Recentness;->satisfies(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;)V
.end method

.method public abstract a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;J)V
.end method

.method public abstract a(Lcom/yelp/android/appdata/aa;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Landroid/location/Location;
.end method

.method public abstract d()V
.end method

.method public e()V
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/LocationService;->d:J

    .line 160
    return-void
.end method
