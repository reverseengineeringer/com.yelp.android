.class public Lcom/comscore/utils/j;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/comscore/analytics/a;

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:I

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 1

    const-string/jumbo v0, "cs_cache_"

    invoke-direct {p0, p1, v0}, Lcom/comscore/utils/j;-><init>(Lcom/comscore/analytics/a;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/comscore/analytics/a;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/j;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/comscore/utils/j;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/comscore/utils/j;->k:I

    iput-wide v2, p0, Lcom/comscore/utils/j;->l:J

    iput-wide v2, p0, Lcom/comscore/utils/j;->m:J

    iput-object p1, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    iput-object p2, p0, Lcom/comscore/utils/j;->h:Ljava/lang/String;

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/j;->a(I)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/comscore/utils/j;->b(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/comscore/utils/j;->c(I)V

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/comscore/utils/j;->d(I)V

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/comscore/utils/j;->e(I)V

    invoke-direct {p0}, Lcom/comscore/utils/j;->k()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/comscore/utils/j;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-static {v0, p1}, Lcom/comscore/utils/i;->a(Lcom/comscore/analytics/a;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(J)Z
    .locals 9

    const-wide/16 v6, 0x3c

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide v2, p0, Lcom/comscore/utils/j;->f:J

    const-wide/16 v4, 0x18

    mul-long/2addr v2, v4

    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/comscore/utils/e;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "text/xml"

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    const-string/jumbo v4, "http.agent"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "User-Agent"

    invoke-virtual {v2, v5, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string/jumbo v3, "Sending POST request"

    invoke-static {p0, v3}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "Cache flushed"

    invoke-static {p0, v3}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    sget-object v2, Lcom/comscore/utils/TransmissionMode;->DISABLED:Lcom/comscore/utils/TransmissionMode;

    invoke-virtual {v1, v2, v0}, Lcom/comscore/analytics/a;->b(Lcom/comscore/utils/TransmissionMode;Z)V

    invoke-virtual {p0}, Lcom/comscore/utils/j;->e()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in flush:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static a([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 3

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p0

    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    sub-int v1, p2, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/comscore/utils/j;->f(I)V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Creating new cache batch file"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comscore/utils/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ns_ts"

    invoke-static {p1, v1}, Lcom/comscore/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Lcom/comscore/utils/i;->a(Lcom/comscore/analytics/a;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/comscore/utils/j;->i()V

    return-void
.end method

.method private e(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method private f(I)V
    .locals 3

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v0

    const-string/jumbo v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    :cond_0
    const-string/jumbo v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    :try_start_0
    aget-object v5, v4, v2

    const-string/jumbo v6, "ns_ts"

    invoke-static {v5, v6}, Lcom/comscore/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/comscore/utils/j;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Valid timestamp found: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "All events in the file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " are expired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/comscore/utils/j;->a(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/comscore/utils/j;->f(I)V

    array-length v0, v4

    invoke-static {v4, v2, v0}, Lcom/comscore/utils/j;->a([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private g(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/j;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private h()Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/comscore/utils/j;->j()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/comscore/utils/j;->d()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v2}, Lcom/comscore/analytics/a;->aa()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/comscore/utils/j;->k:I

    iget v3, p0, Lcom/comscore/utils/j;->d:I

    if-lt v2, v3, :cond_0

    iget-wide v2, p0, Lcom/comscore/utils/j;->e:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/comscore/utils/j;->m:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    cmp-long v4, v2, v8

    if-gtz v4, :cond_1

    iput v1, p0, Lcom/comscore/utils/j;->k:I

    iput-wide v8, p0, Lcom/comscore/utils/j;->m:J

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Max flushes in a row ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/comscore/utils/j;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ") reached. Waiting "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " minutes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/utils/j;->l:J

    iget-object v0, p0, Lcom/comscore/utils/j;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/j;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private j()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/comscore/utils/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/comscore/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/comscore/utils/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/comscore/utils/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private k()V
    .locals 6

    invoke-direct {p0}, Lcom/comscore/utils/j;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/comscore/utils/j;->g(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/comscore/utils/j;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleting expired cache file "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/comscore/utils/j;->a(Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/i;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/comscore/utils/j;->b:I

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/comscore/utils/j;->b:I

    goto :goto_0
.end method

.method public a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/applications/EventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/comscore/applications/c;->a(Lcom/comscore/analytics/a;Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/applications/c;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->t()Lcom/yelp/android/al/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/al/c;->c(Lcom/yelp/android/al/b;)V

    iget-object v1, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->t()Lcom/yelp/android/al/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/al/c;->b(Lcom/yelp/android/al/b;)V

    invoke-virtual {p0, v0, p3}, Lcom/comscore/utils/j;->a(Lcom/yelp/android/al/b;Z)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/al/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/utils/j;->a(Lcom/yelp/android/al/b;Z)V

    return-void
.end method

.method public a(Lcom/yelp/android/al/b;Z)V
    .locals 3

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->s()Lcom/yelp/android/an/a;

    move-result-object v0

    new-instance v1, Lcom/comscore/utils/r;

    invoke-direct {v1, p0, p1}, Lcom/comscore/utils/r;-><init>(Lcom/comscore/utils/j;Lcom/yelp/android/al/b;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ag()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/al/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/j;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ac()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->DISABLED:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->aa()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ns_ts"

    invoke-static {p1, v0}, Lcom/comscore/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/utils/j;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/comscore/utils/j;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/comscore/utils/j;->b()I

    move-result v2

    if-ge v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    const v3, 0x8000

    invoke-static {v2, v0, v3, v1}, Lcom/comscore/utils/i;->a(Lcom/comscore/analytics/a;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/utils/j;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "The newest cache batch file is full"

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/utils/j;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/comscore/utils/j;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/comscore/utils/j;->b()I

    move-result v2

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reached the cache max ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comscore/utils/j;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/utils/j;->m()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/comscore/utils/j;->a(Ljava/lang/String;Z)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/comscore/utils/j;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/comscore/utils/j;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/comscore/utils/j;->c:I

    return v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_0

    iput p1, p0, Lcom/comscore/utils/j;->c:I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/comscore/utils/j;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()I
    .locals 3

    invoke-direct {p0}, Lcom/comscore/utils/j;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/utils/j;->e(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/comscore/utils/j;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/comscore/utils/j;->b()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/comscore/utils/j;->d:I

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/comscore/utils/j;->e:J

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/comscore/utils/j;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/comscore/utils/j;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/comscore/utils/j;->a(Ljava/lang/String;Z)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/comscore/utils/j;->f:J

    goto :goto_0
.end method

.method public declared-synchronized f()Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->ao()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v3

    invoke-direct {p0}, Lcom/comscore/utils/j;->k()V

    iget-wide v4, p0, Lcom/comscore/utils/j;->e:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/comscore/utils/j;->l:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    cmp-long v1, v4, v10

    if-gtz v1, :cond_6

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/comscore/utils/j;->l:J

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/comscore/utils/j;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cache is not empty, contains "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/comscore/utils/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " files"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/comscore/utils/j;->j:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/comscore/utils/j;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reading events from the file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/comscore/utils/j;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v2, v4

    if-lez v2, :cond_3

    const-string/jumbo v2, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v3, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v3, v2}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v4, v2}, Lcom/comscore/utils/o;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/comscore/utils/j;->j:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lcom/comscore/utils/j;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/comscore/utils/j;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/comscore/utils/j;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/comscore/utils/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/comscore/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/comscore/utils/j;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/utils/j;->k:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/comscore/utils/j;->a(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/comscore/utils/j;->i()V

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/comscore/utils/j;->m:J

    const-string/jumbo v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v3, v1}, Lcom/comscore/utils/m;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v1

    const-string/jumbo v2, "lastMeasurementProcessedTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    const-string/jumbo v2, "0"

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/comscore/utils/j;->l:J

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-double v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected g()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/comscore/utils/j;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comscore/utils/j;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_6

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v4}, Lcom/comscore/analytics/a;->aa()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "c2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_1
    const-string/jumbo v4, "JetportGotAMaskOfThe%sS.D_K-"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v5}, Lcom/comscore/analytics/a;->U()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "US"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/comscore/utils/j;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ae()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "https://udm.scorecardresearch.com/offline"

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "http://udm.scorecardresearch.com/offline"

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_1
.end method
