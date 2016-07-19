.class public Lcom/yelp/android/appdata/h;
.super Lcom/yelp/android/appdata/LocationService;
.source "GooglePlayLocationService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field b:Lcom/google/android/gms/location/e;

.field protected final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/yelp/android/appdata/LocationService$a;",
            "Lcom/google/android/gms/location/j;",
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
            "Lcom/google/android/gms/location/j;",
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
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/appdata/LocationService;-><init>()V

    .line 38
    sget-object v0, Lcom/google/android/gms/location/l;->b:Lcom/google/android/gms/location/e;

    iput-object v0, p0, Lcom/yelp/android/appdata/h;->b:Lcom/google/android/gms/location/e;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/h;->e:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/yelp/android/appdata/h$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/h$1;-><init>(Lcom/yelp/android/appdata/h;)V

    .line 70
    new-instance v1, Lcom/yelp/android/appdata/h$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/h$2;-><init>(Lcom/yelp/android/appdata/h;)V

    .line 78
    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/android/gms/location/l;->a:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/h;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 85
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yelp/android/appdata/h;->g:Landroid/location/LocationManager;

    .line 86
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/h;->c:Ljava/util/WeakHashMap;

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/h;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/appdata/h;)Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/appdata/h;->e()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/appdata/h;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    return-object v0
.end method

.method private e()Lcom/google/android/gms/location/LocationRequest;
    .locals 4

    .prologue
    .line 267
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 268
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    .line 271
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    .line 272
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/LocationService$NoProvidersException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/appdata/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/yelp/android/appdata/LocationService$NoProvidersException;

    invoke-direct {v0}, Lcom/yelp/android/appdata/LocationService$NoProvidersException;-><init>()V

    throw v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/h;->c()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    .line 137
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    iget-object v2, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    invoke-virtual {p0, p1, p2, v2}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V
    .locals 6

    .prologue
    .line 146
    const-wide/16 v4, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;J)V

    .line 147
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;J)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
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

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/appdata/h;->c()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    .line 167
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 168
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Current best location: %s oldness: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/yelp/android/appdata/LocationService$Recentness;->getOldness(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/appdata/h;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Location already good"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->f:Landroid/location/Location;

    invoke-interface {p3, v0, v7}, Lcom/yelp/android/appdata/LocationService$a;->a(Landroid/location/Location;Z)V

    .line 264
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/appdata/h;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    invoke-interface {p3}, Lcom/yelp/android/appdata/LocationService$a;->a()Z

    goto :goto_0

    .line 193
    :cond_2
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Start waiting for location"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 201
    new-instance v6, Lcom/yelp/android/appdata/h$3;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/yelp/android/appdata/h$3;-><init>(Lcom/yelp/android/appdata/h;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V

    .line 229
    invoke-virtual {v5, v6, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    new-instance v0, Lcom/yelp/android/appdata/h$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/h$4;-><init>(Lcom/yelp/android/appdata/h;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 256
    iget-object v1, p0, Lcom/yelp/android/appdata/h;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/yelp/android/appdata/h;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/yelp/android/appdata/h;->b:Lcom/google/android/gms/location/e;

    iget-object v2, p0, Lcom/yelp/android/appdata/h;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Lcom/yelp/android/appdata/h;->e()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/j;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0

    .line 261
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/appdata/h;->e:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$a;)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/j;

    .line 278
    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/yelp/android/appdata/h;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/yelp/android/appdata/h;->b:Lcom/google/android/gms/location/e;

    iget-object v2, p0, Lcom/yelp/android/appdata/h;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/j;)Lcom/google/android/gms/common/api/PendingResult;

    .line 298
    :cond_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/appdata/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 290
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 292
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 293
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->g:Landroid/location/LocationManager;

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

    .line 101
    iget-object v2, p0, Lcom/yelp/android/appdata/h;->g:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "passive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/yelp/android/appdata/h;->a()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/location/Location;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->b:Lcom/google/android/gms/location/e;

    iget-object v1, p0, Lcom/yelp/android/appdata/h;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
