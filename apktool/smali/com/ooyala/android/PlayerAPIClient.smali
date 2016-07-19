.class Lcom/ooyala/android/PlayerAPIClient;
.super Ljava/lang/Object;
.source "PlayerAPIClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;,
        Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;,
        Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;,
        Lcom/ooyala/android/PlayerAPIClient$ContentTreeByExternalIdsTask;,
        Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;,
        Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;,
        Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatCallback;,
        Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;,
        Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;
    }
.end annotation


# static fields
.field public static final HOOK:Ljava/lang/String; = "-hook"


# instance fields
.field private _authToken:Ljava/lang/String;

.field protected _context:Landroid/content/Context;

.field protected _domain:Ljava/lang/String;

.field protected _embedTokenGenerator:Lcom/ooyala/android/EmbedTokenGenerator;

.field protected _heartbeatInterval:I

.field protected _height:I

.field private _isHook:Z

.field protected _pcode:Ljava/lang/String;

.field private _userInfo:Lcom/ooyala/android/UserInfo;

.field protected _width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_domain:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/ooyala/android/PlayerAPIClient;->_width:I

    .line 23
    iput v1, p0, Lcom/ooyala/android/PlayerAPIClient;->_height:I

    .line 27
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_authToken:Ljava/lang/String;

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_heartbeatInterval:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_domain:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/ooyala/android/PlayerAPIClient;->_width:I

    .line 23
    iput v1, p0, Lcom/ooyala/android/PlayerAPIClient;->_height:I

    .line 27
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_authToken:Ljava/lang/String;

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_heartbeatInterval:I

    .line 35
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/ooyala/android/PlayerAPIClient;->_domain:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/ooyala/android/PlayerAPIClient;->_embedTokenGenerator:Lcom/ooyala/android/EmbedTokenGenerator;

    .line 38
    return-void
.end method

.method private authorizeParams(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    const-string/jumbo v2, "device"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ooyala/android/Utils;->device()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_isHook:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "-hook"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v0, "domain"

    iget-object v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_domain:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Lcom/ooyala/android/PlayerAPIClient;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    const-string/jumbo v0, "auth_token"

    invoke-virtual {p0}, Lcom/ooyala/android/PlayerAPIClient;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_embedTokenGenerator:Lcom/ooyala/android/EmbedTokenGenerator;

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 192
    iget-object v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_embedTokenGenerator:Lcom/ooyala/android/EmbedTokenGenerator;

    new-instance v3, Lcom/ooyala/android/PlayerAPIClient$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/ooyala/android/PlayerAPIClient$1;-><init>(Lcom/ooyala/android/PlayerAPIClient;Ljava/util/Map;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v2, p1, v3}, Lcom/ooyala/android/EmbedTokenGenerator;->getTokenForEmbedCodes(Ljava/util/List;Lcom/ooyala/android/EmbedTokenGeneratorCallback;)V

    .line 200
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    .line 205
    :goto_1
    return-object v0

    .line 183
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 202
    goto :goto_1
.end method

.method private contentTreeParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 213
    :cond_0
    const-string/jumbo v2, "device"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ooyala/android/Utils;->device()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_isHook:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "-hook"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_height:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_width:I

    if-lez v0, :cond_1

    .line 215
    const-string/jumbo v0, "width"

    iget v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_width:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v0, "height"

    iget v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_height:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_1
    return-object v1

    .line 213
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getContentTreeData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Content Tree response invalid (nil)."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    :try_start_0
    const-string/jumbo v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    const-string/jumbo v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/ooyala/android/OoyalaException;

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
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

    .line 130
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Content tree response invalid (exception)."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    :try_start_1
    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    const-string/jumbo v0, "content_tree"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Content tree data does not exist."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_3
    const-string/jumbo v0, "content_tree"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method private setAuthToken(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 716
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient;->_authToken:Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_context:Landroid/content/Context;

    const-string/jumbo v1, "com.ooyala.android_preferences"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 719
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 720
    const-string/jumbo v1, "authToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 723
    :cond_0
    return-void
.end method

.method private verifyAuthorizeHeartbeatJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_0

    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_HEARTBEAT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "response invalid (nil)."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_HEARTBEAT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "response invalid (nil)."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    :try_start_0
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_HEARTBEAT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_HEARTBEAT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "response invalid (error)."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    :try_start_1
    const-string/jumbo v0, "expires"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 94
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_HEARTBEAT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "response expired."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3
    const-string/jumbo v0, "auth_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    const-string/jumbo v0, "auth_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ooyala/android/PlayerAPIClient;->setAuthToken(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :cond_4
    return-object p1
.end method

.method private verifyAuthorizeJSON(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    .line 41
    if-nez p1, :cond_0

    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Authorization response invalid (nil)."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    :try_start_0
    const-string/jumbo v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    const-string/jumbo v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/ooyala/android/OoyalaException;

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
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

    .line 76
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Authorization response invalid (exception)."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    :try_start_1
    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_2
    const-string/jumbo v0, "user_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "User info data does not exist."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3
    const-string/jumbo v0, "authorization_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Authorization data does not exist."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    const-string/jumbo v0, "authorization_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "authorized"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 64
    :cond_6
    new-instance v1, Lcom/ooyala/android/OoyalaException;

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authorization invalid for embed code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :cond_7
    return-object v1
.end method

.method private verifyContentTreeObject(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/ooyala/android/PlayerAPIClient;->getContentTreeData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 139
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/ooyala/android/OoyalaException;

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Content Tree response invalid (no key for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_1
    return-object v1
.end method

.method private verifyContentTreeObject(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/ooyala/android/PlayerAPIClient;->getContentTreeData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 154
    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Content Tree response did not contain any values.  Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 160
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
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

    .line 164
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Content tree response invalid (exception casting embedCode to String)"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Content Tree response did not contain values for all external IDs. Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Lcom/ooyala/android/OoyalaException;

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Content Tree response invalid (no key for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_5
    return-object v1
.end method


# virtual methods
.method public authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    invoke-interface {p1}, Lcom/ooyala/android/AuthorizableItemInternal;->embedCodesToAuthorize()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ooyala/android/PlayerAPIClient;->authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 379
    invoke-interface {p1}, Lcom/ooyala/android/AuthorizableItemInternal;->embedCodesToAuthorize()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ooyala/android/PlayerAPIClient;->authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public authorize(Lcom/ooyala/android/AuthorizableItemInternal;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-interface {p1}, Lcom/ooyala/android/AuthorizableItemInternal;->embedCodesToAuthorize()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0, p1}, Lcom/ooyala/android/PlayerAPIClient;->authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;)Z

    move-result v0

    return v0
.end method

.method public authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-interface {p1}, Lcom/ooyala/android/AuthorizableItemInternal;->embedCodesToAuthorize()Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v0, p1, p2}, Lcom/ooyala/android/PlayerAPIClient;->authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;)Z

    move-result v0

    return v0
.end method

.method public authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/AuthorizableItemInternal;",
            "Lcom/ooyala/android/AuthorizeCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;

    invoke-direct {v0, p0, p3}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/AuthorizeCallback;)V

    .line 385
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    return-object v0
.end method

.method public authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/AuthorizableItemInternal;",
            "Lcom/ooyala/android/PlayerInfo;",
            "Lcom/ooyala/android/AuthorizeCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;

    invoke-direct {v0, p0, p4}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/AuthorizeCallback;)V

    .line 443
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 444
    return-object v0
.end method

.method public authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/AuthorizableItemInternal;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 233
    const-string/jumbo v0, "/sas/player_api/v%s/authorization/embed_code/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "1"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    invoke-static {p1, v3}, Lcom/ooyala/android/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    sget-object v1, Lcom/ooyala/android/Constants;->AUTHORIZE_HOST:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ooyala/android/PlayerAPIClient;->authorizeParams(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ooyala/android/OoyalaAPIHelper;->objectForAPI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 238
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/ooyala/android/PlayerAPIClient;->verifyAuthorizeJSON(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    .line 241
    const-string/jumbo v2, "auth_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    const-string/jumbo v2, "auth_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ooyala/android/PlayerAPIClient;->setAuthToken(Ljava/lang/String;)V

    .line 245
    :cond_0
    const-string/jumbo v2, "heartbeat_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    const-string/jumbo v2, "heartbeat_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 247
    const-string/jumbo v3, "heartbeat_interval"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    const-string/jumbo v3, "heartbeat_interval"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_heartbeatInterval:I

    .line 252
    :cond_1
    const-string/jumbo v2, "user_info"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    new-instance v2, Lcom/ooyala/android/UserInfo;

    const-string/jumbo v3, "user_info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ooyala/android/UserInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_userInfo:Lcom/ooyala/android/UserInfo;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :cond_2
    if-eqz p2, :cond_3

    .line 265
    invoke-interface {p2, v1}, Lcom/ooyala/android/AuthorizableItemInternal;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 267
    :cond_3
    return v4

    .line 255
    :catch_0
    move-exception v0

    .line 256
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to authorize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    throw v0

    .line 258
    :catch_1
    move-exception v0

    .line 259
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

    .line 260
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Authorization response invalid (exception)."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method public authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/AuthorizableItemInternal;",
            "Lcom/ooyala/android/PlayerInfo;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 272
    const-string/jumbo v0, "/sas/player_api/v%s/authorization/embed_code/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "1"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    invoke-static {p1, v3}, Lcom/ooyala/android/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-direct {p0, p1}, Lcom/ooyala/android/PlayerAPIClient;->authorizeParams(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 275
    const-string/jumbo v3, "device"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_isHook:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "-hook"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getSupportedFormats()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    const-string/jumbo v0, "supportedFormats"

    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getSupportedFormats()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-static {v3, v4}, Lcom/ooyala/android/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getSupportedProfiles()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    const-string/jumbo v0, "profiles"

    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getSupportedProfiles()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-static {v3, v4}, Lcom/ooyala/android/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_1
    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getMaxHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 284
    const-string/jumbo v0, "maxHeight"

    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getMaxHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_2
    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getMaxWidth()I

    move-result v0

    if-lez v0, :cond_3

    .line 287
    const-string/jumbo v0, "maxWidth"

    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getMaxWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_3
    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getMaxBitrate()I

    move-result v0

    if-lez v0, :cond_4

    .line 290
    const-string/jumbo v0, "br"

    invoke-interface {p3}, Lcom/ooyala/android/PlayerInfo;->getMaxBitrate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_4
    sget-object v0, Lcom/ooyala/android/Constants;->AUTHORIZE_HOST:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ooyala/android/OoyalaAPIHelper;->objectForAPI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 296
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/ooyala/android/PlayerAPIClient;->verifyAuthorizeJSON(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    .line 298
    const-string/jumbo v2, "auth_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 299
    const-string/jumbo v2, "auth_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ooyala/android/PlayerAPIClient;->setAuthToken(Ljava/lang/String;)V

    .line 302
    :cond_5
    const-string/jumbo v2, "heartbeat_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 303
    const-string/jumbo v2, "heartbeat_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 304
    const-string/jumbo v3, "heartbeat_interval"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 305
    const-string/jumbo v3, "heartbeat_interval"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_heartbeatInterval:I

    .line 309
    :cond_6
    const-string/jumbo v2, "user_info"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 310
    new-instance v2, Lcom/ooyala/android/UserInfo;

    const-string/jumbo v3, "user_info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ooyala/android/UserInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_userInfo:Lcom/ooyala/android/UserInfo;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :cond_7
    if-eqz p2, :cond_8

    .line 322
    invoke-interface {p2, v1}, Lcom/ooyala/android/AuthorizableItemInternal;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 324
    :cond_8
    return v5

    .line 275
    :cond_9
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to authorize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    throw v0

    .line 315
    :catch_1
    move-exception v0

    .line 316
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

    .line 317
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Authorization response invalid (exception)."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method public authorizeHeartbeat(Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatCallback;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;

    invoke-direct {v0, p0, p1}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatCallback;)V

    .line 437
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 438
    return-object v0
.end method

.method public authorizeHeartbeat()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    const-string/jumbo v2, "/sas/player_api/v%s/auth_heartbeat/pcode/%s/auth_token/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "1"

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/ooyala/android/PlayerAPIClient;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 392
    sget-object v3, Lcom/ooyala/android/Constants;->AUTHORIZE_HOST:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/ooyala/android/OoyalaAPIHelper;->objectForAPI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 394
    :try_start_0
    invoke-direct {p0, v2}, Lcom/ooyala/android/PlayerAPIClient;->verifyAuthorizeHeartbeatJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to authorize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    throw v0
.end method

.method public cancel(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 755
    check-cast p1, Landroid/os/AsyncTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 756
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;)Lcom/ooyala/android/ContentItem;

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
    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contentTreeByExternalIds(Ljava/util/List;)Lcom/ooyala/android/ContentItem;
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 520
    const-string/jumbo v1, "/player_api/v%s/content_tree/external_id/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    invoke-static {p1, v4}, Lcom/ooyala/android/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 522
    sget-object v2, Lcom/ooyala/android/Constants;->CONTENT_TREE_HOST:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/ooyala/android/OoyalaAPIHelper;->objectForAPI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 523
    if-nez v1, :cond_1

    .line 537
    :cond_0
    return-object v0

    .line 524
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    :try_start_0
    invoke-direct {p0, v1, p1, v0}, Lcom/ooyala/android/PlayerAPIClient;->verifyContentTreeObject(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 534
    invoke-static {v1, v0, p0}, Lcom/ooyala/android/ContentItem;->create(Lorg/json/JSONObject;Ljava/util/List;Lcom/ooyala/android/PlayerAPIClient;)Lcom/ooyala/android/ContentItem;

    move-result-object v0

    .line 535
    if-nez v0, :cond_0

    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Unknown Content Type"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create externalId objects: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    throw v0
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
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeByExternalIdsWithAdSetCode(Ljava/util/List;Ljava/lang/String;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contentTreeByExternalIdsWithAdSetCode(Ljava/util/List;Ljava/lang/String;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;
    .locals 4
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
    .line 563
    new-instance v0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeByExternalIdsTask;

    invoke-direct {v0, p0, p3}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeByExternalIdsTask;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/ContentTreeCallback;)V

    .line 564
    new-instance v1, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/PlayerAPIClient$1;)V

    .line 565
    iput-object p1, v1, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;->idList:Ljava/util/List;

    .line 566
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeByExternalIdsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 567
    return-object v0
.end method

.method public contentTreeNext(Lcom/ooyala/android/PaginatedParentItem;)Lcom/ooyala/android/PaginatedItemResponse;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 571
    invoke-interface {p1}, Lcom/ooyala/android/PaginatedParentItem;->hasMoreChildren()Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-object v0

    .line 572
    :cond_1
    const-string/jumbo v1, "/player_api/v%s/content_tree/next/%s/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "1"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-interface {p1}, Lcom/ooyala/android/PaginatedParentItem;->getNextChildren()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 574
    sget-object v3, Lcom/ooyala/android/Constants;->CONTENT_TREE_HOST:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/ooyala/android/OoyalaAPIHelper;->objectForAPI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 575
    if-eqz v1, :cond_0

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 578
    invoke-interface {p1}, Lcom/ooyala/android/PaginatedParentItem;->getNextChildren()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :try_start_0
    invoke-direct {p0, v1, v3}, Lcom/ooyala/android/PlayerAPIClient;->verifyContentTreeObject(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 591
    invoke-interface {p1}, Lcom/ooyala/android/PaginatedParentItem;->getNextChildren()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 592
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Could not find token in content_tree_next response."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :catch_0
    move-exception v1

    .line 582
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create next objects: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/ooyala/android/PaginatedParentItem;->getNextChildren()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 597
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 598
    invoke-interface {p1}, Lcom/ooyala/android/PaginatedParentItem;->getEmbedCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    invoke-interface {p1}, Lcom/ooyala/android/PaginatedParentItem;->childrenCount()I

    move-result v4

    .line 601
    invoke-interface {p1, v1}, Lcom/ooyala/android/PaginatedParentItem;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 602
    new-instance v1, Lcom/ooyala/android/PaginatedItemResponse;

    const-string/jumbo v5, "children"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-direct {v1, v4, v2}, Lcom/ooyala/android/PaginatedItemResponse;-><init>(II)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "children"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    .line 604
    :catch_1
    move-exception v1

    .line 605
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create next objects due to JSON Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public contentTreeNext(Lcom/ooyala/android/PaginatedParentItem;Lcom/ooyala/android/ContentTreeNextCallback;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 632
    new-instance v0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;

    invoke-direct {v0, p0, p2}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/ContentTreeNextCallback;)V

    .line 633
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 634
    return-object v0
.end method

.method public contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;)Lcom/ooyala/android/ContentItem;
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 452
    const/4 v0, 0x0

    .line 453
    if-eqz p2, :cond_0

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 455
    const-string/jumbo v1, "adSetCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_0
    const-string/jumbo v1, "/player_api/v%s/content_tree/embed_code/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    invoke-static {p1, v4}, Lcom/ooyala/android/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 460
    sget-object v2, Lcom/ooyala/android/Constants;->CONTENT_TREE_HOST:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/ooyala/android/OoyalaAPIHelper;->objectForAPI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 463
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/ooyala/android/PlayerAPIClient;->verifyContentTreeObject(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    invoke-static {v0, p1, p0}, Lcom/ooyala/android/ContentItem;->create(Lorg/json/JSONObject;Ljava/util/List;Lcom/ooyala/android/PlayerAPIClient;)Lcom/ooyala/android/ContentItem;

    move-result-object v0

    .line 469
    if-nez v0, :cond_1

    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Unknown Content Type"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create objects: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 466
    throw v0

    .line 471
    :cond_1
    return-object v0
.end method

.method public contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;
    .locals 4
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
    .line 511
    new-instance v0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;

    invoke-direct {v0, p0, p3}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/ContentTreeCallback;)V

    .line 512
    new-instance v1, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/PlayerAPIClient$1;)V

    .line 513
    iput-object p1, v1, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;->idList:Ljava/util/List;

    .line 514
    iput-object p2, v1, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;->adSetCode:Ljava/lang/String;

    .line 515
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 516
    return-object v0
.end method

.method public fetchMetadata(Lcom/ooyala/android/ContentItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    .line 666
    invoke-virtual {p1}, Lcom/ooyala/android/ContentItem;->embedCodesToAuthorize()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ooyala/android/PlayerAPIClient;->fetchMetadataForEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItem;)Z

    move-result v0

    return v0
.end method

.method public fetchMetadataForEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItem;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/AuthorizableItem;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/android/OoyalaException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 640
    const-string/jumbo v0, "/player_api/v%s/metadata/embed_code/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "1"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    invoke-static {p1, v3}, Lcom/ooyala/android/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 642
    sget-object v1, Lcom/ooyala/android/Constants;->METADATA_HOST:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ooyala/android/OoyalaAPIHelper;->objectForAPI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 645
    if-nez v0, :cond_0

    .line 646
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_METADATA_FETCH_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Empty metadata response"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    :try_start_0
    const-string/jumbo v1, "errors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 651
    if-eqz v1, :cond_1

    .line 652
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_METADATA_FETCH_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Non-zero metadata response code"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_METADATA_FETCH_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Failed to parse metadata"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_1
    :try_start_1
    check-cast p2, Lcom/ooyala/android/ContentItem;

    const-string/jumbo v1, "metadata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ooyala/android/ContentItem;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 662
    return v4
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 726
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_authToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_context:Landroid/content/Context;

    const-string/jumbo v1, "com.ooyala.android_preferences"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 729
    const-string/jumbo v1, "authToken"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_authToken:Ljava/lang/String;

    .line 734
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_authToken:Ljava/lang/String;

    return-object v0

    .line 731
    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_authToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_domain:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartbeatInterval()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_heartbeatInterval:I

    return v0
.end method

.method public getPcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_pcode:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/ooyala/android/UserInfo;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_userInfo:Lcom/ooyala/android/UserInfo;

    return-object v0
.end method

.method public metadata(Lcom/ooyala/android/ContentItem;Lcom/ooyala/android/MetadataFetchedCallback;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 700
    new-instance v0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;

    invoke-direct {v0, p0, p2}, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/MetadataFetchedCallback;)V

    .line 701
    new-instance v1, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/PlayerAPIClient$1;)V

    .line 702
    iput-object p1, v1, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;->item:Lcom/ooyala/android/ContentItem;

    .line 703
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 704
    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient;->_context:Landroid/content/Context;

    .line 751
    return-void
.end method

.method public setHook()V
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/PlayerAPIClient;->_isHook:Z

    .line 747
    return-void
.end method
