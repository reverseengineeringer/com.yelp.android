.class public Lcom/ooyala/android/DynamicChannel;
.super Lcom/ooyala/android/Channel;
.source "DynamicChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/DynamicChannel$1;
    }
.end annotation


# instance fields
.field protected _embedCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ooyala/android/Channel;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/DynamicChannel;->_embedCodes:Ljava/util/List;

    .line 13
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/util/List;Lcom/ooyala/android/ChannelSet;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/ChannelSet;",
            "Lcom/ooyala/android/PlayerAPIClient;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/ooyala/android/Channel;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/ooyala/android/DynamicChannel;->_embedCodes:Ljava/util/List;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/DynamicChannel;->_authorized:Z

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/ooyala/android/DynamicChannel;->_authCode:I

    .line 22
    iput-object p3, p0, Lcom/ooyala/android/DynamicChannel;->_parent:Lcom/ooyala/android/ChannelSet;

    .line 23
    iput-object v1, p0, Lcom/ooyala/android/DynamicChannel;->_embedCode:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/ooyala/android/DynamicChannel;->_embedCodes:Ljava/util/List;

    .line 25
    iput-object p4, p0, Lcom/ooyala/android/DynamicChannel;->_api:Lcom/ooyala/android/PlayerAPIClient;

    .line 26
    invoke-virtual {p0, p1}, Lcom/ooyala/android/DynamicChannel;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 27
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/util/List;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ooyala/android/PlayerAPIClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ooyala/android/DynamicChannel;-><init>(Lorg/json/JSONObject;Ljava/util/List;Lcom/ooyala/android/ChannelSet;Lcom/ooyala/android/PlayerAPIClient;)V

    .line 17
    return-void
.end method


# virtual methods
.method public embedCodesToAuthorize()Ljava/util/List;
    .locals 1
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
    .line 77
    iget-object v0, p0, Lcom/ooyala/android/DynamicChannel;->_embedCodes:Ljava/util/List;

    return-object v0
.end method

.method public getEmbedCodes()Ljava/util/List;
    .locals 1
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
    .line 73
    iget-object v0, p0, Lcom/ooyala/android/DynamicChannel;->_embedCodes:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 5

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ooyala/android/DynamicChannel$1;->$SwitchMap$com$ooyala$android$Constants$ReturnState:[I

    invoke-super {p0, p1}, Lcom/ooyala/android/Channel;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/Constants$ReturnState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    iget-object v0, p0, Lcom/ooyala/android/DynamicChannel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    .line 38
    invoke-virtual {v0, p1}, Lcom/ooyala/android/Video;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 32
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :goto_1
    monitor-exit p0

    return-object v0

    .line 42
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/ooyala/android/DynamicChannel;->_embedCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/ooyala/android/DynamicChannel;->_embedCodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :try_start_3
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

    .line 66
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 47
    :cond_2
    :try_start_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 48
    const-string/jumbo v3, "content_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    const-string/jumbo v3, "content_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    iget-object v1, p0, Lcom/ooyala/android/DynamicChannel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/OrderedMap;->get(Ljava/lang/Object;)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v1

    check-cast v1, Lcom/ooyala/android/Video;

    .line 53
    if-nez v1, :cond_3

    .line 54
    new-instance v1, Lcom/ooyala/android/Video;

    iget-object v3, p0, Lcom/ooyala/android/DynamicChannel;->_api:Lcom/ooyala/android/PlayerAPIClient;

    invoke-direct {v1, p1, v0, p0, v3}, Lcom/ooyala/android/Video;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/Channel;Lcom/ooyala/android/PlayerAPIClient;)V

    invoke-virtual {p0, v1}, Lcom/ooyala/android/DynamicChannel;->addVideo(Lcom/ooyala/android/Video;)V

    goto :goto_2

    .line 56
    :cond_3
    invoke-virtual {v1, p1}, Lcom/ooyala/android/Video;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_2

    .line 59
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Invalid Video(DynamicChannel) content_type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "content_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 69
    :cond_5
    :try_start_5
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
