.class public Lcom/yelp/android/services/d;
.super Ljava/lang/Object;
.source "HttpRequestWrapped.java"


# static fields
.field private static a:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public static a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 233
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 234
    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v1

    .line 237
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 245
    const-string/jumbo v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    move-object v1, v0

    .line 248
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 261
    if-nez p0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    invoke-static {p0}, Lcom/yelp/android/services/d;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v2

    .line 267
    if-nez v2, :cond_1

    .line 268
    const-string/jumbo v0, ""

    .line 295
    :goto_0
    return-object v0

    .line 270
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    .line 274
    if-gez v0, :cond_3

    .line 275
    const/16 v0, 0x1000

    .line 277
    :cond_3
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 278
    if-nez v1, :cond_4

    move-object v1, p1

    .line 281
    :cond_4
    if-nez v1, :cond_5

    .line 282
    const-string/jumbo v1, "ISO-8859-1"

    .line 284
    :cond_5
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 285
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 287
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [C

    .line 289
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 290
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 293
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    throw v0

    :cond_6
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 295
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;
    .locals 4

    .prologue
    .line 155
    new-instance v1, Lcom/yelp/android/appdata/j;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/j;-><init>(Landroid/content/Context;)V

    .line 156
    const-string/jumbo v0, "cookies"

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/j;->c(Ljava/lang/String;)[B

    move-result-object v2

    .line 158
    if-nez v2, :cond_0

    .line 161
    :try_start_0
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 162
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 163
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 164
    const-string/jumbo v2, "cookies"

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/appdata/j;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    const-string/jumbo v1, "cookies"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 173
    invoke-static {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 174
    new-instance v1, Lcom/yelp/android/services/PersistingCookieStore;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/services/PersistingCookieStore;-><init>(Ljava/io/File;Ljavax/crypto/SecretKey;)V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const/4 v1, 0x0

    const-string/jumbo v2, "AES DOES NOT EXIST!"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    goto :goto_1

    .line 170
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static final declared-synchronized a(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/n;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    .prologue
    .line 84
    const-class v1, Lcom/yelp/android/services/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yelp/android/services/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0, p1, p2}, Lcom/yelp/android/services/d;->b(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/n;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/services/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 87
    :cond_0
    sget-object v0, Lcom/yelp/android/services/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 84
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

    .line 191
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 192
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 193
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 194
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 195
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 196
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 198
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 199
    new-instance v1, Lcom/yelp/android/services/f;

    invoke-direct {v1}, Lcom/yelp/android/services/f;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 206
    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 207
    return-object v0
.end method

.method public static final declared-synchronized a()V
    .locals 5

    .prologue
    .line 91
    const-class v1, Lcom/yelp/android/services/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yelp/android/services/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/yelp/android/services/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 94
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit v1

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lorg/apache/http/HttpRequest;)V
    .locals 2

    .prologue
    .line 219
    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static a(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 4

    .prologue
    .line 183
    sget-object v0, Lcom/yelp/android/services/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/yelp/android/services/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 185
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p0, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 187
    :cond_0
    return-void
.end method

.method public static final declared-synchronized b()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4

    .prologue
    .line 178
    const-class v1, Lcom/yelp/android/services/d;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->h()Lcom/yelp/android/appdata/n;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/services/d;->a(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/n;)Lorg/apache/http/impl/client/DefaultHttpClient;
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

.method public static final b(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/n;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    .prologue
    const/16 v5, 0x1bb

    .line 101
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 105
    invoke-static {}, Lorg/apache/http/conn/MultihomePlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/MultihomePlainSocketFactory;

    move-result-object v1

    .line 107
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    invoke-virtual {p1}, Lcom/yelp/android/debug/Debug;->g()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 119
    :goto_0
    invoke-virtual {p2}, Lcom/yelp/android/appdata/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/services/d;->a(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 121
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 123
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 125
    invoke-static {p0}, Lcom/yelp/android/services/d;->a(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 130
    new-instance v1, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    .line 131
    new-instance v1, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 135
    new-instance v1, Lcom/yelp/android/services/e;

    invoke-direct {v1}, Lcom/yelp/android/services/e;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 151
    return-object v0

    .line 112
    :cond_0
    new-instance v1, Landroid/net/SSLSessionCache;

    invoke-direct {v1, p0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    .line 113
    const/16 v2, 0x7530

    invoke-static {v2, v1}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .line 115
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "https"

    invoke-direct {v2, v3, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0
.end method
