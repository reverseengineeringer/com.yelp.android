.class final Lpl/droidsonroids/gif/GifInfoHandle;
.super Ljava/lang/Object;
.source "GifInfoHandle.java"


# static fields
.field static final a:Lpl/droidsonroids/gif/GifInfoHandle;


# instance fields
.field private volatile b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>()V

    sput-object v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 30
    const/4 v0, 0x0

    const-string/jumbo v1, "pl_droidsonroids_gif"

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/content/res/AssetFileDescriptor;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->openFd(Ljava/io/FileDescriptor;JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl/droidsonroids/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    .line 50
    return-void
.end method

.method static a(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;Z)V

    .line 71
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    goto :goto_0
.end method

.method private static native bindSurface(JLandroid/view/Surface;[JZ)V
.end method

.method private static native free(J)V
.end method

.method private static native getCurrentFrameIndex(J)I
.end method

.method private static native getCurrentLoop(J)I
.end method

.method private static native getCurrentPosition(J)I
.end method

.method private static native getDuration(J)I
.end method

.method private static native getHeight(J)I
.end method

.method private static native getLoopCount(J)I
.end method

.method private static native getNativeErrorCode(J)I
.end method

.method private static native getNumberOfFrames(J)I
.end method

.method private static native getSavedState(J)[J
.end method

.method private static native getWidth(J)I
.end method

.method static native openFd(Ljava/io/FileDescriptor;JZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl/droidsonroids/gif/GifIOException;
        }
    .end annotation
.end method

.method static native openFile(Ljava/lang/String;Z)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl/droidsonroids/gif/GifIOException;
        }
    .end annotation
.end method

.method private static native postUnbindSurface(J)V
.end method

.method private static native renderFrame(JLandroid/graphics/Bitmap;)J
.end method

.method private static native reset(J)Z
.end method

.method private static native restoreRemainder(J)J
.end method

.method private static native restoreSavedState(J[JLandroid/graphics/Bitmap;)I
.end method

.method private static native saveRemainder(J)V
.end method

.method private static native seekToFrame(JILandroid/graphics/Bitmap;)V
.end method

.method private static native seekToTime(JILandroid/graphics/Bitmap;)V
.end method

.method private static native setSpeedFactor(JF)V
.end method


# virtual methods
.method declared-synchronized a([JLandroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1, p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->restoreSavedState(J[JLandroid/graphics/Bitmap;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/graphics/Bitmap;)J
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->renderFrame(JLandroid/graphics/Bitmap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a()V
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->free(J)V

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(F)V
    .locals 2

    .prologue
    const/high16 v0, 0x30000000

    .line 197
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-lez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Speed factor is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    move p1, v0

    .line 203
    :cond_2
    monitor-enter p0

    .line 204
    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->setSpeedFactor(JF)V

    .line 205
    monitor-exit p0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized a(ILandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1, p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->seekToTime(JILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Landroid/view/Surface;[JZ)V
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lpl/droidsonroids/gif/GifInfoHandle;->bindSurface(JLandroid/view/Surface;[JZ)V

    .line 152
    return-void
.end method

.method declared-synchronized b()J
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->restoreRemainder(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(ILandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1, p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->seekToFrame(JILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Z
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->reset(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()V
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->saveRemainder(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()I
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getLoopCount(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()I
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getNativeErrorCode(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method declared-synchronized g()I
    .locals 2

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getDuration(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized h()I
    .locals 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentPosition(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized i()I
    .locals 2

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentFrameIndex(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized j()I
    .locals 2

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentLoop(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized k()Z
    .locals 4

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized l()V
    .locals 2

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->postUnbindSurface(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized m()[J
    .locals 2

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getSavedState(J)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized n()I
    .locals 2

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized o()I
    .locals 2

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized p()I
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifInfoHandle;->b:J

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getNumberOfFrames(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
