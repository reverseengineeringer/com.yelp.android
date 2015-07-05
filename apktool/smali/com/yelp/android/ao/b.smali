.class Lcom/yelp/android/ao/b;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/yelp/android/ao/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ao/a;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yelp/android/ao/b;->a:Lcom/yelp/android/ao/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3

    .prologue
    .line 140
    const-string/jumbo v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v1, "gzip"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ao/b;->a:Lcom/yelp/android/ao/a;

    invoke-static {v0}, Lcom/yelp/android/ao/a;->a(Lcom/yelp/android/ao/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ao/b;->a:Lcom/yelp/android/ao/a;

    invoke-static {v1}, Lcom/yelp/android/ao/a;->a(Lcom/yelp/android/ao/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method
