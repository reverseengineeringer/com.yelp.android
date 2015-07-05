.class public final Lcom/yelp/android/util/m;
.super Ljava/lang/Object;
.source "HttpUtils.java"


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

    sput-object v0, Lcom/yelp/android/util/m;->a:[B

    .line 46
    const-string/jumbo v0, "----------------314159265358979323846"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/m;->b:[B

    .line 48
    const-string/jumbo v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/m;->c:[B

    .line 49
    const-string/jumbo v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/m;->d:[B

    .line 50
    const-string/jumbo v0, "Content-Disposition: form-data; name=\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/m;->e:[B

    .line 52
    const-string/jumbo v0, "; filename=\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/m;->f:[B

    .line 53
    const-string/jumbo v0, "Content-Type: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/m;->g:[B

    .line 55
    const-string/jumbo v0, "text/plain"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/m;->h:[B

    .line 57
    const-string/jumbo v0, "image"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/m;->i:[B

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/yelp/android/util/m;->a:[B

    array-length v0, v0

    sget-object v1, Lcom/yelp/android/util/m;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/m;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/m;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/m;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(I[B[B)I
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lcom/yelp/android/util/m;->a:[B

    array-length v0, v0

    sget-object v1, Lcom/yelp/android/util/m;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/m;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/m;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/m;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/m;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/yelp/android/util/m;->a:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    .line 110
    if-eqz p1, :cond_0

    .line 111
    sget-object v1, Lcom/yelp/android/util/m;->f:[B

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    sget-object v2, Lcom/yelp/android/util/m;->d:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    .line 114
    sget-object v1, Lcom/yelp/android/util/m;->a:[B

    array-length v1, v1

    sget-object v2, Lcom/yelp/android/util/m;->g:[B

    array-length v2, v2

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 116
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
    .line 230
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 231
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 235
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

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 218
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 219
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 220
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 221
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 222
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 223
    new-instance v7, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v7, v6, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return-object v2
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

    .line 185
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 190
    if-nez v3, :cond_1

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 194
    :cond_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 195
    const/4 v0, 0x0

    .line 197
    :cond_2
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 198
    if-ne v1, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 200
    :cond_3
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 201
    if-gt v2, v1, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    move v2, v1

    .line 205
    :cond_5
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v1, 0x1

    .line 210
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 212
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/yelp/android/util/m;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 133
    sget-object v0, Lcom/yelp/android/util/m;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    sget-object v0, Lcom/yelp/android/util/m;->b:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 135
    sget-object v0, Lcom/yelp/android/util/m;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 136
    sget-object v0, Lcom/yelp/android/util/m;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 137
    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/io/InputStream;[B[B[BLcom/yelp/android/util/n;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 74
    sget-object v0, Lcom/yelp/android/util/m;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 75
    sget-object v0, Lcom/yelp/android/util/m;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 76
    sget-object v0, Lcom/yelp/android/util/m;->b:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 77
    sget-object v0, Lcom/yelp/android/util/m;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 78
    sget-object v0, Lcom/yelp/android/util/m;->e:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 79
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 80
    sget-object v0, Lcom/yelp/android/util/m;->d:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 81
    if-eqz p3, :cond_0

    .line 82
    sget-object v0, Lcom/yelp/android/util/m;->f:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 83
    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 84
    sget-object v0, Lcom/yelp/android/util/m;->d:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 86
    :cond_0
    if-eqz p4, :cond_1

    .line 87
    sget-object v0, Lcom/yelp/android/util/m;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 88
    sget-object v0, Lcom/yelp/android/util/m;->g:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 89
    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write([B)V

    .line 91
    :cond_1
    sget-object v0, Lcom/yelp/android/util/m;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 92
    sget-object v0, Lcom/yelp/android/util/m;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    const/16 v0, 0x400

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 94
    new-array v3, v2, [B

    move v0, v1

    .line 97
    :cond_2
    :goto_0
    invoke-virtual {p1, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_3

    .line 98
    invoke-virtual {p0, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 99
    add-int/2addr v0, v4

    .line 100
    if-eqz p5, :cond_2

    .line 101
    invoke-interface {p5, v0}, Lcom/yelp/android/util/n;->a(I)V

    goto :goto_0

    .line 104
    :cond_3
    return-void
.end method
