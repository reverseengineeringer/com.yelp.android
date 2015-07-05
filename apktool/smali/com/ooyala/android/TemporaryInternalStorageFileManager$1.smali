.class Lcom/ooyala/android/TemporaryInternalStorageFileManager$1;
.super Ljava/lang/Object;
.source "TemporaryInternalStorageFileManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/TemporaryInternalStorageFileManager;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/ooyala/android/TemporaryInternalStorageFileManager;J)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ooyala/android/TemporaryInternalStorageFileManager$1;->this$0:Lcom/ooyala/android/TemporaryInternalStorageFileManager;

    iput-wide p2, p0, Lcom/ooyala/android/TemporaryInternalStorageFileManager$1;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "OOTISF_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 50
    iget-wide v6, p0, Lcom/ooyala/android/TemporaryInternalStorageFileManager$1;->val$now:J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x493e0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    move v0, v1

    .line 51
    :goto_0
    const-string/jumbo v5, "TemporaryInternalStorageFiles"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cleanup(): f="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", isFile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", nameMatches="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", isOld="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    :cond_1
    move v1, v2

    .line 52
    goto :goto_1
.end method
