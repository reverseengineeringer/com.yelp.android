.class public final Lcom/yelp/android/cx/k;
.super Lcom/yelp/android/cx/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/cx/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/cx/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/net/HttpURLConnection;Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/yelp/android/cw/c;",
            "Lcom/yelp/android/cw/d",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/cw/c;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " was not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-string/jumbo v7, "assets/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x7

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljp/line/android/sdk/c;->a()Ljp/line/android/sdk/a;

    move-result-object v2

    invoke-interface {v2}, Ljp/line/android/sdk/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-wide v8, v2

    move-object v10, v4

    move-object v2, v5

    :goto_0
    if-eqz v10, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-gez v3, :cond_5

    :cond_2
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " was not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-wide v8, v2

    move-object v10, v4

    move-object v2, v5

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-wide v8, v2

    move-object v10, v4

    move-object v2, v5

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "--AaB03x\r\nContent-Disposition: form-data; name=\"Filedata\"; filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\"\r\nContent-Type: application/octet-stream\r\n\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\r\n--AaB03x--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    const-string/jumbo v3, "POST"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "multipart/form-data; boundary=AaB03x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Content-Length"

    array-length v4, v2

    int-to-long v4, v4

    add-long/2addr v4, v8

    array-length v6, v11

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/yelp/android/cx/k;->b(Ljava/net/HttpURLConnection;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    const/16 v2, 0x400

    new-array v12, v2, [B

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_6

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    array-length v13, v12

    invoke-virtual {v10, v12, v3, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v13, -0x1

    if-eq v3, v13, :cond_9

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v14, v3

    add-long/2addr v6, v14

    if-eqz v2, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/yelp/android/cw/d;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :goto_2
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    const-wide/16 v14, 0x32

    mul-long/2addr v14, v6

    :try_start_2
    div-long/2addr v14, v8

    long-to-int v3, v14

    if-ge v4, v3, :cond_b

    if-eqz v2, :cond_8

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/yelp/android/cw/d;->a(JJ)V

    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    :goto_3
    move v4, v3

    goto :goto_1

    :cond_9
    invoke-virtual {v5, v11}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    :cond_a
    throw v2

    :catchall_1
    move-exception v2

    move-object v3, v5

    goto :goto_4

    :cond_b
    move v3, v4

    goto :goto_3

    :cond_c
    move-wide v8, v2

    move-object v10, v4

    move-object v2, v5

    goto/16 :goto_0
.end method

.method protected final synthetic c(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/yelp/android/cx/l;->a(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljp/line/android/sdk/exception/LineSdkApiException;

    sget-object v1, Ljp/line/android/sdk/exception/LineSdkApiError;->SERVER_ERROR:Ljp/line/android/sdk/exception/LineSdkApiError;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {p1}, Lcom/yelp/android/cx/k;->a(Ljava/net/HttpURLConnection;)Ljp/line/android/sdk/exception/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljp/line/android/sdk/exception/LineSdkApiException;-><init>(Ljp/line/android/sdk/exception/LineSdkApiError;ILjp/line/android/sdk/exception/a;)V

    throw v0
.end method
