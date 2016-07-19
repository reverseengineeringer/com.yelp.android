.class public Lcom/yelp/android/services/backgroundlocation/c;
.super Ljava/lang/Object;
.source "GeofenceHandler.java"


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private d:Lcom/google/android/gms/common/api/ResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/yelp/android/services/backgroundlocation/c;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Lcom/yelp/android/services/backgroundlocation/c$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/backgroundlocation/c$4;-><init>(Lcom/yelp/android/services/backgroundlocation/c;)V

    iput-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c;->d:Lcom/google/android/gms/common/api/ResultCallback;

    .line 44
    iput-object p1, p0, Lcom/yelp/android/services/backgroundlocation/c;->b:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/services/backgroundlocation/c;)Lcom/google/android/gms/common/api/ResultCallback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c;->d:Lcom/google/android/gms/common/api/ResultCallback;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/location/f;)Lcom/google/android/gms/location/GeofencingRequest;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/gms/location/GeofencingRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/location/GeofencingRequest$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/GeofencingRequest$a;->a(Lcom/google/android/gms/location/f;)Lcom/google/android/gms/location/GeofencingRequest$a;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/GeofencingRequest$a;->a(I)Lcom/google/android/gms/location/GeofencingRequest$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingRequest$a;->a()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string/jumbo v0, "BackgroundLocation"

    const-string/jumbo v1, "Connecting to Google apis."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/yelp/android/services/backgroundlocation/c$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/backgroundlocation/c$3;-><init>(Lcom/yelp/android/services/backgroundlocation/c;)V

    .line 193
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/yelp/android/services/backgroundlocation/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/location/l;->a:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 200
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 166
    const-string/jumbo v0, "BackgroundLocation"

    const-string/jumbo v1, "Connected to Google apis adding geofence."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 167
    sget-object v0, Lcom/google/android/gms/location/l;->c:Lcom/google/android/gms/location/g;

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/c;->d:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/services/backgroundlocation/c;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/services/backgroundlocation/c;->a(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/services/backgroundlocation/c;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private b(DDDI)Lcom/google/android/gms/location/f;
    .locals 7

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/gms/location/f$a;

    invoke-direct {v0}, Lcom/google/android/gms/location/f$a;-><init>()V

    sget v1, Lcom/yelp/android/services/backgroundlocation/c;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/f$a;->b(I)Lcom/google/android/gms/location/f$a;

    move-result-object v0

    const-string/jumbo v1, "yelp_android_geofence"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/f$a;->a(Ljava/lang/String;)Lcom/google/android/gms/location/f$a;

    move-result-object v1

    double-to-float v6, p5

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/f$a;->a(DDF)Lcom/google/android/gms/location/f$a;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/google/android/gms/location/f$a;->c(I)Lcom/google/android/gms/location/f$a;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/f$a;->a(J)Lcom/google/android/gms/location/f$a;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/f$a;->a(I)Lcom/google/android/gms/location/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/f$a;->a()Lcom/google/android/gms/location/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 93
    const-string/jumbo v0, "BackgroundLocation"

    const-string/jumbo v1, "Stopping geofence monitoring"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/google/android/gms/location/l;->c:Lcom/google/android/gms/location/g;

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "yelp_android_geofence"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/c;->d:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 120
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/yelp/android/services/backgroundlocation/c$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/backgroundlocation/c$2;-><init>(Lcom/yelp/android/services/backgroundlocation/c;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/services/backgroundlocation/c;->a(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0
.end method

.method public a(DDDI)V
    .locals 7

    .prologue
    .line 55
    const-string/jumbo v0, "BackgroundLocation"

    const-string/jumbo v1, "Adding geofence to system."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 56
    invoke-direct/range {p0 .. p7}, Lcom/yelp/android/services/backgroundlocation/c;->b(DDDI)Lcom/google/android/gms/location/f;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/yelp/android/services/backgroundlocation/c;->a(Lcom/google/android/gms/location/f;)Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/c;->b:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/yelp/android/services/backgroundlocation/c;->b:Landroid/content/Context;

    const-class v5, Lcom/yelp/android/services/backgroundlocation/GeofenceTransitionService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yelp/android/services/backgroundlocation/c;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/services/backgroundlocation/c;->a(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V

    .line 87
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v2, Lcom/yelp/android/services/backgroundlocation/c$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/services/backgroundlocation/c$1;-><init>(Lcom/yelp/android/services/backgroundlocation/c;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v2}, Lcom/yelp/android/services/backgroundlocation/c;->a(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0
.end method
