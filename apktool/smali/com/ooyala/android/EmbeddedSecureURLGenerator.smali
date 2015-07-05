.class Lcom/ooyala/android/EmbeddedSecureURLGenerator;
.super Ljava/lang/Object;
.source "EmbeddedSecureURLGenerator.java"

# interfaces
.implements Lcom/ooyala/android/SecureURLGenerator;


# instance fields
.field private _apiKey:Ljava/lang/String;

.field private _signatureGenerator:Lcom/ooyala/android/SignatureGenerator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ooyala/android/SignatureGenerator;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_apiKey:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_signatureGenerator:Lcom/ooyala/android/SignatureGenerator;

    .line 18
    iput-object p1, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_apiKey:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_signatureGenerator:Lcom/ooyala/android/SignatureGenerator;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_apiKey:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_signatureGenerator:Lcom/ooyala/android/SignatureGenerator;

    .line 13
    iput-object p1, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_apiKey:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/ooyala/android/EmbeddedSignatureGenerator;

    invoke-direct {v0, p2}, Lcom/ooyala/android/EmbeddedSignatureGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_signatureGenerator:Lcom/ooyala/android/SignatureGenerator;

    .line 15
    return-void
.end method

.method private genStringToSign(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/ooyala/android/Utils;->getParamsString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public secureURL(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x12c

    .line 23
    .line 24
    if-nez p3, :cond_1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string/jumbo v1, "api_key"

    iget-object v2, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_apiKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    .line 28
    const-string/jumbo v1, "expires"

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_signatureGenerator:Lcom/ooyala/android/SignatureGenerator;

    const-string/jumbo v3, "GET"

    invoke-direct {p0, p2, v0, v3}, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->genStringToSign(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ooyala/android/SignatureGenerator;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/ooyala/android/Utils;->makeURL(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 33
    const-string/jumbo v1, "signature"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    const-string/jumbo v1, "api_key"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    const-string/jumbo v1, "api_key"

    iget-object v2, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_apiKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_2
    const-string/jumbo v1, "expires"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 38
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    .line 39
    const-string/jumbo v1, "expires"

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_3
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->_signatureGenerator:Lcom/ooyala/android/SignatureGenerator;

    const-string/jumbo v3, "GET"

    invoke-direct {p0, p2, v0, v3}, Lcom/ooyala/android/EmbeddedSecureURLGenerator;->genStringToSign(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ooyala/android/SignatureGenerator;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
