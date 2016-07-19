.class public Lcom/yelp/android/util/ffmpeg/FFmpeg;
.super Ljava/lang/Object;
.source "FFmpeg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;,
        Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;,
        Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;
    .locals 4

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-static {p0}, Lcom/yelp/android/util/ffmpeg/FFmpeg;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    const-string/jumbo v2, "FFmpeg"

    const-string/jumbo v3, "FFmpeg not loaded or cannot be executed!"

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-static {}, Lcom/yelp/android/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string/jumbo v0, "arm/pie/ffmpeg"

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    invoke-static {}, Lcom/yelp/android/util/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    const-string/jumbo v1, "FFmpeg"

    const-string/jumbo v2, "There was an x86 device with API 21+"

    invoke-static {v1, v2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    const-string/jumbo v0, "x86/ffmpeg"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-static {p0}, Lcom/yelp/android/util/ffmpeg/FFmpeg;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string/jumbo v1, "FFmpeg"

    const-string/jumbo v2, "FFmpeg already exists and works."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 102
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a:Ljava/lang/Boolean;

    .line 104
    const-string/jumbo v1, "FFmpeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "os.arch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "os.arch"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a()Ljava/lang/String;

    move-result-object v1

    .line 106
    if-nez v1, :cond_1

    .line 107
    const-string/jumbo v1, "FFmpeg"

    const-string/jumbo v2, "CPU not supported."

    invoke-static {v1, v2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v2, "FFmpeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Copying FFmpeg from asset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const-string/jumbo v2, "ffmpeg"

    invoke-static {v1, v2}, Lcom/yelp/android/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    const-string/jumbo v1, "FFmpeg"

    const-string/jumbo v2, "Couldn\'t copy FFmpeg."

    invoke-static {v1, v2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {p0}, Lcom/yelp/android/util/ffmpeg/FFmpeg;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 10

    .prologue
    const/16 v4, 0x140

    const/4 v2, 0x0

    .line 172
    const-string/jumbo v0, "FFmpeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Verifying file is supported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {p0}, Lcom/yelp/android/util/t;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return v2

    .line 177
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "test.webm"

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 181
    new-instance v0, Lcom/yelp/android/util/ffmpeg/b;

    const/16 v3, 0xa

    const/4 v7, 0x0

    move-object v1, p0

    move v5, v4

    move v6, v2

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/util/ffmpeg/b;-><init>(Ljava/io/File;IIIIILandroid/graphics/Rect;Ljava/io/File;)V

    .line 182
    new-instance v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$1;

    invoke-direct {v1, v9}, Lcom/yelp/android/util/ffmpeg/FFmpeg$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ffmpeg/b;->a(Lcom/yelp/android/util/ffmpeg/d$a;)V

    .line 192
    invoke-virtual {v0}, Lcom/yelp/android/util/ffmpeg/b;->run()V

    .line 193
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "ffmpeg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 206
    sget-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 212
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a:Ljava/lang/Boolean;

    .line 213
    invoke-static {p0}, Lcom/yelp/android/util/ffmpeg/FFmpeg;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    const-string/jumbo v0, "FFmpeg"

    const-string/jumbo v1, "ffmpeg doesn\'t exist."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    :goto_1
    sget-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/File;->setExecutable(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    const-string/jumbo v0, "FFmpeg"

    const-string/jumbo v1, "Couldn\'t make ffmpeg executable."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 220
    :cond_2
    const-string/jumbo v0, "FFmpeg"

    const-string/jumbo v1, "ffmpeg is executable, testing -version."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    new-instance v0, Lcom/yelp/android/util/ffmpeg/c;

    invoke-direct {v0}, Lcom/yelp/android/util/ffmpeg/c;-><init>()V

    const-string/jumbo v1, "-version"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ffmpeg/c;->a(Landroid/content/Context;)Ljava/lang/Process;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v1

    if-nez v1, :cond_3

    .line 224
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string/jumbo v1, "FFmpeg"

    const-string/jumbo v2, "\'ffmpeg -version\' can\'t be executed."

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 226
    :cond_3
    :try_start_1
    const-string/jumbo v1, "FFmpeg"

    const-string/jumbo v2, "\'ffmpeg -version\' failed!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    const-string/jumbo v1, "FFmpeg"

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/Process;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
