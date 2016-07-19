.class Lcom/bugsnag/android/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/HttpClient$NetworkException;,
        Lcom/bugsnag/android/HttpClient$BadResponseException;
    }
.end annotation


# direct methods
.method static post(Ljava/lang/String;Lcom/bugsnag/android/JsonStream$Streamable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bugsnag/android/HttpClient$NetworkException;,
            Lcom/bugsnag/android/HttpClient$BadResponseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 25
    .line 27
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 30
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 31
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v3, "application/json"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 37
    new-instance v1, Lcom/bugsnag/android/JsonStream;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Lcom/bugsnag/android/JsonStream;-><init>(Ljava/io/Writer;)V

    .line 38
    invoke-interface {p1, v1}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 39
    invoke-virtual {v1}, Lcom/bugsnag/android/JsonStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :try_start_3
    invoke-static {v2}, Lcom/bugsnag/android/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 46
    div-int/lit8 v2, v1, 0x64

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 47
    new-instance v2, Lcom/bugsnag/android/HttpClient$BadResponseException;

    invoke-direct {v2, p0, v1}, Lcom/bugsnag/android/HttpClient$BadResponseException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 49
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 50
    :goto_0
    :try_start_4
    new-instance v1, Lcom/bugsnag/android/HttpClient$NetworkException;

    invoke-direct {v1, p0, v0}, Lcom/bugsnag/android/HttpClient$NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v2}, Lcom/bugsnag/android/IOUtils;->close(Ljava/net/URLConnection;)V

    throw v0

    .line 41
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v2}, Lcom/bugsnag/android/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 52
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/bugsnag/android/IOUtils;->close(Ljava/net/URLConnection;)V

    .line 54
    return-void

    .line 49
    :catch_1
    move-exception v0

    goto :goto_0
.end method
