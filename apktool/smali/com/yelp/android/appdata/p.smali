.class public Lcom/yelp/android/appdata/p;
.super Lcom/yelp/android/appdata/LocationService;
.source "StatefulLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/p$d;,
        Lcom/yelp/android/appdata/p$b;,
        Lcom/yelp/android/appdata/p$a;,
        Lcom/yelp/android/appdata/p$c;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/yelp/android/appdata/LocationService$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/appdata/p$a;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/appdata/p$c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/location/LocationManager;

.field private final f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private final h:Lcom/yelp/android/appdata/StateBroadcastReceiver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/appdata/LocationService;-><init>()V

    .line 42
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yelp/android/appdata/p;->e:Landroid/location/LocationManager;

    .line 43
    invoke-static {p1, p0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/StateBroadcastReceiver$a;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/p;->h:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->e:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    iget-object v3, p0, Lcom/yelp/android/appdata/p;->e:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/p$a;

    new-instance v2, Lcom/yelp/android/appdata/p$b;

    invoke-direct {v2, v1}, Lcom/yelp/android/appdata/p$b;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Lcom/yelp/android/appdata/p$a;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/p;->b:Lcom/yelp/android/appdata/p$a;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/p;->c:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->e:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    new-instance v2, Lcom/yelp/android/appdata/p$c;

    iget-object v3, p0, Lcom/yelp/android/appdata/p;->e:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/yelp/android/appdata/p;->b:Lcom/yelp/android/appdata/p$a;

    invoke-direct {v2, v3, v0, v4}, Lcom/yelp/android/appdata/p$c;-><init>(Landroid/location/LocationManager;Ljava/lang/String;Lcom/yelp/android/appdata/p$a;)V

    .line 56
    invoke-virtual {v2}, Lcom/yelp/android/appdata/p$c;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {v2}, Lcom/yelp/android/appdata/p$c;->c()V

    .line 60
    iget-object v3, p0, Lcom/yelp/android/appdata/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v2, p0, Lcom/yelp/android/appdata/p;->e:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    iget-object v2, p0, Lcom/yelp/android/appdata/p;->b:Lcom/yelp/android/appdata/p$a;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/p$a;->a(Landroid/location/Location;)V

    goto :goto_1

    .line 68
    :cond_2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/p;->a:Ljava/util/WeakHashMap;

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/p;->f:Ljava/util/WeakHashMap;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/p;J)J
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/yelp/android/appdata/p;->g:J

    return-wide p1
.end method

.method private a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;J)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/LocationService$Accuracies;",
            "Lcom/yelp/android/appdata/LocationService$Recentness;",
            "J)",
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
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 166
    const-string/jumbo v0, "LOCDEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ": Blocking request acc:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/appdata/LocationService$Accuracies;->getMeters()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " rec:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/LocationService$Recentness;->getMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/yelp/android/appdata/p;->d:J

    sub-long/2addr v0, v4

    .line 171
    cmp-long v4, v0, p3

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 173
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/p;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    new-instance v0, Lcom/yelp/android/appdata/LocationService$NoProvidersException;

    invoke-direct {v0}, Lcom/yelp/android/appdata/LocationService$NoProvidersException;-><init>()V

    throw v0

    .line 171
    :cond_0
    sub-long v0, p3, v0

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/appdata/p;->c()Landroid/location/Location;

    move-result-object v4

    .line 178
    const-string/jumbo v5, "LOCDEBUG"

    const-string/jumbo v6, "Start Sync Loop"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v9, v4

    move-wide v4, v0

    move-object v0, v9

    .line 179
    :goto_1
    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/yelp/android/appdata/p;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    const-wide/16 v0, 0x14d

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/yelp/android/appdata/p;->d:J

    sub-long/2addr v0, v4

    sub-long v4, p3, v0

    .line 182
    invoke-virtual {p0}, Lcom/yelp/android/appdata/p;->c()Landroid/location/Location;

    move-result-object v0

    goto :goto_1

    .line 184
    :cond_2
    const-string/jumbo v1, "LOCDEBUG"

    const-string/jumbo v2, "End Sync Loop"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/p;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;J)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/LocationService$NoProvidersException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;J)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/p;)Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->f:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/appdata/p;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 288
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const-string/jumbo v0, "Registering Backgrounder"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 294
    iget-wide v0, p0, Lcom/yelp/android/appdata/p;->g:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/appdata/p;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/appdata/p;->d()V

    .line 298
    :cond_0
    iput-wide v4, p0, Lcom/yelp/android/appdata/p;->g:J

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->f:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-direct {p0}, Lcom/yelp/android/appdata/p;->f()V

    .line 302
    return-void
.end method

.method private e()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->b:Lcom/yelp/android/appdata/p$a;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/p$a;->b()Z

    move-result v4

    .line 277
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 278
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/appdata/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/p$c;

    .line 279
    const-string/jumbo v6, "passive"

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->a(Lcom/yelp/android/appdata/p$c;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 280
    invoke-virtual {v0}, Lcom/yelp/android/appdata/p$c;->a()Z

    move-result v0

    or-int/2addr v0, v3

    :goto_2
    move v3, v0

    .line 282
    goto :goto_1

    :cond_0
    move v0, v2

    .line 277
    goto :goto_0

    .line 284
    :cond_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    :goto_3
    return v1

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method private f()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 308
    new-instance v1, Lcom/yelp/android/appdata/p$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/p$2;-><init>(Lcom/yelp/android/appdata/p;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/p$c;

    .line 324
    invoke-virtual {v0}, Lcom/yelp/android/appdata/p$c;->b()Z

    goto :goto_0
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
    .line 145
    const-wide/16 v0, 0x1f40

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;J)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/p;->d(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V
    .locals 6

    .prologue
    .line 202
    const-wide/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;J)V

    .line 203
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;J)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 223
    const-string/jumbo v0, "LOCDEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Async location request: accuracy: "

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

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v0, Lcom/yelp/android/appdata/p$d;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/yelp/android/appdata/p$d;-><init>(Lcom/yelp/android/appdata/p;Lcom/yelp/android/appdata/LocationService$a;J)V

    .line 234
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/p$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 237
    new-instance v1, Lcom/yelp/android/appdata/p$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yelp/android/appdata/p$1;-><init>(Lcom/yelp/android/appdata/p;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V

    .line 266
    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/LocationService$a;)V
    .locals 3

    .prologue
    .line 271
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Cancelling Async Callback."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method public a()Z
    .locals 5

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/yelp/android/appdata/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/p$c;

    .line 91
    const-string/jumbo v3, "passive"

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->a(Lcom/yelp/android/appdata/p$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/yelp/android/appdata/p;->e:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->a(Lcom/yelp/android/appdata/p$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 80
    invoke-direct {p0}, Lcom/yelp/android/appdata/p;->f()V

    .line 81
    return-void
.end method

.method public b()Z
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/appdata/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/p$c;

    .line 103
    const-string/jumbo v3, "passive"

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->a(Lcom/yelp/android/appdata/p$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/yelp/android/appdata/p;->e:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/yelp/android/appdata/p$c;->a(Lcom/yelp/android/appdata/p$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v1

    :goto_2
    move v1, v0

    .line 106
    goto :goto_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public c()Landroid/location/Location;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/appdata/p;->b:Lcom/yelp/android/appdata/p$a;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/p$a;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
