.class public abstract Lcom/yelp/android/appdata/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/yelp/android/appdata/StateBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/LocationService$NoProvidersException;,
        Lcom/yelp/android/appdata/LocationService$a;,
        Lcom/yelp/android/appdata/LocationService$AccuracyUnit;,
        Lcom/yelp/android/appdata/LocationService$Recentness;,
        Lcom/yelp/android/appdata/LocationService$Accuracies;
    }
.end annotation


# instance fields
.field protected d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/LocationService;->d:J

    .line 101
    return-void
.end method

.method public static final c(Landroid/content/Context;)Lcom/yelp/android/appdata/LocationService;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/yelp/android/appdata/i;

    invoke-direct {v0}, Lcom/yelp/android/appdata/i;-><init>()V

    .line 95
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/yelp/android/appdata/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/p;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/p;-><init>(Landroid/content/Context;)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/LocationService$NoProvidersException;
        }
    .end annotation
.end method

.method protected a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p1, p3}, Lcom/yelp/android/appdata/LocationService$Accuracies;->satisfies(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lcom/yelp/android/appdata/LocationService$Recentness;->satisfies(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V
.end method

.method public abstract a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;J)V
.end method

.method public abstract a(Lcom/yelp/android/appdata/LocationService$a;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Landroid/location/Location;
.end method

.method public d()V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/LocationService;->d:J

    .line 181
    return-void
.end method
