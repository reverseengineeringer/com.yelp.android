.class public abstract Lcom/yelp/android/services/job/YelpJob;
.super Lcom/path/android/jobqueue/Job;
.source "YelpJob.java"


# static fields
.field protected static final JOB_PRIORITY_HIGH:I = 0x3

.field protected static final JOB_PRIORITY_LOW:I = 0x1

.field protected static final JOB_PRIORITY_MEDIUM:I = 0x2


# instance fields
.field private final transient a:Lcom/path/android/jobqueue/d;

.field private final mCreationTimeMillis:J


# direct methods
.method protected constructor <init>(Lcom/path/android/jobqueue/d;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/Job;-><init>(Lcom/path/android/jobqueue/d;)V

    .line 43
    iput-object p1, p0, Lcom/yelp/android/services/job/YelpJob;->a:Lcom/path/android/jobqueue/d;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/services/job/YelpJob;->mCreationTimeMillis:J

    .line 45
    return-void
.end method

.method public static createTruncatedExponentialBackoff(IJJ)Lcom/path/android/jobqueue/f;
    .locals 7

    .prologue
    .line 55
    new-instance v0, Lcom/path/android/jobqueue/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/f;-><init>(Z)V

    .line 56
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v1, 0x0

    add-int/lit8 v4, p0, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long/2addr v2, p1

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/f;->a(Ljava/lang/Long;)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTimeMillis()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/yelp/android/services/job/YelpJob;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public getParams()Lcom/path/android/jobqueue/d;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/services/job/YelpJob;->a:Lcom/path/android/jobqueue/d;

    return-object v0
.end method

.method protected getTimeSinceCreation()J
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/services/job/YelpJob;->mCreationTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/services/job/YelpJob;->requiresNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 69
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "YelpJob"

    new-instance v1, Lcom/yelp/android/services/job/RunDuringIdleException;

    const-string/jumbo v2, "onRun() called when device is idle and has no network"

    invoke-direct {v1, v2}, Lcom/yelp/android/services/job/RunDuringIdleException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 76
    :cond_0
    return-void
.end method

.method public shouldReRunOnThrowable(Ljava/lang/Throwable;II)Lcom/path/android/jobqueue/f;
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/job/YelpJob;->shouldReRunOnThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    const-wide/32 v2, 0x1b77400

    invoke-static {p2, v0, v1, v2, v3}, Lcom/yelp/android/services/job/YelpJob;->createTruncatedExponentialBackoff(IJJ)Lcom/path/android/jobqueue/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/path/android/jobqueue/f;->b:Lcom/path/android/jobqueue/f;

    goto :goto_0
.end method

.method public shouldReRunOnThrowable(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method
