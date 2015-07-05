.class public Lcom/yelp/android/services/VideoTrimService;
.super Landroid/app/IntentService;
.source "VideoTrimService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:J

.field private i:I

.field private j:I

.field private k:J

.field private final l:Lcom/yelp/android/util/ffmpeg/f;

.field private final m:Lcom/yelp/android/util/ffmpeg/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "VideoTrimService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/yelp/android/services/t;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/t;-><init>(Lcom/yelp/android/services/VideoTrimService;)V

    iput-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->l:Lcom/yelp/android/util/ffmpeg/f;

    .line 259
    new-instance v0, Lcom/yelp/android/services/u;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/u;-><init>(Lcom/yelp/android/services/VideoTrimService;)V

    iput-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->m:Lcom/yelp/android/util/ffmpeg/f;

    .line 81
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->f:Ljava/util/Set;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/services/VideoTrimService;->g:Z

    .line 83
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;IILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/services/VideoTrimService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string/jumbo v1, "input_file_path"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "output_file_path"

    invoke-static {p1}, Lcom/yelp/android/services/VideoTrimService;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v1, "trim_start_time"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "trim_end_time"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "video_business_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "video_caption"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v1, "trim_concurrent"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    return-object v0
.end method

.method private a(II)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 151
    if-ge p2, p1, :cond_0

    .line 157
    sub-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    .line 158
    add-int v2, v1, p2

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_0
    sub-int v1, p2, p1

    div-int/lit8 v1, v1, 0x2

    .line 168
    add-int v2, v1, p1

    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 174
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s-%02d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/services/VideoTrimService;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/yelp/android/services/VideoTrimService;->a:Ljava/io/File;

    invoke-static {v4}, Lcom/yelp/android/util/l;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
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

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/services/VideoTrimService;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/yelp/android/services/VideoTrimService;->g:Z

    .line 192
    const-string/jumbo v0, "VideoTrimService"

    const-string/jumbo v1, "Trimming failed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-direct {p0}, Lcom/yelp/android/services/VideoTrimService;->c()V

    .line 194
    invoke-direct {p0}, Lcom/yelp/android/services/VideoTrimService;->d()V

    .line 195
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoFailure:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0}, Lcom/yelp/android/services/VideoTrimService;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/yelp/android/services/VideoTrimService;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/services/VideoTrimService;->d()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/services/VideoTrimService;)Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->a:Ljava/io/File;

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
    .line 199
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yelp/android/services/VideoTrimService;->h:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 201
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string/jumbo v3, "step"

    sget-object v4, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->CLIENT_TRIM:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    invoke-virtual {v4}, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v3, "duration_sec"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v0, "business_id"

    iget-object v1, p0, Lcom/yelp/android/services/VideoTrimService;->c:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v0, "video_length_sec"

    iget-wide v4, p0, Lcom/yelp/android/services/VideoTrimService;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v3, "size_bytes"

    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->a:Ljava/io/File;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v0, "width_pixels"

    iget v1, p0, Lcom/yelp/android/services/VideoTrimService;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v0, "height_pixels"

    iget v1, p0, Lcom/yelp/android/services/VideoTrimService;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v0, "wifi"

    invoke-static {p0}, Lcom/yelp/android/util/s;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v0, "md5_hash"

    iget-object v1, p0, Lcom/yelp/android/services/VideoTrimService;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-object v2

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/services/VideoTrimService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 219
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0706b3

    invoke-virtual {p0, v1}, Lcom/yelp/android/services/VideoTrimService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f07066b

    invoke-virtual {p0, v1}, Lcom/yelp/android/services/VideoTrimService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x108003f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 224
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/VideoTrimService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 226
    const-string/jumbo v2, "VideoTrimService.notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 228
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/services/VideoTrimService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 235
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/services/VideoTrimService;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/services/VideoTrimService;->a()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/services/VideoTrimService;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/yelp/android/services/VideoTrimService;->d:I

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/services/VideoTrimService;)Lcom/yelp/android/util/ffmpeg/f;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->l:Lcom/yelp/android/util/ffmpeg/f;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/services/VideoTrimService;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 87
    const-string/jumbo v0, "VideoTrimService"

    const-string/jumbo v1, "Trimming started."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/services/VideoTrimService;->h:J

    .line 90
    new-instance v1, Ljava/io/File;

    const-string/jumbo v0, "input_file_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/yelp/android/util/aj;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yelp/android/util/aj;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->a()I

    move-result v2

    .line 94
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->f()I

    move-result v6

    .line 95
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yelp/android/services/VideoTrimService;->k:J

    .line 96
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->c()I

    move-result v3

    iput v3, p0, Lcom/yelp/android/services/VideoTrimService;->i:I

    .line 97
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->d()I

    move-result v3

    iput v3, p0, Lcom/yelp/android/services/VideoTrimService;->j:I

    .line 98
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->release()V

    .line 101
    iget v0, p0, Lcom/yelp/android/services/VideoTrimService;->i:I

    iget v3, p0, Lcom/yelp/android/services/VideoTrimService;->j:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 102
    const/high16 v3, 0x44340000    # 720.0f

    int-to-float v0, v0

    div-float v0, v3, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 103
    iget v3, p0, Lcom/yelp/android/services/VideoTrimService;->i:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v4, v3

    .line 104
    iget v3, p0, Lcom/yelp/android/services/VideoTrimService;->j:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v5, v0

    .line 106
    invoke-direct {p0, v4, v5}, Lcom/yelp/android/services/VideoTrimService;->a(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 108
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "output_file_path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->a:Ljava/io/File;

    .line 109
    const-string/jumbo v0, "trim_start_time"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 110
    const-string/jumbo v0, "trim_end_time"

    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 112
    const-string/jumbo v0, "video_business_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->c:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "video_caption"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->b:Ljava/lang/String;

    .line 116
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/services/VideoTrimService;->d:I

    .line 117
    iget v0, p0, Lcom/yelp/android/services/VideoTrimService;->d:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->e:Ljava/util/concurrent/ExecutorService;

    .line 118
    const-string/jumbo v0, "trim_concurrent"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yelp/android/services/VideoTrimService;->d:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 120
    sub-int v0, v3, v11

    iget v2, p0, Lcom/yelp/android/services/VideoTrimService;->d:I

    div-int v12, v0, v2

    move v9, v10

    .line 121
    :goto_0
    iget v0, p0, Lcom/yelp/android/services/VideoTrimService;->d:I

    if-ge v9, v0, :cond_1

    .line 122
    mul-int v0, v9, v12

    add-int v2, v11, v0

    .line 123
    add-int v3, v2, v12

    .line 124
    new-instance v8, Ljava/io/File;

    invoke-direct {p0, v9}, Lcom/yelp/android/services/VideoTrimService;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/yelp/android/util/ffmpeg/b;

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/util/ffmpeg/b;-><init>(Ljava/io/File;IIIIILandroid/graphics/Rect;Ljava/io/File;)V

    .line 128
    iget-object v2, p0, Lcom/yelp/android/services/VideoTrimService;->m:Lcom/yelp/android/util/ffmpeg/f;

    invoke-virtual {v0, v2}, Lcom/yelp/android/util/ffmpeg/b;->a(Lcom/yelp/android/util/ffmpeg/f;)V

    .line 129
    const-string/jumbo v2, "VideoTrimService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "started chunk "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v13, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v13}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v2, p0, Lcom/yelp/android/services/VideoTrimService;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/services/VideoTrimService;->f:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Lcom/yelp/android/util/ffmpeg/b;

    iget-object v8, p0, Lcom/yelp/android/services/VideoTrimService;->a:Ljava/io/File;

    move v2, v11

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/util/ffmpeg/b;-><init>(Ljava/io/File;IIIIILandroid/graphics/Rect;Ljava/io/File;)V

    .line 138
    iget-object v1, p0, Lcom/yelp/android/services/VideoTrimService;->l:Lcom/yelp/android/util/ffmpeg/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ffmpeg/b;->a(Lcom/yelp/android/util/ffmpeg/f;)V

    .line 139
    iget-object v1, p0, Lcom/yelp/android/services/VideoTrimService;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 141
    :cond_1
    return-void
.end method
