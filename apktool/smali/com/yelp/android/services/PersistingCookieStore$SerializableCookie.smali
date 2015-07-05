.class Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;
.super Ljava/lang/Object;
.source "PersistingCookieStore.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/http/cookie/Cookie;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mComment:Ljava/lang/String;

.field private mCommentUrl:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mExpiryDate:Ljava/util/Date;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPorts:[I

.field private mSecure:Z

.field private mValue:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;ZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mName:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mComment:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mPorts:[I

    .line 220
    iput-object p4, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mDomain:Ljava/lang/String;

    .line 221
    iput-boolean p5, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mSecure:Z

    .line 222
    iput-object p6, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mPath:Ljava/lang/String;

    .line 223
    iput-object p7, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mExpiryDate:Ljava/util/Date;

    .line 224
    iput-object p8, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mValue:Ljava/lang/String;

    .line 225
    iput p9, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mVersion:I

    .line 226
    iput-object p10, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mCommentUrl:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/cookie/Cookie;)V
    .locals 11

    .prologue
    .line 201
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v5

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v9

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getCommentURL()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;-><init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;ZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mCommentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mExpiryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mPorts:[I

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mVersion:I

    return v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mExpiryDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/yelp/android/services/PersistingCookieStore$SerializableCookie;->mSecure:Z

    return v0
.end method
