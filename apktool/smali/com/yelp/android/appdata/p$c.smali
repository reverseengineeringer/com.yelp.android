.class final Lcom/yelp/android/appdata/p$c;
.super Ljava/lang/Object;
.source "StatefulLocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/location/LocationManager;

.field private final c:Lcom/yelp/android/appdata/p$a;

.field private d:Z

.field private e:J

.field private f:Landroid/location/GpsStatus;

.field private g:Landroid/os/Handler;

.field private final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Ljava/lang/String;Lcom/yelp/android/appdata/p$a;)V
    .locals 2

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    new-instance v0, Lcom/yelp/android/appdata/p$c$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/p$c$1;-><init>(Lcom/yelp/android/appdata/p$c;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/p$c;->i:Ljava/lang/Runnable;

    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Provider cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    iput-object p2, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    .line 357
    iput-object p1, p0, Lcom/yelp/android/appdata/p$c;->b:Landroid/location/LocationManager;

    .line 358
    iput-object p3, p0, Lcom/yelp/android/appdata/p$c;->c:Lcom/yelp/android/appdata/p$a;

    .line 359
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    .line 360
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yelp/android/appdata/p$c;->e:J

    .line 361
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/p$c;J)J
    .locals 1

    .prologue
    .line 332
    iput-wide p1, p0, Lcom/yelp/android/appdata/p$c;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/p$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/appdata/p$c;)Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/yelp/android/appdata/p$c;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/appdata/p$c;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/appdata/p$c;)Landroid/location/GpsStatus;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->f:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/appdata/p$c;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->b:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/appdata/p$c;)J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/yelp/android/appdata/p$c;->e:J

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)J
    .locals 14

    .prologue
    const-wide/16 v12, 0x3a98

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 459
    iget-object v1, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    const-string/jumbo v3, "passive"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    :cond_0
    iget-wide v0, p0, Lcom/yelp/android/appdata/p$c;->e:J

    .line 542
    :goto_0
    return-wide v0

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v5, v1, [F

    .line 476
    iget-object v1, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v6, v1, [F

    .line 478
    array-length v7, v5

    move v1, v2

    move v3, v0

    move v4, v0

    :goto_1
    if-ge v1, v7, :cond_2

    .line 479
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 480
    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v8

    aput v8, v5, v1

    .line 481
    aget v8, v5, v1

    add-float/2addr v4, v8

    .line 482
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    aput v0, v6, v1

    .line 483
    aget v0, v6, v1

    add-float/2addr v3, v0

    .line 478
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 486
    :cond_2
    array-length v0, v5

    int-to-float v0, v0

    div-float v7, v4, v0

    .line 487
    array-length v0, v6

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 488
    const-wide/16 v0, 0x0

    .line 490
    array-length v8, v6

    move-wide v4, v0

    move v0, v2

    :goto_2
    if-ge v0, v8, :cond_3

    .line 491
    aget v1, v6, v0

    sub-float/2addr v1, v3

    .line 492
    mul-float/2addr v1, v1

    float-to-double v10, v1

    add-double/2addr v4, v10

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 495
    :cond_3
    array-length v0, v6

    int-to-double v0, v0

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 496
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    .line 498
    iget-wide v8, p0, Lcom/yelp/android/appdata/p$c;->e:J

    .line 499
    iget-object v1, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v6, v1, 0x2

    .line 504
    float-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-lez v0, :cond_4

    .line 506
    int-to-long v0, v6

    div-long v0, v8, v0

    .line 515
    :goto_3
    const/high16 v8, 0x40a00000    # 5.0f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_5

    .line 519
    int-to-long v8, v6

    div-long/2addr v0, v8

    .line 526
    :goto_4
    iget-object v6, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    const-string/jumbo v8, "CalculatedUpdateTime[%d]\nAvg Accuracy:%f\t(%f)\nStdDev Accuracy: %f\t(%f)\nAvg Distance: %f\nLocation %s\nOtherLocations [%s]"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    aput-object p1, v9, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    aput-object v3, v9, v2

    invoke-static {v6, v8, v9}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 510
    :cond_4
    int-to-long v0, v6

    mul-long/2addr v0, v8

    int-to-long v8, v6

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 511
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    .line 523
    :cond_5
    int-to-long v8, v6

    mul-long/2addr v0, v8

    int-to-long v8, v6

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 524
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_4
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/yelp/android/appdata/p$c;->d:Z

    return v0
.end method

.method public b()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v6, 0x1

    .line 368
    iget-boolean v0, p0, Lcom/yelp/android/appdata/p$c;->d:Z

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yelp/android/appdata/p$c;->f:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/p$c;->f:Landroid/location/GpsStatus;

    .line 371
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->f:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 373
    iget-object v2, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    const-string/jumbo v3, "Time to first fix is: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    const v2, 0x476a6000    # 60000.0f

    long-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 378
    const-wide/32 v2, 0x15f90

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 379
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->g:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/appdata/p$c;->g:Landroid/os/Handler;

    .line 380
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yelp/android/appdata/p$c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yelp/android/appdata/p$c;->i:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    const-string/jumbo v1, "Starting at %d millisecond updates and %f meters"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/yelp/android/appdata/p$c;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/yelp/android/appdata/p$c;->e:J

    const/high16 v4, 0x40a00000    # 5.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/p$c;->d:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/yelp/android/appdata/p$c;->d:Z

    return v0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->g:Landroid/os/Handler;

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    iget-object v1, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    const-string/jumbo v2, "We are not allowed to listen to this provider"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 402
    iget-boolean v0, p0, Lcom/yelp/android/appdata/p$c;->d:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    const-string/jumbo v1, "SHUTTING DOWN"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 405
    iput-boolean v3, p0, Lcom/yelp/android/appdata/p$c;->d:Z

    .line 407
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 415
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    const-string/jumbo v1, "Got a new Location [%s]"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->c:Lcom/yelp/android/appdata/p$a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/p$a;->a(Landroid/location/Location;)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/p$c;->a(Landroid/location/Location;)J

    move-result-wide v0

    .line 420
    iget-wide v2, p0, Lcom/yelp/android/appdata/p$c;->e:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    const-string/jumbo v3, "Updating update frequency from %d to %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/yelp/android/appdata/p$c;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yelp/android/util/YelpLog;->w(Ljava/lang/Object;Ljava/lang/String;)I

    .line 427
    iput-wide v0, p0, Lcom/yelp/android/appdata/p$c;->e:J

    .line 428
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 429
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yelp/android/appdata/p$c;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/yelp/android/appdata/p$c;->e:J

    const/high16 v4, 0x40a00000    # 5.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 437
    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/yelp/android/appdata/p$c;->c:Lcom/yelp/android/appdata/p$a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/p$a;->a(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 548
    return-void
.end method
