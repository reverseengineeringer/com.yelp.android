.class Lcom/bugsnag/android/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public static close(Ljava/net/URLConnection;)V
    .locals 1

    .prologue
    .line 27
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 30
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 18
    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 33
    const/16 v0, 0x1000

    new-array v3, v0, [C

    .line 34
    const-wide/16 v0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 37
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 38
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 41
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    move v0, v2

    .line 45
    :goto_1
    return v0

    :cond_1
    long-to-int v0, v0

    goto :goto_1
.end method
