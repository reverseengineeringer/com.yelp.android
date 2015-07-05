.class public Lcom/yelp/android/services/PersistingCookieStore;
.super Lorg/apache/http/impl/client/BasicCookieStore;
.source "PersistingCookieStore.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljavax/crypto/SecretKey;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/yelp/android/services/PersistingCookieStore;->b:Ljavax/crypto/SecretKey;

    .line 48
    iput-object p1, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    .line 54
    new-instance v0, Lcom/yelp/android/services/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/g;-><init>(Lcom/yelp/android/services/PersistingCookieStore;)V

    invoke-virtual {v0}, Lcom/yelp/android/services/g;->start()V

    .line 60
    return-void
.end method


# virtual methods
.method a(Ljava/io/File;)Ljava/io/ObjectInputStream;
    .locals 5

    .prologue
    .line 142
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/services/PersistingCookieStore;->b:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/CBC/PKCS5Padding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 144
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/yelp/android/services/PersistingCookieStore;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/PersistingCookieStore;->b(Ljava/io/File;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 145
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 146
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 7

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/yelp/android/services/PersistingCookieStore;->a(Ljava/io/File;)Ljava/io/ObjectInputStream;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 72
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 73
    invoke-interface {v0, v2}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 68
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_1
    invoke-super {p0, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_2
    invoke-static {v0}, Lcom/crashlytics/android/d;->a(Ljava/lang/Throwable;)V

    .line 80
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_2
    monitor-exit p0

    return-void
.end method

.method a(Lorg/apache/http/cookie/Cookie;)V
    .locals 3

    .prologue
    .line 106
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/PersistingCookieStore;->b(Lorg/apache/http/cookie/Cookie;)V

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/PersistingCookieStore;->c(Lorg/apache/http/cookie/Cookie;)Landroid/util/Pair;

    move-result-object v1

    .line 113
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/ObjectOutputStream;

    new-instance v2, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;

    invoke-direct {v2, p1}, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;-><init>(Lorg/apache/http/cookie/Cookie;)V

    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 114
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 115
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 116
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {v0}, Lcom/crashlytics/android/d;->a(Ljava/lang/Throwable;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/PersistingCookieStore;->b(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0
.end method

.method public declared-synchronized addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/PersistingCookieStore;->a(Lorg/apache/http/cookie/Cookie;)V

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addCookies([Lorg/apache/http/cookie/Cookie;)V
    .locals 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 97
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {p0, v2}, Lcom/yelp/android/services/PersistingCookieStore;->a(Lorg/apache/http/cookie/Cookie;)V

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookies([Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ljava/io/File;)Ljavax/crypto/spec/IvParameterSpec;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 151
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 152
    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v1
.end method

.method b(Lorg/apache/http/cookie/Cookie;)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 128
    :cond_0
    return-void
.end method

.method c(Lorg/apache/http/cookie/Cookie;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/cookie/Cookie;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/ObjectOutputStream;",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 133
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yelp/android/services/PersistingCookieStore;->b:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/CBC/PKCS5Padding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 136
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/services/PersistingCookieStore;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/PersistingCookieStore;->b(Ljava/io/File;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 137
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 138
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized clear()V
    .locals 5

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_1

    .line 160
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 161
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 173
    :cond_2
    invoke-super {p0}, Lorg/apache/http/impl/client/BasicCookieStore;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
