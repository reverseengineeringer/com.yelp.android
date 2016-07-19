.class public Lcom/yelp/android/services/job/VideoTrimJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "VideoTrimJob.java"


# instance fields
.field private transient a:Lcom/yelp/android/util/ffmpeg/d$a;

.field private transient b:Lcom/yelp/android/util/ffmpeg/d$a;

.field private mBusinessId:Ljava/lang/String;

.field private mCaption:Ljava/lang/String;

.field private mEndTime:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mFilesToCleanup:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mHasFailed:Z

.field private mInputVideo:Ljava/io/File;

.field private final mIsConcurrent:Z

.field private mNumberOfChunks:I

.field private mOutputVideo:Ljava/io/File;

.field private mStartTime:I

.field private mVideoDurationSeconds:J

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method private constructor <init>(Ljava/io/File;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/path/android/jobqueue/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->b()Lcom/path/android/jobqueue/d;

    move-result-object v0

    const-string/jumbo v1, "VideoTrimJob"

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/d;->a(Ljava/lang/String;)Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/d;)V

    .line 83
    iput-object p1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mInputVideo:Ljava/io/File;

    .line 84
    iput p2, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mStartTime:I

    .line 85
    iput p3, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mEndTime:I

    .line 86
    iput-object p4, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mBusinessId:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mCaption:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mFilesToCleanup:Ljava/util/Set;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mIsConcurrent:Z

    .line 90
    return-void
.end method

.method private static a(II)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 186
    if-ge p1, p0, :cond_0

    .line 192
    sub-int v1, p0, p1

    div-int/lit8 v1, v1, 0x2

    .line 193
    add-int v2, v1, p1

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_0
    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    .line 203
    add-int v2, v1, p0

    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".webm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 209
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s-%02d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/yelp/android/util/e;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mHasFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mHasFailed:Z

    .line 229
    const-string/jumbo v0, "VideoTrimJob"

    const-string/jumbo v1, "Trimming failed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/yelp/android/services/job/VideoTrimJob;->c()V

    .line 231
    invoke-direct {p0}, Lcom/yelp/android/services/job/VideoTrimJob;->d()V

    .line 232
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoFailure:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0}, Lcom/yelp/android/services/job/VideoTrimJob;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/yelp/android/services/job/VideoTrimJob;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/services/job/VideoTrimJob;->d()V

    return-void
.end method

.method static synthetic access$100(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/io/File;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mOutputVideo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yelp/android/services/job/VideoTrimJob;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/services/job/VideoTrimJob;->a()V

    return-void
.end method

.method static synthetic access$500(Lcom/yelp/android/services/job/VideoTrimJob;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mNumberOfChunks:I

    return v0
.end method

.method static synthetic access$600(Lcom/yelp/android/services/job/VideoTrimJob;)Lcom/yelp/android/util/ffmpeg/d$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->a:Lcom/yelp/android/util/ffmpeg/d$a;

    return-object v0
.end method

.method static synthetic access$700(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private b()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/services/job/VideoTrimJob;->getTimeSinceCreation()J

    move-result-wide v0

    .line 237
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 238
    const-string/jumbo v3, "step"

    sget-object v4, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->CLIENT_TRIM:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    invoke-virtual {v4}, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v3, "duration_sec"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string/jumbo v0, "business_id"

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mBusinessId:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v0, "video_length_sec"

    iget-wide v4, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoDurationSeconds:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v3, "size_bytes"

    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mOutputVideo:Ljava/io/File;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v0, "width_pixels"

    iget v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v0, "height_pixels"

    iget v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/l;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v1, "md5_hash"

    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mOutputVideo:Ljava/io/File;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-object v2

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mOutputVideo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mOutputVideo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static c()V
    .locals 6

    .prologue
    .line 257
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 258
    new-instance v1, Landroid/support/v4/app/x$d;

    invoke-direct {v1, v0}, Landroid/support/v4/app/x$d;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070685

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/x$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;

    move-result-object v1

    const v2, 0x7f070644

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/x$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;

    move-result-object v1

    const v2, 0x108003f

    invoke-virtual {v1, v2}, Landroid/support/v4/app/x$d;->a(I)Landroid/support/v4/app/x$d;

    move-result-object v1

    .line 263
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 265
    const-string/jumbo v2, "VideoTrimJob.notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v1}, Landroid/support/v4/app/x$d;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 267
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mFilesToCleanup:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 271
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mFilesToCleanup:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 274
    return-void
.end method

.method public static launchJob(Ljava/io/File;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 76
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->w()Lcom/path/android/jobqueue/b;

    move-result-object v6

    new-instance v0, Lcom/yelp/android/services/job/VideoTrimJob;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/services/job/VideoTrimJob;-><init>(Ljava/io/File;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/Job;)J

    .line 78
    return-void
.end method


# virtual methods
.method public initializeCallbacks()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/yelp/android/services/job/VideoTrimJob$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/job/VideoTrimJob$1;-><init>(Lcom/yelp/android/services/job/VideoTrimJob;)V

    iput-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->a:Lcom/yelp/android/util/ffmpeg/d$a;

    .line 304
    new-instance v0, Lcom/yelp/android/services/job/VideoTrimJob$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/job/VideoTrimJob$2;-><init>(Lcom/yelp/android/services/job/VideoTrimJob;)V

    iput-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->b:Lcom/yelp/android/util/ffmpeg/d$a;

    .line 330
    return-void
.end method

.method public onRun()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 94
    invoke-super {p0}, Lcom/yelp/android/services/job/YelpJob;->onRun()V

    .line 96
    const-string/jumbo v0, "VideoTrimJob"

    const-string/jumbo v1, "Trimming started."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/services/job/VideoTrimJob;->initializeCallbacks()V

    .line 100
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mInputVideo:Ljava/io/File;

    invoke-static {v1}, Lcom/yelp/android/services/job/VideoTrimJob;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mOutputVideo:Ljava/io/File;

    .line 102
    new-instance v0, Lcom/yelp/android/util/t;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mInputVideo:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/util/t;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->f()I

    move-result v6

    .line 105
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoDurationSeconds:J

    .line 106
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->c()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoWidth:I

    .line 107
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->d()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoHeight:I

    .line 108
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->release()V

    .line 111
    iget v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoWidth:I

    iget v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    const/high16 v1, 0x44340000    # 720.0f

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 113
    iget v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v4, v1

    .line 114
    iget v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mVideoHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 116
    invoke-static {v4, v5}, Lcom/yelp/android/services/job/VideoTrimJob;->a(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 119
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mNumberOfChunks:I

    .line 121
    iget-boolean v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mIsConcurrent:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mNumberOfChunks:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 123
    iget v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mNumberOfChunks:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 124
    iget v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mEndTime:I

    iget v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mStartTime:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mNumberOfChunks:I

    div-int v11, v0, v1

    move v9, v10

    .line 125
    :goto_0
    iget v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mNumberOfChunks:I

    if-ge v9, v0, :cond_0

    .line 126
    iget v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mStartTime:I

    mul-int v1, v9, v11

    add-int v2, v0, v1

    .line 127
    add-int v3, v2, v11

    .line 128
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mOutputVideo:Ljava/io/File;

    invoke-static {v0, v9}, Lcom/yelp/android/services/job/VideoTrimJob;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/yelp/android/util/ffmpeg/b;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mInputVideo:Ljava/io/File;

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/util/ffmpeg/b;-><init>(Ljava/io/File;IIIIILandroid/graphics/Rect;Ljava/io/File;)V

    .line 139
    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->b:Lcom/yelp/android/util/ffmpeg/d$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ffmpeg/b;->a(Lcom/yelp/android/util/ffmpeg/d$a;)V

    .line 140
    const-string/jumbo v1, "VideoTrimJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "started chunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mFilesToCleanup:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const-string/jumbo v0, "VideoTrimJob"

    const-string/jumbo v1, "Timeout reached waiting for FFmpeg chunks to encode."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/yelp/android/services/job/VideoTrimJob;->a()V

    .line 170
    :cond_1
    :goto_1
    return-void

    .line 157
    :cond_2
    new-instance v0, Lcom/yelp/android/util/ffmpeg/b;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mInputVideo:Ljava/io/File;

    iget v2, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mStartTime:I

    iget v3, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mEndTime:I

    iget-object v8, p0, Lcom/yelp/android/services/job/VideoTrimJob;->mOutputVideo:Ljava/io/File;

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/util/ffmpeg/b;-><init>(Ljava/io/File;IIIIILandroid/graphics/Rect;Ljava/io/File;)V

    .line 167
    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob;->a:Lcom/yelp/android/util/ffmpeg/d$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ffmpeg/b;->a(Lcom/yelp/android/util/ffmpeg/d$a;)V

    .line 168
    invoke-virtual {v0}, Lcom/yelp/android/util/ffmpeg/b;->run()V

    goto :goto_1
.end method

.method public shouldReRunOnThrowable(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/yelp/android/services/job/VideoTrimJob;->a()V

    .line 175
    const/4 v0, 0x0

    return v0
.end method
