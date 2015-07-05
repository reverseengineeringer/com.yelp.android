.class public Lcom/ooyala/android/OoyalaAPIClient;
.super Ljava/lang/Object;
.source "OoyalaAPIClient.java"


# instance fields
.field private _playerAPI:Lcom/ooyala/android/PlayerAPIClient;

.field private _secureUrlGenerator:Lcom/ooyala/android/SecureURLGenerator;


# direct methods
.method constructor <init>(Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    .line 14
    iput-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_secureUrlGenerator:Lcom/ooyala/android/SecureURLGenerator;

    .line 63
    iput-object p1, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/SecureURLGenerator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p2, p3}, Lcom/ooyala/android/OoyalaAPIClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/ooyala/android/OoyalaAPIClient;->_secureUrlGenerator:Lcom/ooyala/android/SecureURLGenerator;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ooyala/android/SignatureGenerator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;

    invoke-direct {v0, p1, p2}, Lcom/ooyala/android/EmbeddedSecureURLGenerator;-><init>(Ljava/lang/String;Lcom/ooyala/android/SignatureGenerator;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/ooyala/android/OoyalaAPIClient;-><init>(Lcom/ooyala/android/SecureURLGenerator;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/ooyala/android/PlayerAPIClient;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/ooyala/android/PlayerAPIClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaAPIClient;-><init>(Lcom/ooyala/android/PlayerAPIClient;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/ooyala/android/EmbeddedSecureURLGenerator;

    invoke-direct {v0, p1, p2}, Lcom/ooyala/android/EmbeddedSecureURLGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/ooyala/android/OoyalaAPIClient;-><init>(Lcom/ooyala/android/SecureURLGenerator;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/PlayerAPIClient;->cancel(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public contentTree(Ljava/util/List;)Lcom/ooyala/android/ContentItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ooyala/android/ContentItem;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/PlayerAPIClient;->contentTree(Ljava/util/List;)Lcom/ooyala/android/ContentItem;

    move-result-object v0

    return-object v0
.end method

.method public contentTree(Ljava/util/List;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/ContentTreeCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0, p1, p2}, Lcom/ooyala/android/PlayerAPIClient;->contentTree(Ljava/util/List;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contentTreeByExternalIds(Ljava/util/List;)Lcom/ooyala/android/ContentItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ooyala/android/ContentItem;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeByExternalIds(Ljava/util/List;)Lcom/ooyala/android/ContentItem;

    move-result-object v0

    return-object v0
.end method

.method public contentTreeByExternalIds(Ljava/util/List;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/ContentTreeCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0, p1, p2}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeByExternalIds(Ljava/util/List;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contentTreeNext(Lcom/ooyala/android/PaginatedParentItem;)Lcom/ooyala/android/PaginatedItemResponse;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeNext(Lcom/ooyala/android/PaginatedParentItem;)Lcom/ooyala/android/PaginatedItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public contentTreeNext(Lcom/ooyala/android/PaginatedParentItem;Lcom/ooyala/android/ContentTreeNextCallback;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0, p1, p2}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeNext(Lcom/ooyala/android/PaginatedParentItem;Lcom/ooyala/android/ContentTreeNextCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;)Lcom/ooyala/android/ContentItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ooyala/android/ContentItem;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0, p1, p2}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;)Lcom/ooyala/android/ContentItem;

    move-result-object v0

    return-object v0
.end method

.method public contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ooyala/android/ContentTreeCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0}, Lcom/ooyala/android/PlayerAPIClient;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_playerAPI:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0}, Lcom/ooyala/android/PlayerAPIClient;->getPcode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSecureURLGenerator()Lcom/ooyala/android/SecureURLGenerator;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_secureUrlGenerator:Lcom/ooyala/android/SecureURLGenerator;

    return-object v0
.end method

.method public objectFromBacklotAPI(Ljava/lang/String;Ljava/util/Map;Lcom/ooyala/android/ObjectFromBacklotAPICallback;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/ObjectFromBacklotAPICallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;

    invoke-direct {v0, p0, p3}, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;-><init>(Lcom/ooyala/android/OoyalaAPIClient;Lcom/ooyala/android/ObjectFromBacklotAPICallback;)V

    .line 215
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    return-object v0
.end method

.method public objectFromBacklotAPI(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_secureUrlGenerator:Lcom/ooyala/android/SecureURLGenerator;

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Backlot APIs are not supported without a SecureURLGenerator or apikey/secret"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient;->_secureUrlGenerator:Lcom/ooyala/android/SecureURLGenerator;

    sget-object v1, Lcom/ooyala/android/Constants;->BACKLOT_HOST:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/ooyala/android/SecureURLGenerator;->secureURL(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/ooyala/android/OoyalaAPIHelper;->objectForAPI(Ljava/net/URL;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method
