.class public Lcom/yelp/android/services/backgroundlocation/a;
.super Ljava/lang/Object;
.source "BackgroundLocationManager.java"


# static fields
.field public static final a:J

.field public static final b:I

.field private static final c:J


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/yelp/android/services/backgroundlocation/c;

.field private final f:Lcom/yelp/android/services/backgroundlocation/b;

.field private final g:Lcom/yelp/android/appdata/c;

.field private final h:Landroid/app/AlarmManager;

.field private final i:Lcom/path/android/jobqueue/b;

.field private final j:Lcom/yelp/android/util/r;

.field private final k:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/services/backgroundlocation/a;->c:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/services/backgroundlocation/a;->a:J

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/yelp/android/services/backgroundlocation/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/services/backgroundlocation/c;Lcom/yelp/android/services/backgroundlocation/b;Lcom/yelp/android/appdata/c;Landroid/app/AlarmManager;Lcom/path/android/jobqueue/b;Lcom/yelp/android/util/r;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/yelp/android/services/backgroundlocation/a;->d:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/yelp/android/services/backgroundlocation/a;->e:Lcom/yelp/android/services/backgroundlocation/c;

    .line 65
    iput-object p3, p0, Lcom/yelp/android/services/backgroundlocation/a;->f:Lcom/yelp/android/services/backgroundlocation/b;

    .line 66
    iput-object p4, p0, Lcom/yelp/android/services/backgroundlocation/a;->g:Lcom/yelp/android/appdata/c;

    .line 67
    iput-object p5, p0, Lcom/yelp/android/services/backgroundlocation/a;->h:Landroid/app/AlarmManager;

    .line 68
    iput-object p6, p0, Lcom/yelp/android/services/backgroundlocation/a;->i:Lcom/path/android/jobqueue/b;

    .line 69
    iput-object p7, p0, Lcom/yelp/android/services/backgroundlocation/a;->j:Lcom/yelp/android/util/r;

    .line 70
    iput-object p8, p0, Lcom/yelp/android/services/backgroundlocation/a;->k:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 71
    return-void
.end method

.method private a(Landroid/location/Location;Z)V
    .locals 8

    .prologue
    .line 227
    const-string/jumbo v0, "BackgroundLocation"

    const-string/jumbo v1, "Starting job to report location to api and add new geofence."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/a;->i:Lcom/path/android/jobqueue/b;

    new-instance v1, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;-><init>(DDFZ)V

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/Job;)J

    .line 234
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 202
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/a;->d:Landroid/content/Context;

    const-class v2, Lcom/yelp/android/services/backgroundlocation/WatchDogTimerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/a;->d:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/a;->h:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/yelp/android/services/backgroundlocation/a;->j:Lcom/yelp/android/util/r;

    invoke-virtual {v2}, Lcom/yelp/android/util/r;->a()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/yelp/android/services/backgroundlocation/a;->f()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v6, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 213
    return-void
.end method

.method private f()J
    .locals 6

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/a;->g:Lcom/yelp/android/appdata/c;

    sget-wide v2, Lcom/yelp/android/services/backgroundlocation/a;->c:J

    sget-wide v4, Lcom/yelp/android/services/backgroundlocation/a;->a:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/c;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/a;->f:Lcom/yelp/android/services/backgroundlocation/b;

    sget v1, Lcom/yelp/android/services/backgroundlocation/a;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/services/backgroundlocation/b;->a(J)V

    .line 224
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 83
    const-string/jumbo v0, "BackgroundLocation"

    const-string/jumbo v1, "Starting Location tracking. adding a new geofence at current location."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/a;->d:Landroid/content/Context;

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/a;->k:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/yelp/android/services/backgroundlocation/a;->e()V

    .line 100
    invoke-direct {p0}, Lcom/yelp/android/services/backgroundlocation/a;->g()V

    goto :goto_0
.end method

.method public a(DDDI)V
    .locals 9

    .prologue
    .line 194
    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/a;->e:Lcom/yelp/android/services/backgroundlocation/c;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/yelp/android/services/backgroundlocation/c;->a(DDDI)V

    .line 195
    return-void
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/a;->g:Lcom/yelp/android/appdata/c;

    sget-wide v2, Lcom/yelp/android/services/backgroundlocation/a;->a:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/c;->c(J)V

    .line 190
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/services/backgroundlocation/a;->a(Landroid/location/Location;Z)V

    .line 133
    return-void
.end method

.method public a(Lcom/google/android/gms/location/h;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-virtual {p1}, Lcom/google/android/gms/location/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string/jumbo v0, "BackgroundLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Geofencing event error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/location/h;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/services/backgroundlocation/a;->e()V

    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/location/h;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/google/android/gms/location/h;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/f;

    .line 159
    invoke-virtual {p1}, Lcom/google/android/gms/location/h;->c()I

    move-result v1

    .line 160
    packed-switch v1, :pswitch_data_0

    .line 175
    :pswitch_0
    const-string/jumbo v0, "BackgroundLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecogonized geofence transition with code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_1
    const-string/jumbo v1, "BackgroundLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Entered geofence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :pswitch_2
    const-string/jumbo v1, "BackgroundLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exited geofence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p1}, Lcom/google/android/gms/location/h;->e()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/yelp/android/services/backgroundlocation/a;->a(Landroid/location/Location;Z)V

    goto :goto_0

    .line 170
    :pswitch_3
    const-string/jumbo v1, "BackgroundLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Idle in geofence "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/location/h;->e()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/services/backgroundlocation/a;->a(Landroid/location/Location;Z)V

    goto/16 :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/a;->e:Lcom/yelp/android/services/backgroundlocation/c;

    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/c;->a()V

    .line 106
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/a;->d:Landroid/content/Context;

    const-class v2, Lcom/yelp/android/services/backgroundlocation/WatchDogTimerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/a;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/a;->h:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 112
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "BackgroundLocation"

    const-string/jumbo v1, "Watchdog restarting tracking."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/services/backgroundlocation/a;->a()V

    .line 122
    return-void
.end method

.method public d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/yelp/android/services/backgroundlocation/a;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/backgroundlocation/a;->d:Landroid/content/Context;

    const v3, 0x7f0706ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/experiment/e;->k:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
