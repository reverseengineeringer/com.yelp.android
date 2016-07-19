.class public Lcom/yelp/android/util/j;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/util/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/util/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yelp/android/util/g$a;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/g$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/util/j$a;",
            ">;",
            "Lcom/yelp/android/util/g$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 75
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/yelp/android/util/j;->a:Ljava/util/Collection;

    .line 77
    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/yelp/android/util/j;->b:Ljava/util/Collection;

    .line 81
    iput-object p3, p0, Lcom/yelp/android/util/j;->c:Lcom/yelp/android/util/g$a;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/util/g;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setChunked(Z)V

    .line 85
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yelp/android/util/j;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/util/j$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/util/j;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    invoke-virtual {p0, v0}, Lcom/yelp/android/util/j;->writeTo(Ljava/io/OutputStream;)V

    .line 94
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    return-object v1
.end method

.method public getContentLength()J
    .locals 8

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    .line 101
    iget-object v2, p0, Lcom/yelp/android/util/j;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 102
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x0

    sget-object v6, Lcom/yelp/android/util/g;->h:[B

    invoke-static {v1, v5, v6}, Lcom/yelp/android/util/g;->a(I[B[B)I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 105
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    .line 111
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/j;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/j$a;

    .line 113
    iget-object v4, v0, Lcom/yelp/android/util/j$a;->a:[B

    array-length v4, v4

    iget-object v5, v0, Lcom/yelp/android/util/j$a;->b:[B

    iget-object v6, v0, Lcom/yelp/android/util/j$a;->c:[B

    invoke-static {v4, v5, v6}, Lcom/yelp/android/util/g;->a(I[B[B)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 114
    iget-wide v4, v0, Lcom/yelp/android/util/j$a;->e:J

    add-long/2addr v2, v4

    .line 115
    goto :goto_2

    .line 116
    :cond_1
    invoke-static {}, Lcom/yelp/android/util/g;->a()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 117
    return-wide v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/yelp/android/util/j;->a:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yelp/android/util/j;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 139
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v4, Lcom/yelp/android/util/g;->h:[B

    move-object v0, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;[B[B[BLcom/yelp/android/util/g$a;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/j;->b:Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/yelp/android/util/j;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/j$a;

    .line 150
    iget-object v1, v0, Lcom/yelp/android/util/j$a;->d:Ljava/io/InputStream;

    iget-object v2, v0, Lcom/yelp/android/util/j$a;->a:[B

    iget-object v3, v0, Lcom/yelp/android/util/j$a;->b:[B

    iget-object v4, v0, Lcom/yelp/android/util/j$a;->c:[B

    iget-object v5, p0, Lcom/yelp/android/util/j;->c:Lcom/yelp/android/util/g$a;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;[B[B[BLcom/yelp/android/util/g$a;)V

    goto :goto_1

    .line 159
    :cond_1
    invoke-static {p1}, Lcom/yelp/android/util/g;->a(Ljava/io/OutputStream;)V

    .line 160
    return-void
.end method
