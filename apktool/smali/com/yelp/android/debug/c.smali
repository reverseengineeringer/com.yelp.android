.class public abstract Lcom/yelp/android/debug/c;
.super Ljava/lang/Object;
.source "MockResponse.java"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:I


# virtual methods
.method protected abstract a()Ljava/io/InputStream;
.end method

.method public a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/debug/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 34
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    iget v2, p0, Lcom/yelp/android/debug/c;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 35
    new-instance v1, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v1, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 37
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/debug/c;->a()Ljava/io/InputStream;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 41
    invoke-virtual {v1, v0}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 42
    return-object v1
.end method
