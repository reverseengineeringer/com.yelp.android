.class public Lcom/ooyala/android/ChannelSet;
.super Lcom/ooyala/android/ContentItem;
.source "ChannelSet.java"

# interfaces
.implements Lcom/ooyala/android/PaginatedParentItem;


# instance fields
.field protected _channels:Lcom/ooyala/android/OrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ooyala/android/OrderedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ooyala/android/Channel;",
            ">;"
        }
    .end annotation
.end field

.field protected _isFetchingMoreChildren:Z

.field protected _nextChildren:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ooyala/android/ContentItem;-><init>()V

    .line 14
    new-instance v0, Lcom/ooyala/android/OrderedMap;

    invoke-direct {v0}, Lcom/ooyala/android/OrderedMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/ChannelSet;->_nextChildren:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/ChannelSet;->_isFetchingMoreChildren:Z

    .line 18
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/ChannelSet;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ooyala/android/ContentItem;-><init>()V

    .line 14
    new-instance v0, Lcom/ooyala/android/OrderedMap;

    invoke-direct {v0}, Lcom/ooyala/android/OrderedMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/ChannelSet;->_nextChildren:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/ChannelSet;->_isFetchingMoreChildren:Z

    .line 25
    iput-object p2, p0, Lcom/ooyala/android/ChannelSet;->_embedCode:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/ooyala/android/ChannelSet;->_api:Lcom/ooyala/android/PlayerAPIClient;

    .line 27
    invoke-virtual {p0, p1}, Lcom/ooyala/android/ChannelSet;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 28
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ooyala/android/ChannelSet;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/ChannelSet;Lcom/ooyala/android/PlayerAPIClient;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected addChannel(Lcom/ooyala/android/Channel;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {p1}, Lcom/ooyala/android/Channel;->getEmbedCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ooyala/android/OrderedMap;->put(Ljava/lang/Object;Lcom/ooyala/android/OrderedMapValue;)Lcom/ooyala/android/OrderedMapValue;

    .line 147
    return-void
.end method

.method public childrenCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->size()I

    move-result v0

    return v0
.end method

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
    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/ooyala/android/ChannelSet;->_embedCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1}, Lcom/ooyala/android/OrderedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    return-object v0
.end method

.method public fetchMoreChildren(Lcom/ooyala/android/PaginatedItemListener;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/ooyala/android/ChannelSet;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ooyala/android/ChannelSet;->_isFetchingMoreChildren:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    .line 193
    :cond_1
    iput-boolean v0, p0, Lcom/ooyala/android/ChannelSet;->_isFetchingMoreChildren:Z

    .line 195
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;

    invoke-direct {v2, p0, p1}, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;-><init>(Lcom/ooyala/android/ChannelSet;Lcom/ooyala/android/PaginatedItemListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public firstVideo()Lcom/ooyala/android/Video;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OrderedMap;->get(I)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Channel;

    invoke-virtual {v0}, Lcom/ooyala/android/Channel;->firstVideo()Lcom/ooyala/android/Video;

    move-result-object v0

    goto :goto_0
.end method

.method public getChannels()Lcom/ooyala/android/OrderedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ooyala/android/OrderedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ooyala/android/Channel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1}, Lcom/ooyala/android/OrderedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Channel;

    .line 172
    invoke-virtual {v0}, Lcom/ooyala/android/Channel;->getDuration()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 174
    :cond_0
    return v1
.end method

.method public getNextChildren()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_nextChildren:Ljava/lang/String;

    return-object v0
.end method

.method public hasMoreChildren()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_nextChildren:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextVideo(Lcom/ooyala/android/Channel;)Lcom/ooyala/android/Video;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/OrderedMap;->indexForValue(Lcom/ooyala/android/OrderedMapValue;)I

    move-result v0

    .line 130
    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1}, Lcom/ooyala/android/OrderedMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/OrderedMap;->get(I)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Channel;

    invoke-virtual {v0}, Lcom/ooyala/android/Channel;->firstVideo()Lcom/ooyala/android/Video;

    move-result-object v0

    goto :goto_0
.end method

.method public previousVideo(Lcom/ooyala/android/Channel;)Lcom/ooyala/android/Video;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/OrderedMap;->indexForValue(Lcom/ooyala/android/OrderedMapValue;)I

    move-result v0

    .line 141
    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/OrderedMap;->get(I)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Channel;

    invoke-virtual {v0}, Lcom/ooyala/android/Channel;->lastVideo()Lcom/ooyala/android/Video;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 6

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ooyala/android/ChannelSet$1;->$SwitchMap$com$ooyala$android$Constants$ReturnState:[I

    invoke-super {p0, p1}, Lcom/ooyala/android/ContentItem;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/Constants$ReturnState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_embedCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 48
    const-string/jumbo v0, "authorized"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "authorized"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Channel;

    .line 50
    invoke-virtual {v0, p1}, Lcom/ooyala/android/Channel;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :try_start_2
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

    .line 108
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :goto_1
    monitor-exit p0

    return-object v0

    .line 34
    :pswitch_0
    :try_start_3
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Channel;

    .line 38
    invoke-virtual {v0, p1}, Lcom/ooyala/android/Channel;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 40
    :cond_0
    :try_start_4
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_UNMATCHED:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 52
    :cond_1
    :try_start_5
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 56
    :cond_2
    const-string/jumbo v0, "base"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Channel;

    .line 58
    invoke-virtual {v0, p1}, Lcom/ooyala/android/Channel;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_3

    .line 60
    :cond_3
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 64
    :cond_4
    const-string/jumbo v0, "content_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "content_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "MultiChannel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR: Attempted to initialize ChannelSet with content_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "content_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_1

    .line 71
    :cond_5
    const-string/jumbo v0, "next_children"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_4
    iput-object v0, p0, Lcom/ooyala/android/ChannelSet;->_nextChildren:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "children"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_nextChildren:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR: Attempted to initialize ChannelSet with children == nil and next_children == nil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/ChannelSet;->_embedCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_1

    .line 71
    :cond_6
    const-string/jumbo v0, "next_children"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 81
    :cond_7
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_1

    .line 84
    :cond_8
    const-string/jumbo v0, "children"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 87
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    const-string/jumbo v3, "content_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "content_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Channel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 90
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string/jumbo v4, "embed_code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 94
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0, v4}, Lcom/ooyala/android/OrderedMap;->get(Ljava/lang/Object;)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Channel;

    .line 95
    if-nez v0, :cond_9

    .line 96
    new-instance v0, Lcom/ooyala/android/Channel;

    iget-object v3, p0, Lcom/ooyala/android/ChannelSet;->_api:Lcom/ooyala/android/PlayerAPIClient;

    invoke-direct {v0, v5, v4, p0, v3}, Lcom/ooyala/android/Channel;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/ChannelSet;Lcom/ooyala/android/PlayerAPIClient;)V

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ChannelSet;->addChannel(Lcom/ooyala/android/Channel;)V

    .line 86
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 98
    :cond_9
    invoke-virtual {v0, v5}, Lcom/ooyala/android/Channel;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_6

    .line 101
    :cond_a
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR: Invalid Channel content_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "content_type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 111
    :cond_b
    :try_start_6
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public videoFromEmbedCode(Ljava/lang/String;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 251
    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    move v3, v1

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0, v3}, Lcom/ooyala/android/OrderedMap;->get(I)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Channel;

    invoke-virtual {v0, p1, p2}, Lcom/ooyala/android/Channel;->videoFromEmbedCode(Ljava/lang/String;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_1

    .line 258
    :goto_2
    return-object v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {p2}, Lcom/ooyala/android/Video;->getParent()Lcom/ooyala/android/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OrderedMap;->indexForValue(Lcom/ooyala/android/OrderedMapValue;)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    move v0, v2

    .line 257
    :goto_3
    if-ne v0, v1, :cond_3

    .line 258
    const/4 v0, 0x0

    goto :goto_2

    .line 256
    :cond_2
    add-int/lit8 v0, v3, 0x1

    goto :goto_3

    :cond_3
    move v3, v0

    goto :goto_1
.end method
