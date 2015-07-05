.class public Lcom/kahuna/sdk/aj;
.super Ljava/lang/Object;
.source "KahunaUtils.java"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/aj;->a:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/aj;->b:Ljava/util/Map;

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 132
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    const-string/jumbo v0, ""

    .line 163
    :goto_0
    return-object v0

    .line 138
    :cond_1
    if-eqz p2, :cond_2

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 145
    :try_start_0
    const-string/jumbo v2, "SHA-1"

    .line 146
    const-string/jumbo v3, "MD5"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    const-string/jumbo v2, "MD5"

    .line 150
    :cond_3
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 151
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 152
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 153
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_1
    if-eqz v1, :cond_4

    .line 160
    const-string/jumbo v0, ""

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    const/4 v1, 0x1

    goto :goto_1

    .line 163
    :cond_4
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    array-length v6, p0

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v7, p0, v4

    .line 170
    ushr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0xf

    move v1, v2

    .line 173
    :goto_1
    if-ltz v0, :cond_0

    const/16 v3, 0x9

    if-gt v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    and-int/lit8 v3, v7, 0xf

    .line 175
    add-int/lit8 v0, v1, 0x1

    const/4 v8, 0x1

    if-lt v1, v8, :cond_2

    .line 169
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 173
    :cond_0
    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_2

    .line 177
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v1, v0

    move v0, v3

    goto :goto_1
.end method

.method protected static a()V
    .locals 2

    .prologue
    .line 181
    sget-object v1, Lcom/kahuna/sdk/aj;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/aj;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 74
    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 79
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 81
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    move v2, v1

    .line 83
    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_1

    .line 85
    new-instance v0, Ljava/io/ByteArrayInputStream;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    invoke-virtual {v4, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 87
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "CN=Android Debug,O=Android"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 96
    :goto_1
    return v0

    .line 83
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 53
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-static {p0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 211
    :goto_0
    return v0

    .line 192
    :cond_1
    const/4 v0, 0x0

    .line 193
    :try_start_0
    sget-object v2, Lcom/kahuna/sdk/aj;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :try_start_1
    sget-object v3, Lcom/kahuna/sdk/aj;->b:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    sget-object v0, Lcom/kahuna/sdk/aj;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 198
    :cond_2
    if-nez v0, :cond_3

    .line 199
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 200
    sget-object v3, Lcom/kahuna/sdk/aj;->b:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_4

    .line 208
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Caught invalid regex Pattern exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    .line 211
    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Z
    .locals 1

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, ""

    .line 118
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 125
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method
