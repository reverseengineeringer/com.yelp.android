.class public Lcom/yelp/android/appdata/s;
.super Lcom/yelp/android/appdata/LocationService;
.source "GooglePlayLocationService.java"


# instance fields
.field a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field b:Lcom/google/android/gms/location/FusedLocationProviderApi;

.field protected final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/yelp/android/appdata/aa;",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/location/Location;

.field private final g:Landroid/location/LocationManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yelp/android/appdata/LocationService;-><init>()V

    .line 34
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iput-object v0, p0, Lcom/yelp/android/appdata/s;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/s;->e:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/yelp/android/appdata/t;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/t;-><init>(Lcom/yelp/android/appdata/s;)V

    .line 63
    new-instance v1, Lcom/yelp/android/appdata/u;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/u;-><init>(Lcom/yelp/android/appdata/s;)V

    .line 70
    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 76
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yelp/android/appdata/s;->g:Landroid/location/LocationManager;

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/s;->c:Ljava/util/WeakHashMap;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/s;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/s;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/appdata/s;)Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/appdata/s;->f()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/appdata/s;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    return-object v0
.end method

.method private f()Lcom/google/android/gms/location/LocationRequest;
    .locals 4

    .prologue
    .line 239
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 240
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 243
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 244
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;)Landroid/util/Pair;
    .locals 3
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

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/appdata/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/yelp/android/appdata/LocationService$NoProvidersException;

    invoke-direct {v0}, Lcom/yelp/android/appdata/LocationService$NoProvidersException;-><init>()V

    throw v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/s;->c()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    .line 128
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    iget-object v2, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    invoke-virtual {p0, p1, p2, v2}, Lcom/yelp/android/appdata/s;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    .line 277
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockLocation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;)V
    .locals 6

    .prologue
    .line 135
    const-wide/16 v4, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/appdata/s;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;J)V

    .line 136
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;J)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    const-string/jumbo v0, "LOCDEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request to Google Play Location: accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/appdata/LocationService$Accuracies;->getMeters()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " recentness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/LocationService$Recentness;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/appdata/s;->c()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    .line 148
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Current best location: %s oldness: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/yelp/android/appdata/LocationService$Recentness;->getOldness(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/appdata/s;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Location already good"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->f:Landroid/location/Location;

    invoke-interface {p3, v0, v7}, Lcom/yelp/android/appdata/aa;->a(Landroid/location/Location;Z)V

    .line 236
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/appdata/s;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-interface {p3}, Lcom/yelp/android/appdata/aa;->a()Z

    goto :goto_0

    .line 172
    :cond_2
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Start waiting for location"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 180
    new-instance v6, Lcom/yelp/android/appdata/v;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/yelp/android/appdata/v;-><init>(Lcom/yelp/android/appdata/s;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;)V

    .line 204
    invoke-virtual {v5, v6, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    new-instance v0, Lcom/yelp/android/appdata/w;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/w;-><init>(Lcom/yelp/android/appdata/s;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 228
    iget-object v1, p0, Lcom/yelp/android/appdata/s;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/yelp/android/appdata/s;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Lcom/yelp/android/appdata/s;->f()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/appdata/s;->e:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/aa;)V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationListener;

    .line 250
    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/yelp/android/appdata/s;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 270
    :cond_0
    return-void

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/appdata/s;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 262
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 264
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 265
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->g:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/yelp/android/appdata/s;->g:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "passive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/appdata/s;->a()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/location/Location;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/appdata/s;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/yelp/android/appdata/s;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
