.class public abstract Lcom/ooyala/android/ContentItem;
.super Ljava/lang/Object;
.source "ContentItem.java"

# interfaces
.implements Lcom/ooyala/android/AuthorizableItemInternal;
.implements Lcom/ooyala/android/OrderedMapValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ooyala/android/AuthorizableItemInternal;",
        "Lcom/ooyala/android/OrderedMapValue",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected _api:Lcom/ooyala/android/PlayerAPIClient;

.field protected _authCode:I

.field protected _authorized:Z

.field protected _contentToken:Ljava/lang/String;

.field protected _description:Ljava/lang/String;

.field protected _embedCode:Ljava/lang/String;

.field protected _externalId:Ljava/lang/String;

.field protected _heartbeatRequired:Z

.field protected _metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _moduleData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ooyala/android/ModuleData;",
            ">;"
        }
    .end annotation
.end field

.field protected _promoImageURL:Ljava/lang/String;

.field protected _title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_externalId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_contentToken:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_title:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_description:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_promoImageURL:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/ContentItem;->_authorized:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/ContentItem;->_authCode:I

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ooyala/android/ContentItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_externalId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_contentToken:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_title:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_description:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_promoImageURL:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/ContentItem;->_authorized:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/ContentItem;->_authCode:I

    .line 38
    iput-object p1, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/ooyala/android/ContentItem;->_contentToken:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/ooyala/android/ContentItem;->_title:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/ooyala/android/ContentItem;->_description:Ljava/lang/String;

    .line 42
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_externalId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_contentToken:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_title:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_description:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ooyala/android/ContentItem;->_promoImageURL:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/ContentItem;->_authorized:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/ContentItem;->_authCode:I

    .line 45
    iput-object p2, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/ooyala/android/ContentItem;->_api:Lcom/ooyala/android/PlayerAPIClient;

    .line 47
    invoke-virtual {p0, p1}, Lcom/ooyala/android/ContentItem;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 48
    return-void
.end method

.method static create(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/PlayerAPIClient;)Lcom/ooyala/android/ContentItem;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 177
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 181
    const-string/jumbo v2, "content_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    const-string/jumbo v2, "content_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    .line 190
    const-string/jumbo v2, "Video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "LiveStream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    :cond_2
    new-instance v0, Lcom/ooyala/android/Video;

    invoke-direct {v0, p0, p1, p2}, Lcom/ooyala/android/Video;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/PlayerAPIClient;)V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Create failed due to JSONException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_3
    const-string/jumbo v2, "Channel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    new-instance v0, Lcom/ooyala/android/Channel;

    invoke-direct {v0, p0, p1, p2}, Lcom/ooyala/android/Channel;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/PlayerAPIClient;)V

    goto :goto_0

    .line 195
    :cond_4
    const-string/jumbo v2, "MultiChannel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 196
    new-instance v0, Lcom/ooyala/android/ChannelSet;

    invoke-direct {v0, p0, p1, p2}, Lcom/ooyala/android/ChannelSet;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/PlayerAPIClient;)V

    goto :goto_0

    .line 198
    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown content_type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static create(Lorg/json/JSONObject;Ljava/util/List;Lcom/ooyala/android/PlayerAPIClient;)Lcom/ooyala/android/ContentItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/PlayerAPIClient;",
            ")",
            "Lcom/ooyala/android/ContentItem;"
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 172
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/ooyala/android/ContentItem;->create(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/PlayerAPIClient;)Lcom/ooyala/android/ContentItem;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Lcom/ooyala/android/DynamicChannel;

    invoke-direct {v0, p0, p1, p2}, Lcom/ooyala/android/DynamicChannel;-><init>(Lorg/json/JSONObject;Ljava/util/List;Lcom/ooyala/android/PlayerAPIClient;)V

    goto :goto_0
.end method

.method public static getAuthError(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    if-nez p0, :cond_0

    .line 270
    const-string/jumbo v0, "Video is authorized!"

    .line 279
    :goto_0
    return-object v0

    .line 274
    :cond_0
    if-ltz p0, :cond_1

    sget-object v0, Lcom/ooyala/android/ContentItem;->authCodeDescription:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_2

    .line 275
    :cond_1
    const-string/jumbo v0, "Invalid Authorization Error Code"

    goto :goto_0

    .line 279
    :cond_2
    sget-object v0, Lcom/ooyala/android/AuthorizableItem;->authCodeDescription:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getEmbedCodes(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/ooyala/android/ContentItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    .line 228
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/ContentItem;

    .line 230
    invoke-virtual {v0}, Lcom/ooyala/android/ContentItem;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 232
    goto :goto_0
.end method


# virtual methods
.method public embedCodesToAuthorize()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-object v0
.end method

.method public abstract firstVideo()Lcom/ooyala/android/Video;
.end method

.method public getAuthCode()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/ooyala/android/ContentItem;->_authCode:I

    return v0
.end method

.method getContentToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_contentToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getDuration()I
.end method

.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_externalId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/ooyala/android/ContentItem;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getModuleData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ooyala/android/ModuleData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_moduleData:Ljava/util/Map;

    return-object v0
.end method

.method public getPromoImageURL(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_promoImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthorized()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/ooyala/android/ContentItem;->_authorized:Z

    return v0
.end method

.method public isHeartbeatRequired()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/ooyala/android/ContentItem;->_heartbeatRequired:Z

    return v0
.end method

.method public update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 7

    .prologue
    .line 107
    if-nez p1, :cond_0

    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    .line 167
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_UNMATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 112
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "authorized"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 114
    const-string/jumbo v1, "authorized"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ooyala/android/ContentItem;->_authorized:Z

    .line 115
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 116
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 117
    iput v1, p0, Lcom/ooyala/android/ContentItem;->_authCode:I

    .line 119
    :cond_3
    const-string/jumbo v1, "require_heartbeat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 120
    const-string/jumbo v1, "require_heartbeat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ooyala/android/ContentItem;->_heartbeatRequired:Z

    .line 122
    :cond_4
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 125
    :cond_5
    iget-object v1, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "embed_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    const-string/jumbo v2, "embed_code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 126
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 128
    :cond_6
    const-string/jumbo v1, "embed_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 129
    const-string/jumbo v1, "embed_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/ContentItem;->_embedCode:Ljava/lang/String;

    .line 131
    :cond_7
    const-string/jumbo v1, "external_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 132
    const-string/jumbo v1, "external_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/ContentItem;->_externalId:Ljava/lang/String;

    .line 134
    :cond_8
    const-string/jumbo v1, "content_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 135
    const-string/jumbo v1, "content_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/ContentItem;->_contentToken:Ljava/lang/String;

    .line 137
    :cond_9
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 138
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/ContentItem;->_title:Ljava/lang/String;

    .line 140
    :cond_a
    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 141
    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/ContentItem;->_description:Ljava/lang/String;

    .line 143
    :cond_b
    const-string/jumbo v1, "promo_image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 144
    const-string/jumbo v1, "promo_image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/ContentItem;->_promoImageURL:Ljava/lang/String;

    .line 146
    :cond_c
    const-string/jumbo v1, "base"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 147
    const-string/jumbo v1, "base"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/ooyala/android/Utils;->mapFromJSONObject(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/ContentItem;->_metadata:Ljava/util/Map;

    .line 149
    :cond_d
    const-string/jumbo v1, "modules"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 150
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ooyala/android/ContentItem;->_moduleData:Ljava/util/Map;

    .line 151
    const-string/jumbo v1, "modules"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 154
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 157
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    const-string/jumbo v5, "metadata"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/ooyala/android/Utils;->mapFromJSONObject(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 160
    iget-object v5, p0, Lcom/ooyala/android/ContentItem;->_moduleData:Ljava/util/Map;

    new-instance v6, Lcom/ooyala/android/ModuleData;

    invoke-direct {v6, v0, v4, v3}, Lcom/ooyala/android/ModuleData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_0

    .line 167
    :cond_e
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_0
.end method

.method public abstract videoFromEmbedCode(Ljava/lang/String;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;
.end method
