.class public abstract Lcom/yelp/android/services/job/YelpJob;
.super Lcom/path/android/jobqueue/Job;
.source "YelpJob.java"


# static fields
.field protected static final JOB_PRIORITY_HIGH:I = 0x3

.field protected static final JOB_PRIORITY_LOW:I = 0x1

.field protected static final JOB_PRIORITY_MEDIUM:I = 0x2


# instance fields
.field private final transient a:Lcom/path/android/jobqueue/h;

.field private final mCreationTimeMillis:J


# direct methods
.method protected constructor <init>(Lcom/path/android/jobqueue/h;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/Job;-><init>(Lcom/path/android/jobqueue/h;)V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/services/job/YelpJob;->a:Lcom/path/android/jobqueue/h;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/services/job/YelpJob;->mCreationTimeMillis:J

    .line 27
    return-void
.end method


# virtual methods
.method public getCreationTimeMillis()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/yelp/android/services/job/YelpJob;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public getParams()Lcom/path/android/jobqueue/h;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/services/job/YelpJob;->a:Lcom/path/android/jobqueue/h;

    return-object v0
.end method

.method protected getTimeSinceCreation()J
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/services/job/YelpJob;->mCreationTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public shouldReRunOnThrowable(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
