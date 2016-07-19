.class Lcom/bugsnag/android/ErrorStore;
.super Ljava/lang/Object;
.source "ErrorStore.java"


# instance fields
.field final config:Lcom/bugsnag/android/Configuration;

.field final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bugsnag/android/ErrorStore;->config:Lcom/bugsnag/android/Configuration;

    .line 24
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/bugsnag-errors/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    const-string/jumbo v1, "Could not prepare error storage directory"

    invoke-static {v1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    iput-object v0, p0, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    .line 37
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 33
    const-string/jumbo v2, "Could not prepare error storage directory"

    invoke-static {v2, v1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method flush()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/bugsnag/android/ErrorStore$1;

    invoke-direct {v0, p0}, Lcom/bugsnag/android/ErrorStore$1;-><init>(Lcom/bugsnag/android/ErrorStore;)V

    invoke-static {v0}, Lcom/bugsnag/android/Async;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method write(Lcom/bugsnag/android/Error;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string/jumbo v0, "%s%d.json"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 81
    const/4 v2, 0x0

    .line 83
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    new-instance v0, Lcom/bugsnag/android/JsonStream;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/JsonStream;-><init>(Ljava/io/Writer;)V

    .line 86
    invoke-virtual {v0, p1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 87
    invoke-virtual {v0}, Lcom/bugsnag/android/JsonStream;->close()V

    .line 89
    const-string/jumbo v0, "Saved unsent error to disk (%s) "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    invoke-static {v1}, Lcom/bugsnag/android/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 91
    :goto_1
    :try_start_2
    const-string/jumbo v2, "Couldn\'t save unsent error to disk (%s) "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    invoke-static {v1}, Lcom/bugsnag/android/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/bugsnag/android/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 90
    :catch_1
    move-exception v0

    goto :goto_1
.end method
