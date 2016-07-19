.class public Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "LocationUploadJob.java"


# static fields
.field private static final a:J


# instance fields
.field private mAccuracy:F

.field private mIsStationary:Z

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->a:J

    return-void
.end method

.method public constructor <init>(DDFZ)V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/path/android/jobqueue/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->b()Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->a()Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/d;)V

    .line 38
    iput-wide p1, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLatitude:D

    .line 39
    iput-wide p3, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLongitude:D

    .line 40
    iput p5, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mAccuracy:F

    .line 41
    iput-boolean p6, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mIsStationary:Z

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 81
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    if-ne p1, p0, :cond_2

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 93
    check-cast p1, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;

    .line 95
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-wide v2, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLatitude:D

    iget-wide v4, p1, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLatitude:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLongitude:D

    iget-wide v4, p1, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLongitude:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mAccuracy:F

    iget v2, p1, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mAccuracy:F

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(FF)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mIsStationary:Z

    iget-boolean v2, p1, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mIsStationary:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-wide v2, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mAccuracy:F

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(F)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mIsStationary:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public onRun()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->getTimeSinceCreation()J

    move-result-wide v0

    sget-wide v2, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 52
    :cond_0
    :try_start_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/n;

    iget-wide v2, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLatitude:D

    iget-wide v4, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mLongitude:D

    iget v6, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mAccuracy:F

    iget-boolean v7, p0, Lcom/yelp/android/services/backgroundlocation/LocationUploadJob;->mIsStationary:Z

    invoke-direct/range {v1 .. v7}, Lcom/yelp/android/appdata/webrequests/n;-><init>(DDFZ)V

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/n;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BackgroundLocationResponse;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BackgroundLocationResponse;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BackgroundLocationResponse;->c()Lcom/yelp/android/serializable/YelpGeofence;

    move-result-object v6

    .line 67
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpGeofence;->c()D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpGeofence;->b()D

    move-result-wide v4

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpGeofence;->a()D

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BackgroundLocationResponse;->a()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {v1 .. v8}, Lcom/yelp/android/services/backgroundlocation/a;->a(DDDI)V

    .line 72
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BackgroundLocationResponse;->a()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/services/backgroundlocation/a;->a(J)V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string/jumbo v1, "BackgroundLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to run LocationUploadJob with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    throw v0

    .line 75
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/services/backgroundlocation/a;->b()V

    goto :goto_0
.end method
