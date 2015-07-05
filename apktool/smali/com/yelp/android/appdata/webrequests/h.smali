.class public abstract Lcom/yelp/android/appdata/webrequests/h;
.super Lcom/yelp/android/av/g;
.source "ApiLocationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/av/g",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCATION_TIMEOUT:J = 0x1f40L

.field static final METERS_IN_A_MILE:F = 1609.344f


# instance fields
.field private final mAccuracy:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field private mAccuracyKey:Ljava/lang/String;

.field private mLatitudeKey:Ljava/lang/String;

.field protected mLocation:Landroid/location/Location;

.field private final mLocationCallback:Lcom/yelp/android/appdata/webrequests/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/i",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private final mLocationService:Lcom/yelp/android/appdata/LocationService;

.field private mLocationTimeout:J

.field private mLongitudeKey:Ljava/lang/String;

.field private final mRecentness:Lcom/yelp/android/appdata/LocationService$Recentness;

.field private final mUnit:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

.field private mWaitingForLocation:Z


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/LocationService$Accuracies;",
            "Lcom/yelp/android/appdata/LocationService$Recentness;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<TResult;>;",
            "Lcom/yelp/android/appdata/LocationService$AccuracyUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p5}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 53
    const-string/jumbo v0, "latitude"

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLatitudeKey:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "longitude"

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLongitudeKey:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "accuracy"

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mAccuracyKey:Ljava/lang/String;

    .line 58
    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationTimeout:J

    .line 79
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationService:Lcom/yelp/android/appdata/LocationService;

    .line 80
    const-string/jumbo v0, "LOCDEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/yelp/android/appdata/LocationService$Accuracies;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " recentness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/yelp/android/appdata/LocationService$Recentness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/h;->mAccuracy:Lcom/yelp/android/appdata/LocationService$Accuracies;

    .line 82
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/h;->mRecentness:Lcom/yelp/android/appdata/LocationService$Recentness;

    .line 83
    iput-object p6, p0, Lcom/yelp/android/appdata/webrequests/h;->mUnit:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    .line 84
    new-instance v0, Lcom/yelp/android/appdata/webrequests/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/i;-><init>(Lcom/yelp/android/appdata/webrequests/h;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationCallback:Lcom/yelp/android/appdata/webrequests/i;

    .line 85
    return-void
.end method


# virtual methods
.method protected addLocationToUrl(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLatitudeKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/h;->addObfuscatedUrlParam(Ljava/lang/String;D)V

    .line 207
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLongitudeKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/h;->addObfuscatedUrlParam(Ljava/lang/String;D)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mUnit:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    sget-object v1, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mAccuracyKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/h;->addUrlParam(Ljava/lang/String;D)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mUnit:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    sget-object v1, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mAccuracyKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const v2, 0x44c92b02

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/h;->addUrlParam(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public executeSynchronouslyWithLocation(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/bc;",
            "Lcom/yelp/android/debug/Debug;",
            "Z)TResult;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationService:Lcom/yelp/android/appdata/LocationService;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/h;->mAccuracy:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/h;->mRecentness:Lcom/yelp/android/appdata/LocationService$Recentness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;)Landroid/util/Pair;

    move-result-object v0

    .line 285
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 286
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;
    :try_end_0
    .catch Lcom/yelp/android/appdata/LocationService$NoProvidersException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/h;->onPreExecute()V

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/appdata/webrequests/h;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/h;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/j;

    .line 292
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs executeWithLocation([Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mRecentness:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/LocationService$Recentness;->satisfies(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/h;->startRequest([Ljava/lang/Object;)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mWaitingForLocation:Z

    .line 138
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationCallback:Lcom/yelp/android/appdata/webrequests/i;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/i;->a([Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationService:Lcom/yelp/android/appdata/LocationService;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/h;->mAccuracy:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/h;->mRecentness:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationCallback:Lcom/yelp/android/appdata/webrequests/i;

    iget-wide v4, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationTimeout:J

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;J)V

    goto :goto_0
.end method

.method getCriteria()Landroid/location/Criteria;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 219
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public isLocationAbsolutelyRequired()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public isWaitingForLocation()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mWaitingForLocation:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/av/g;->onCancelled()V

    .line 43
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationService:Lcom/yelp/android/appdata/LocationService;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationCallback:Lcom/yelp/android/appdata/webrequests/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/aa;)V

    .line 44
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/yelp/android/av/g;->onPreExecute()V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/h;->addLocationToUrl(Landroid/location/Location;)V

    .line 203
    :cond_0
    return-void
.end method

.method protected setAccuracyKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "accuracy key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/h;->mAccuracyKey:Ljava/lang/String;

    .line 259
    return-void
.end method

.method protected setLatitudeKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "latitude key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/h;->mLatitudeKey:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setLocation(Landroid/location/Location;)Lcom/yelp/android/appdata/webrequests/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/h",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 276
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    .line 277
    return-object p0
.end method

.method public setLocationTimeout(J)V
    .locals 1

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocationTimeout:J

    .line 126
    return-void
.end method

.method protected setLongitudeKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "longitude key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/h;->mLongitudeKey:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public varargs startRequest([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/h;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 156
    const-string/jumbo v0, "Tried to start request twice"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->w(Ljava/lang/Object;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/h;->mWaitingForLocation:Z

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/h;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/j;

    .line 163
    if-eqz v0, :cond_1

    .line 164
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/j;->a(Landroid/location/Location;)V

    .line 166
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/h;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method
