.class public final Lcom/ooyala/android/TemporaryInternalStorageFile;
.super Ljava/lang/Object;
.source "TemporaryInternalStorageFile.java"


# instance fields
.field private final tmpFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 24
    invoke-static {p2, p3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/TemporaryInternalStorageFile;->tmpFile:Ljava/io/File;

    .line 25
    iget-object v0, p0, Lcom/ooyala/android/TemporaryInternalStorageFile;->tmpFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/TemporaryInternalStorageFile;->tmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/ooyala/android/TemporaryInternalStorageFile;->tmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ooyala/android/TemporaryInternalStorageFile;->tmpFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/TemporaryInternalStorageFile;->tmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ooyala/android/TemporaryInternalStorageFile;->tmpFile:Ljava/io/File;

    return-object v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ooyala/android/TemporaryInternalStorageFile;->tmpFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/ooyala/android/TemporaryInternalStorageFile;->tmpFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 41
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 43
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 45
    :cond_0
    return-void
.end method
