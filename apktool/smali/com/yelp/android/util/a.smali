.class public Lcom/yelp/android/util/a;
.super Ljava/lang/Object;
.source "APIUtil.java"


# direct methods
.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 29
    :try_start_0
    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    if-nez v1, :cond_0

    .line 46
    const/16 v1, 0x26

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const/4 v0, 0x0

    move v1, v0

    .line 51
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string/jumbo v1, "HTTP_UTILS"

    const-string/jumbo v2, "Could not initialize efs cipher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "EFS is not supported by this system"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 53
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    const/4 v0, 0x0

    .line 56
    :try_start_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {}, Lcom/yelp/android/services/x;->i()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 58
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 60
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 61
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/yelp/android/services/a;->a([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 68
    :goto_1
    return-object v0

    .line 64
    :catch_1
    move-exception v1

    .line 65
    const-string/jumbo v2, "HTTP_UTILS"

    const-string/jumbo v3, "efs encountered an issue encoding parameter"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
