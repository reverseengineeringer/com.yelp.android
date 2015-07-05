.class public Lcom/yelp/android/util/aj;
.super Landroid/media/MediaMetadataRetriever;
.source "VideoMetaDataRetriever.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/aj;->setDataSource(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/aj;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/util/aj;

    invoke-direct {v0, p0}, Lcom/yelp/android/util/aj;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->a()I

    move-result v1

    .line 30
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->release()V

    .line 31
    return v1
.end method

.method public static a(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/util/aj;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/util/aj;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->g()Z

    move-result v1

    .line 41
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->release()V

    .line 42
    return v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/yelp/android/util/aj;->a(I)I

    move-result v0

    return v0
.end method

.method public a(J)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/util/aj;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/yelp/android/util/aj;->a()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/yelp/android/util/aj;->a(I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/yelp/android/util/aj;->a(I)I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/util/aj;->f()I

    move-result v0

    .line 78
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 83
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/yelp/android/util/aj;->a(I)I

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/util/aj;->c()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/util/aj;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/util/aj;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
