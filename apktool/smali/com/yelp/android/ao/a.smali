.class public Lcom/yelp/android/ao/a;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final d:Lorg/apache/http/protocol/HttpContext;

.field private e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0xa

    sput v0, Lcom/yelp/android/ao/a;->a:I

    .line 103
    const/16 v0, 0x2710

    sput v0, Lcom/yelp/android/ao/a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 118
    sget v1, Lcom/yelp/android/ao/a;->b:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 119
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v2, Lcom/yelp/android/ao/a;->a:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 120
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 122
    sget v1, Lcom/yelp/android/ao/a;->b:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 123
    sget v1, Lcom/yelp/android/ao/a;->b:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 124
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 125
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 127
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 128
    const-string/jumbo v1, "android-async-http/%s (http://loopj.com/android-async-http)"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "1.4.3"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 130
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 131
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 132
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 133
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 135
    new-instance v1, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v1, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v1, p0, Lcom/yelp/android/ao/a;->d:Lorg/apache/http/protocol/HttpContext;

    .line 136
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/yelp/android/ao/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ao/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/yelp/android/ao/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ao/b;-><init>(Lcom/yelp/android/ao/a;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ao/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/yelp/android/ao/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ao/c;-><init>(Lcom/yelp/android/ao/a;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ao/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/yelp/android/ao/k;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/yelp/android/ao/k;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 170
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/yelp/android/ao/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 172
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ao/a;->f:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ao/a;->g:Ljava/util/Map;

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ao/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ao/a;->g:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ao/i;)Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    .line 590
    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p1}, Lcom/yelp/android/ao/i;->b()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 594
    :cond_0
    return-object v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0

    .prologue
    .line 598
    if-eqz p2, :cond_0

    .line 599
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 602
    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yelp/android/ao/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 226
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 227
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 228
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 229
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ao/i;Lcom/yelp/android/ao/f;)V
    .locals 6

    .prologue
    .line 392
    invoke-direct {p0, p3}, Lcom/yelp/android/ao/a;->a(Lcom/yelp/android/ao/i;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ao/a;->a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/yelp/android/ao/f;)V

    .line 393
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/yelp/android/ao/f;)V
    .locals 7

    .prologue
    .line 404
    iget-object v1, p0, Lcom/yelp/android/ao/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/yelp/android/ao/a;->d:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/ao/a;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ao/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/yelp/android/ao/f;Landroid/content/Context;)V

    .line 405
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/yelp/android/ao/i;Ljava/lang/String;Lcom/yelp/android/ao/f;)V
    .locals 7

    .prologue
    .line 422
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 423
    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/yelp/android/ao/a;->a(Lcom/yelp/android/ao/i;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 424
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ao/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/yelp/android/ao/a;->d:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ao/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/yelp/android/ao/f;Landroid/content/Context;)V

    .line 427
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/ao/i;Lcom/yelp/android/ao/f;)V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/yelp/android/ao/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ao/i;Lcom/yelp/android/ao/f;)V

    .line 382
    return-void
.end method

.method protected a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/yelp/android/ao/f;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 554
    if-eqz p4, :cond_0

    .line 555
    const-string/jumbo v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ao/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/yelp/android/ao/e;

    invoke-direct {v1, p1, p2, p3, p5}, Lcom/yelp/android/ao/e;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/yelp/android/ao/f;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 560
    if-eqz p6, :cond_2

    .line 562
    iget-object v0, p0, Lcom/yelp/android/ao/a;->f:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 563
    if-nez v0, :cond_1

    .line 564
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 565
    iget-object v2, p0, Lcom/yelp/android/ao/a;->f:Ljava/util/Map;

    invoke-interface {v2, p6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_2
    return-void
.end method
