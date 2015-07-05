.class public Lcom/yelp/android/services/a;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static a:[C

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v1, 0x0

    .line 41
    new-array v0, v5, [C

    sput-object v0, Lcom/yelp/android/services/a;->a:[C

    .line 44
    const/16 v0, 0x41

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 45
    sget-object v4, Lcom/yelp/android/services/a;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 44
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_0

    .line 46
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 47
    sget-object v4, Lcom/yelp/android/services/a;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 46
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1

    .line 48
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 49
    sget-object v4, Lcom/yelp/android/services/a;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 48
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2

    .line 50
    :cond_2
    sget-object v0, Lcom/yelp/android/services/a;->a:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    .line 51
    sget-object v0, Lcom/yelp/android/services/a;->a:[C

    add-int/lit8 v2, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    .line 55
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/yelp/android/services/a;->b:[B

    move v0, v1

    .line 57
    :goto_3
    sget-object v2, Lcom/yelp/android/services/a;->b:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 58
    sget-object v2, Lcom/yelp/android/services/a;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 59
    :cond_3
    :goto_4
    if-ge v1, v5, :cond_4

    .line 60
    sget-object v0, Lcom/yelp/android/services/a;->b:[B

    sget-object v2, Lcom/yelp/android/services/a;->a:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 61
    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/services/a;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a([C)[B
    .locals 12

    .prologue
    const/16 v2, 0x41

    const/4 v0, 0x0

    const/16 v11, 0x7f

    .line 151
    array-length v1, p0

    .line 152
    rem-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_a

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :goto_0
    if-lez v6, :cond_0

    add-int/lit8 v1, v6, -0x1

    aget-char v1, p0, v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_0

    .line 156
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    goto :goto_0

    .line 157
    :cond_0
    mul-int/lit8 v1, v6, 0x3

    div-int/lit8 v7, v1, 0x4

    .line 158
    new-array v8, v7, [B

    move v5, v0

    .line 161
    :goto_1
    if-ge v0, v6, :cond_7

    .line 162
    add-int/lit8 v1, v0, 0x1

    aget-char v9, p0, v0

    .line 163
    add-int/lit8 v0, v1, 0x1

    aget-char v10, p0, v1

    .line 164
    if-ge v0, v6, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v4, v0

    move v0, v1

    .line 165
    :goto_2
    if-ge v0, v6, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v3, v1

    .line 166
    :goto_3
    if-gt v9, v11, :cond_1

    if-gt v10, v11, :cond_1

    if-gt v4, v11, :cond_1

    if-le v0, v11, :cond_4

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v4, v2

    .line 164
    goto :goto_2

    :cond_3
    move v3, v0

    move v0, v2

    .line 165
    goto :goto_3

    .line 168
    :cond_4
    sget-object v1, Lcom/yelp/android/services/a;->b:[B

    aget-byte v1, v1, v9

    .line 169
    sget-object v9, Lcom/yelp/android/services/a;->b:[B

    aget-byte v9, v9, v10

    .line 170
    sget-object v10, Lcom/yelp/android/services/a;->b:[B

    aget-byte v4, v10, v4

    .line 171
    sget-object v10, Lcom/yelp/android/services/a;->b:[B

    aget-byte v0, v10, v0

    .line 172
    if-ltz v1, :cond_5

    if-ltz v9, :cond_5

    if-ltz v4, :cond_5

    if-gez v0, :cond_6

    .line 173
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_6
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v10, v9, 0x4

    or-int/2addr v1, v10

    .line 175
    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v10, v4, 0x2

    or-int/2addr v9, v10

    .line 176
    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    .line 177
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v8, v5

    .line 178
    if-ge v0, v7, :cond_9

    .line 179
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v9

    aput-byte v5, v8, v0

    .line 180
    :goto_4
    if-ge v1, v7, :cond_8

    .line 181
    add-int/lit8 v0, v1, 0x1

    int-to-byte v4, v4

    aput-byte v4, v8, v1

    :goto_5
    move v5, v0

    move v0, v3

    .line 182
    goto :goto_1

    .line 183
    :cond_7
    return-object v8

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v1, v0

    goto :goto_4

    :cond_a
    move v6, v1

    goto/16 :goto_0
.end method

.method public static a([B)[C
    .locals 1

    .prologue
    .line 82
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/yelp/android/services/a;->a([BI)[C

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)[C
    .locals 12

    .prologue
    const/16 v3, 0x3d

    const/4 v1, 0x0

    .line 94
    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    .line 95
    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 96
    new-array v7, v0, [C

    move v5, v1

    move v2, v1

    .line 99
    :goto_0
    if-ge v2, p1, :cond_4

    .line 100
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v8, v2, 0xff

    .line 101
    if-ge v0, p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    .line 102
    :goto_1
    if-ge v0, p1, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 103
    :goto_2
    ushr-int/lit8 v9, v8, 0x2

    .line 104
    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    ushr-int/lit8 v10, v4, 0x4

    or-int/2addr v8, v10

    .line 105
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v10, v0, 0x6

    or-int/2addr v4, v10

    .line 106
    and-int/lit8 v10, v0, 0x3f

    .line 107
    add-int/lit8 v0, v5, 0x1

    sget-object v11, Lcom/yelp/android/services/a;->a:[C

    aget-char v9, v11, v9

    aput-char v9, v7, v5

    .line 108
    add-int/lit8 v5, v0, 0x1

    sget-object v9, Lcom/yelp/android/services/a;->a:[C

    aget-char v8, v9, v8

    aput-char v8, v7, v0

    .line 109
    if-ge v5, v6, :cond_2

    sget-object v0, Lcom/yelp/android/services/a;->a:[C

    aget-char v0, v0, v4

    :goto_3
    aput-char v0, v7, v5

    .line 110
    add-int/lit8 v4, v5, 0x1

    .line 111
    if-ge v4, v6, :cond_3

    sget-object v0, Lcom/yelp/android/services/a;->a:[C

    aget-char v0, v0, v10

    :goto_4
    aput-char v0, v7, v4

    .line 112
    add-int/lit8 v0, v4, 0x1

    move v5, v0

    .line 113
    goto :goto_0

    :cond_0
    move v4, v1

    .line 101
    goto :goto_1

    :cond_1
    move v2, v0

    move v0, v1

    .line 102
    goto :goto_2

    :cond_2
    move v0, v3

    .line 109
    goto :goto_3

    :cond_3
    move v0, v3

    .line 111
    goto :goto_4

    .line 114
    :cond_4
    return-object v7
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/yelp/android/services/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/a;->a([C)[B

    move-result-object v0

    return-object v0
.end method
