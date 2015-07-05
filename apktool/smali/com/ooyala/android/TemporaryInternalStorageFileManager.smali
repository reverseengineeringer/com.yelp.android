.class public final Lcom/ooyala/android/TemporaryInternalStorageFileManager;
.super Ljava/lang/Object;
.source "TemporaryInternalStorageFileManager.java"


# static fields
.field private static final PRE_PRE_FIX:Ljava/lang/String; = "OOTISF_"

.field private static final TAG:Ljava/lang/String; = "TemporaryInternalStorageFiles"

.field public static final TMP_LIFESPAN_MSEC:J = 0x493e0L

.field private static s_nextTmpId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/ooyala/android/TemporaryInternalStorageFileManager;->s_nextTmpId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "TemporaryInternalStorageFiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cleanup(): dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 45
    new-instance v1, Lcom/ooyala/android/TemporaryInternalStorageFileManager$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/ooyala/android/TemporaryInternalStorageFileManager$1;-><init>(Lcom/ooyala/android/TemporaryInternalStorageFileManager;J)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 55
    const-string/jumbo v4, "TemporaryInternalStorageFiles"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cleanup(): deleting f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public next(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ooyala/android/TemporaryInternalStorageFile;
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/ooyala/android/TemporaryInternalStorageFileManager;->cleanup(Landroid/content/Context;)V

    .line 33
    sget-object v0, Lcom/ooyala/android/TemporaryInternalStorageFileManager;->s_nextTmpId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 34
    new-instance v0, Lcom/ooyala/android/TemporaryInternalStorageFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OOTISF_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ooyala/android/TemporaryInternalStorageFileManager;->s_nextTmpId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lcom/ooyala/android/TemporaryInternalStorageFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
