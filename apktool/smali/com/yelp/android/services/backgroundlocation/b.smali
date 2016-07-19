.class public Lcom/yelp/android/services/backgroundlocation/b;
.super Ljava/lang/Object;
.source "FusedLocationHandler.java"


# instance fields
.field private a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private b:Lcom/google/android/gms/location/e;

.field private c:Landroid/content/Context;

.field private d:J

.field private e:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private f:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/google/android/gms/location/l;->b:Lcom/google/android/gms/location/e;

    iput-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b;->b:Lcom/google/android/gms/location/e;

    .line 94
    new-instance v0, Lcom/yelp/android/services/backgroundlocation/b$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/backgroundlocation/b$1;-><init>(Lcom/yelp/android/services/backgroundlocation/b;)V

    iput-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b;->e:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 107
    new-instance v0, Lcom/yelp/android/services/backgroundlocation/b$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/backgroundlocation/b$2;-><init>(Lcom/yelp/android/services/backgroundlocation/b;)V

    iput-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b;->f:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 38
    iput-object p1, p0, Lcom/yelp/android/services/backgroundlocation/b;->c:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Intent;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method private a()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/b;->c:Landroid/content/Context;

    const-class v2, Lcom/yelp/android/services/backgroundlocation/FusedLocationProviderService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/b;->b:Lcom/google/android/gms/location/e;

    iget-object v2, p0, Lcom/yelp/android/services/backgroundlocation/b;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    const-string/jumbo v2, "BackgroundLocation"

    const-string/jumbo v3, "Using already available location."

    invoke-static {v2, v3}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 71
    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/b;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string/jumbo v1, "BackgroundLocation"

    const-string/jumbo v2, "Location not available, registering for location updates."

    invoke-static {v1, v2}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 83
    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->b(I)Lcom/google/android/gms/location/LocationRequest;

    .line 85
    iget-wide v2, p0, Lcom/yelp/android/services/backgroundlocation/b;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    .line 87
    iget-object v2, p0, Lcom/yelp/android/services/backgroundlocation/b;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/yelp/android/services/backgroundlocation/b;->b:Lcom/google/android/gms/location/e;

    iget-object v3, p0, Lcom/yelp/android/services/backgroundlocation/b;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v1, v0}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/services/backgroundlocation/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/services/backgroundlocation/b;->a()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/yelp/android/services/backgroundlocation/b;->a()V

    goto :goto_0

    .line 49
    :cond_1
    iput-wide p1, p0, Lcom/yelp/android/services/backgroundlocation/b;->d:J

    .line 50
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/b;->e:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/b;->f:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/l;->a:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 57
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method
