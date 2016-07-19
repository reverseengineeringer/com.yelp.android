.class public final Lcom/yelp/android/util/g;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/util/g$a;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/g;->a:[B

    .line 46
    const-string/jumbo v0, "----------------314159265358979323846"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/g;->b:[B

    .line 48
    const-string/jumbo v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/g;->c:[B

    .line 49
    const-string/jumbo v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/g;->d:[B

    .line 50
    const-string/jumbo v0, "Content-Disposition: form-data; name=\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/g;->e:[B

    .line 52
    const-string/jumbo v0, "; filename=\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/g;->f:[B

    .line 53
    const-string/jumbo v0, "Content-Type: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/g;->g:[B

    .line 55
    const-string/jumbo v0, "text/plain"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/g;->h:[B

    .line 57
    const-string/jumbo v0, "image"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/g;->i:[B

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/yelp/android/util/g;->a:[B

    array-length v0, v0

    sget-object v1, Lcom/yelp/android/util/g;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/g;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/g;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/g;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(I[B[B)I
    .locals 3

    .prologue
    .line 112
    sget-object v0, Lcom/yelp/android/util/g;->a:[B

    array-length v0, v0

    sget-object v1, Lcom/yelp/android/util/g;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/g;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/g;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/g;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/g;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/g;->a:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    .line 121
    if-eqz p1, :cond_0

    .line 122
    sget-object v1, Lcom/yelp/android/util/g;->f:[B

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    sget-object v2, Lcom/yelp/android/util/g;->d:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 124
    :cond_0
    if-eqz p2, :cond_1

    .line 125
    sget-object v1, Lcom/yelp/android/util/g;->a:[B

    array-length v1, v1

    sget-object v2, Lcom/yelp/android/util/g;->g:[B

    array-length v2, v2

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 127
    :cond_1
    return v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 250
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 237
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 238
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 239
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 240
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 241
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 242
    new-instance v7, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v7, v6, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    return-object v2
.end method

.method public static a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p0}, Lcom/yelp/android/util/g;->c(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    .line 263
    if-nez v0, :cond_0

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    .line 268
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_1

    .line 272
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_1
    :goto_1
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_2

    .line 280
    check-cast p0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 284
    instance-of v1, v0, Lcom/yelp/android/util/j;

    if-eqz v1, :cond_3

    .line 285
    check-cast v0, Lcom/yelp/android/util/j;

    .line 286
    invoke-virtual {v0}, Lcom/yelp/android/util/j;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    :cond_2
    :goto_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 302
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 303
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string/jumbo v1, "HttpUtils"

    const-string/jumbo v3, "Error in parsing query parameters."

    invoke-static {v1, v3, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 287
    :cond_3
    if-eqz v0, :cond_2

    .line 289
    :try_start_1
    invoke-static {v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_2

    .line 291
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 293
    :catch_1
    move-exception v0

    .line 295
    const-string/jumbo v1, "HttpUtils"

    const-string/jumbo v3, "Error in parsing post parameters."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 306
    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 204
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 209
    if-nez v3, :cond_1

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 213
    :cond_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 214
    const/4 v0, 0x0

    .line 216
    :cond_2
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 217
    if-ne v1, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 219
    :cond_3
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 220
    if-gt v2, v1, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    move v2, v1

    .line 224
    :cond_5
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v1, 0x1

    .line 229
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 231
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/yelp/android/util/g;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 147
    sget-object v0, Lcom/yelp/android/util/g;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 148
    sget-object v0, Lcom/yelp/android/util/g;->b:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 149
    sget-object v0, Lcom/yelp/android/util/g;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 150
    sget-object v0, Lcom/yelp/android/util/g;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 151
    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/io/InputStream;[B[B[BLcom/yelp/android/util/g$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    sget-object v0, Lcom/yelp/android/util/g;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 80
    sget-object v0, Lcom/yelp/android/util/g;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 81
    sget-object v0, Lcom/yelp/android/util/g;->b:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 82
    sget-object v0, Lcom/yelp/android/util/g;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 83
    sget-object v0, Lcom/yelp/android/util/g;->e:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 84
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 85
    sget-object v0, Lcom/yelp/android/util/g;->d:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 86
    if-eqz p3, :cond_0

    .line 87
    sget-object v0, Lcom/yelp/android/util/g;->f:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 88
    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 89
    sget-object v0, Lcom/yelp/android/util/g;->d:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 91
    :cond_0
    if-eqz p4, :cond_1

    .line 92
    sget-object v0, Lcom/yelp/android/util/g;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    sget-object v0, Lcom/yelp/android/util/g;->g:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 94
    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write([B)V

    .line 96
    :cond_1
    sget-object v0, Lcom/yelp/android/util/g;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 97
    sget-object v0, Lcom/yelp/android/util/g;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 98
    const/16 v0, 0x400

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 99
    new-array v3, v2, [B

    move v0, v1

    .line 102
    :cond_2
    :goto_0
    invoke-virtual {p1, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_3

    .line 103
    invoke-virtual {p0, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 104
    add-int/2addr v0, v4

    .line 105
    if-eqz p5, :cond_2

    .line 106
    invoke-interface {p5, v0}, Lcom/yelp/android/util/g$a;->a(I)V

    goto :goto_0

    .line 109
    :cond_3
    return-void
.end method

.method public static b(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpPost;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 340
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 317
    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 318
    instance-of v2, v0, Lcom/yelp/android/util/j;

    if-eqz v2, :cond_2

    .line 319
    check-cast v0, Lcom/yelp/android/util/j;

    .line 321
    :try_start_0
    invoke-virtual {v0}, Lcom/yelp/android/util/j;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/j$a;

    .line 322
    iget-object v0, v0, Lcom/yelp/android/util/j$a;->d:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/yelp/android/util/e;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    const-string/jumbo v0, "HttpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error occurred while retrieving contents from request:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/yelp/android/util/StringUtils;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    move-object v0, v1

    .line 340
    goto :goto_0

    .line 332
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/e;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 333
    :catch_1
    move-exception v0

    .line 334
    const-string/jumbo v0, "HttpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error occurred while retrieving contents from request:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/yelp/android/util/StringUtils;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static c(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 351
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    const-string/jumbo v2, "HttpUtils"

    const-string/jumbo v3, "Could not retrieve the url from the request."

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
