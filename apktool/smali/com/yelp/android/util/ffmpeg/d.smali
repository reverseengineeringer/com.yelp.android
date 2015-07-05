.class public Lcom/yelp/android/util/ffmpeg/d;
.super Ljava/lang/Object;
.source "FFmpegProcessBuilder.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->c:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->d:Ljava/util/List;

    .line 35
    iput-object v1, p0, Lcom/yelp/android/util/ffmpeg/d;->a:Ljava/io/File;

    .line 36
    iput-object v1, p0, Lcom/yelp/android/util/ffmpeg/d;->b:Ljava/io/File;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->c:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->d:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/yelp/android/util/ffmpeg/d;->a:Ljava/io/File;

    .line 41
    iput-object p2, p0, Lcom/yelp/android/util/ffmpeg/d;->b:Ljava/io/File;

    .line 42
    return-void
.end method

.method private static g(I)Ljava/lang/String;
    .locals 11

    .prologue
    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 46
    int-to-long v2, p0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 47
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    .line 48
    int-to-long v2, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v2, v2

    .line 49
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v2

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    .line 50
    int-to-long v2, v2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long/2addr v2, v8

    long-to-int v2, v2

    .line 51
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "%02d:%02d:%02d.%03d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v3, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/util/ffmpeg/d;
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "-y"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/yelp/android/util/ffmpeg/d;
    .locals 4

    .prologue
    .line 68
    const-string/jumbo v0, "-ss %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/yelp/android/util/ffmpeg/d;->g(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/yelp/android/util/ffmpeg/d;
    .locals 4

    .prologue
    .line 89
    const-string/jumbo v0, "scale=%dx%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/util/ffmpeg/d;->b(Ljava/lang/String;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Rect;)Lcom/yelp/android/util/ffmpeg/d;
    .locals 4

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo v0, "crop=w=%d:h=%d:x=%d:y=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/util/ffmpeg/d;->b(Ljava/lang/String;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;)Lcom/yelp/android/util/ffmpeg/d;
    .locals 3

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo v0, "-pix_fmt %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;)Lcom/yelp/android/util/ffmpeg/d;
    .locals 3

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo v0, "transpose=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/util/ffmpeg/d;->b(Ljava/lang/String;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/io/File;)Lcom/yelp/android/util/ffmpeg/d;
    .locals 4

    .prologue
    .line 60
    const-string/jumbo v0, "-f concat -i %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/util/ffmpeg/d;
    .locals 3

    .prologue
    .line 64
    const-string/jumbo v0, "-codec %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-object p0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/Process;
    .locals 3

    .prologue
    .line 136
    const-string/jumbo v0, "FFmpegProcessBuilder"

    invoke-virtual {p0}, Lcom/yelp/android/util/ffmpeg/d;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/util/ffmpeg/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yelp/android/util/ffmpeg/d;
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "-ac 1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/yelp/android/util/ffmpeg/d;
    .locals 4

    .prologue
    .line 72
    const-string/jumbo v0, "-to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/yelp/android/util/ffmpeg/d;->g(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yelp/android/util/ffmpeg/d;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object p0
.end method

.method public c(I)Lcom/yelp/android/util/ffmpeg/d;
    .locals 4

    .prologue
    .line 112
    const-string/jumbo v0, "-ar %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/yelp/android/util/ffmpeg/d;
    .locals 4

    .prologue
    .line 116
    const-string/jumbo v0, "-ab %dk"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/yelp/android/util/ffmpeg/d;
    .locals 4

    .prologue
    .line 120
    const-string/jumbo v0, "-r %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lcom/yelp/android/util/ffmpeg/d;
    .locals 4

    .prologue
    .line 131
    const-string/jumbo v0, "-vb %dk"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "-i "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/d;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, " -vf "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 153
    const-string/jumbo v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->e:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    if-eqz v0, :cond_4

    .line 163
    const-string/jumbo v0, " -loglevel %s"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/util/ffmpeg/d;->e:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    invoke-virtual {v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/d;->b:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 168
    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/d;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
