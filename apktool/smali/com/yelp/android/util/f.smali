.class public final Lcom/yelp/android/util/f;
.super Ljava/lang/Object;
.source "DataUtils.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/util/f;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p2}, Lcom/yelp/android/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 81
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .prologue
    .line 134
    :try_start_0
    invoke-static {p0}, Lcom/yelp/android/util/g;->a(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v0, Ljava/io/File;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Android"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "cache"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 166
    .line 168
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 170
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 172
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 173
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    :goto_1
    :try_start_2
    const-string/jumbo v3, "MD5"

    invoke-static {v3, v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    if-eqz v2, :cond_0

    .line 186
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 192
    :cond_0
    :goto_2
    return-object v0

    .line 175
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 176
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/f;->a([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 185
    if-eqz v2, :cond_0

    .line 186
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 188
    :catch_1
    move-exception v1

    .line 189
    invoke-static {v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_2

    .line 188
    :catch_2
    move-exception v1

    .line 189
    invoke-static {v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_2

    .line 179
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 180
    :goto_3
    :try_start_6
    const-string/jumbo v3, "MD5"

    invoke-static {v3, v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 185
    if-eqz v2, :cond_0

    .line 186
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 188
    :catch_4
    move-exception v1

    .line 189
    invoke-static {v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_2

    .line 181
    :catch_5
    move-exception v1

    move-object v2, v0

    .line 182
    :goto_4
    :try_start_8
    const-string/jumbo v3, "MD5"

    invoke-static {v3, v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 185
    if-eqz v2, :cond_0

    .line 186
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 188
    :catch_6
    move-exception v1

    .line 189
    invoke-static {v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_2

    .line 184
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 185
    :goto_5
    if-eqz v2, :cond_2

    .line 186
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 190
    :cond_2
    :goto_6
    throw v0

    .line 188
    :catch_7
    move-exception v1

    .line 189
    invoke-static {v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_6

    .line 184
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 181
    :catch_8
    move-exception v1

    goto :goto_4

    .line 179
    :catch_9
    move-exception v1

    goto :goto_3

    .line 177
    :catch_a
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 215
    array-length v2, p0

    .line 216
    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    .line 218
    :goto_0
    if-ge v1, v2, :cond_0

    .line 219
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/yelp/android/util/f;->a:[C

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v3, v0

    .line 220
    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/yelp/android/util/f;->a:[C

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "[TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/yelp/android/util/f;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>([I[TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    if-nez p0, :cond_1

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    :cond_0
    return-object v0

    .line 101
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 103
    aget-object v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 62
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 63
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    return-void

    .line 31
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 52
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;)[I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    if-nez p0, :cond_0

    .line 86
    new-array v0, v0, [I

    .line 94
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v2, v1, [I

    .line 90
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aput v0, v2, v1

    .line 92
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 93
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 94
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/f;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    .line 206
    const/4 v0, 0x0

    goto :goto_0
.end method
