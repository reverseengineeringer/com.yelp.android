.class public Lcom/yelp/android/services/c;
.super Ljava/lang/Object;
.source "HttpRequestWrapped.java"


# static fields
.field private static a:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public static a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 222
    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v1

    .line 225
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    move-object v1, v0

    .line 236
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    invoke-static {p0}, Lcom/yelp/android/services/c;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v2

    .line 254
    if-nez v2, :cond_1

    .line 255
    const-string/jumbo v0, ""

    .line 282
    :goto_0
    return-object v0

    .line 257
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    .line 261
    if-gez v0, :cond_3

    .line 262
    const/16 v0, 0x1000

    .line 264
    :cond_3
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 265
    if-nez v1, :cond_4

    move-object v1, p1

    .line 268
    :cond_4
    if-nez v1, :cond_5

    .line 269
    const-string/jumbo v1, "ISO-8859-1"

    .line 271
    :cond_5
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 272
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 274
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [C

    .line 276
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 277
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 280
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    throw v0

    :cond_6
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 282
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;
    .locals 4

    .prologue
    .line 141
    new-instance v1, Lcom/yelp/android/appdata/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/d;-><init>(Landroid/content/Context;)V

    .line 142
    const-string/jumbo v0, "cookies"

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/d;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 144
    if-nez v2, :cond_0

    .line 147
    :try_start_0
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 148
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 149
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 150
    const-string/jumbo v2, "cookies"

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/appdata/d;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    const-string/jumbo v1, "cookies"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 159
    new-instance v1, Lcom/yelp/android/services/PersistingCookieStore;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/services/PersistingCookieStore;-><init>(Ljava/io/File;Ljavax/crypto/SecretKey;)V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const/4 v1, 0x0

    const-string/jumbo v2, "AES DOES NOT EXIST!"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    goto :goto_1

    .line 156
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static final declared-synchronized a(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/f;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/yelp/android/services/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yelp/android/services/c;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    .line 81
    invoke-static {p0, p1, p2}, Lcom/yelp/android/services/c;->b(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/f;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/services/c;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 83
    :cond_0
    sget-object v0, Lcom/yelp/android/services/c;->a:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final a(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;
    .locals 3

    .prologue
    const/16 v1, 0x7530

    const/4 v2, 0x0

    .line 178
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 179
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 180
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 181
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 182
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 183
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 185
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 186
    new-instance v1, Lcom/yelp/android/services/c$2;

    invoke-direct {v1}, Lcom/yelp/android/services/c$2;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 195
    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 196
    return-object v0
.end method

.method public static final declared-synchronized a()V
    .locals 5

    .prologue
    .line 87
    const-class v1, Lcom/yelp/android/services/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yelp/android/services/c;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/yelp/android/services/c;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 90
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit v1

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lorg/apache/http/HttpRequest;)V
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static a(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 4

    .prologue
    .line 170
    sget-object v0, Lcom/yelp/android/services/c;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/yelp/android/services/c;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 172
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p0, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 174
    :cond_0
    return-void
.end method

.method public static final declared-synchronized b()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4

    .prologue
    .line 163
    const-class v1, Lcom/yelp/android/services/c;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->h()Lcom/yelp/android/appdata/f;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/services/c;->a(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/f;)Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/f;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 5

    .prologue
    .line 97
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 98
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    invoke-virtual {p1}, Lcom/yelp/android/debug/Debug;->d()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 99
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "http"

    invoke-static {}, Lorg/apache/http/conn/MultihomePlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/MultihomePlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 103
    invoke-virtual {p2}, Lcom/yelp/android/appdata/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/services/c;->a(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 104
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v2, v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 110
    invoke-static {p0}, Lcom/yelp/android/services/c;->a(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 113
    new-instance v0, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    .line 114
    new-instance v0, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 119
    new-instance v0, Lcom/yelp/android/services/c$1;

    invoke-direct {v0}, Lcom/yelp/android/services/c$1;-><init>()V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 137
    return-object v2
.end method
