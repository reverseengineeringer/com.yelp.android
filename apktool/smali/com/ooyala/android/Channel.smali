.class public Lcom/ooyala/android/Channel;
.super Lcom/ooyala/android/ContentItem;
.source "Channel.java"

# interfaces
.implements Lcom/ooyala/android/PaginatedParentItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/Channel$1;,
        Lcom/ooyala/android/Channel$NextChildrenRunner;
    }
.end annotation


# instance fields
.field protected _isFetchingMoreChildren:Z

.field protected _nextChildren:Ljava/lang/String;

.field protected _parent:Lcom/ooyala/android/ChannelSet;

.field protected _videos:Lcom/ooyala/android/OrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ooyala/android/OrderedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ooyala/android/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/ooyala/android/ContentItem;-><init>()V

    .line 14
    new-instance v0, Lcom/ooyala/android/OrderedMap;

    invoke-direct {v0}, Lcom/ooyala/android/OrderedMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    .line 15
    iput-object v1, p0, Lcom/ooyala/android/Channel;->_parent:Lcom/ooyala/android/ChannelSet;

    .line 16
    iput-object v1, p0, Lcom/ooyala/android/Channel;->_nextChildren:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/Channel;->_isFetchingMoreChildren:Z

    .line 19
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/ChannelSet;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/ooyala/android/ContentItem;-><init>()V

    .line 14
    new-instance v0, Lcom/ooyala/android/OrderedMap;

    invoke-direct {v0}, Lcom/ooyala/android/OrderedMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    .line 15
    iput-object v1, p0, Lcom/ooyala/android/Channel;->_parent:Lcom/ooyala/android/ChannelSet;

    .line 16
    iput-object v1, p0, Lcom/ooyala/android/Channel;->_nextChildren:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/Channel;->_isFetchingMoreChildren:Z

    .line 26
    iput-object p2, p0, Lcom/ooyala/android/Channel;->_embedCode:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/ooyala/android/Channel;->_api:Lcom/ooyala/android/PlayerAPIClient;

    .line 28
    iput-object p3, p0, Lcom/ooyala/android/Channel;->_parent:Lcom/ooyala/android/ChannelSet;

    .line 29
    invoke-virtual {p0, p1}, Lcom/ooyala/android/Channel;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 30
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ooyala/android/Channel;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/ChannelSet;Lcom/ooyala/android/PlayerAPIClient;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected addVideo(Lcom/ooyala/android/Video;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {p1}, Lcom/ooyala/android/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ooyala/android/OrderedMap;->put(Ljava/lang/Object;Lcom/ooyala/android/OrderedMapValue;)Lcom/ooyala/android/OrderedMapValue;

    .line 162
    return-void
.end method

.method public childrenCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

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
    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/ooyala/android/Channel;->_embedCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v1, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1}, Lcom/ooyala/android/OrderedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    return-object v0
.end method

.method public fetchMoreChildren(Lcom/ooyala/android/PaginatedItemListener;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0}, Lcom/ooyala/android/Channel;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ooyala/android/Channel;->_isFetchingMoreChildren:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    .line 204
    :cond_1
    iput-boolean v0, p0, Lcom/ooyala/android/Channel;->_isFetchingMoreChildren:Z

    .line 206
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ooyala/android/Channel$NextChildrenRunner;

    invoke-direct {v2, p0, p1}, Lcom/ooyala/android/Channel$NextChildrenRunner;-><init>(Lcom/ooyala/android/Channel;Lcom/ooyala/android/PaginatedItemListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public firstVideo()Lcom/ooyala/android/Video;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OrderedMap;->get(I)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1}, Lcom/ooyala/android/OrderedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    .line 181
    invoke-virtual {v0}, Lcom/ooyala/android/Video;->getDuration()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 183
    :cond_0
    return v1
.end method

.method public getNextChildren()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_nextChildren:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/ooyala/android/ChannelSet;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_parent:Lcom/ooyala/android/ChannelSet;

    return-object v0
.end method

.method public getVideos()Lcom/ooyala/android/OrderedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ooyala/android/OrderedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ooyala/android/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    return-object v0
.end method

.method public hasMoreChildren()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_nextChildren:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastVideo()Lcom/ooyala/android/Video;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    iget-object v1, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1}, Lcom/ooyala/android/OrderedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OrderedMap;->get(I)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    goto :goto_0
.end method

.method public nextVideo(Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/OrderedMap;->indexForValue(Lcom/ooyala/android/OrderedMapValue;)I

    move-result v0

    .line 144
    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1}, Lcom/ooyala/android/OrderedMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_parent:Lcom/ooyala/android/ChannelSet;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_parent:Lcom/ooyala/android/ChannelSet;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/ChannelSet;->nextVideo(Lcom/ooyala/android/Channel;)Lcom/ooyala/android/Video;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/OrderedMap;->get(I)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    goto :goto_0
.end method

.method public previousVideo(Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/OrderedMap;->indexForValue(Lcom/ooyala/android/OrderedMapValue;)I

    move-result v0

    .line 156
    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_parent:Lcom/ooyala/android/ChannelSet;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_parent:Lcom/ooyala/android/ChannelSet;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/ChannelSet;->previousVideo(Lcom/ooyala/android/Channel;)Lcom/ooyala/android/Video;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/OrderedMap;->get(I)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    goto :goto_0
.end method

.method public declared-synchronized update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 6

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ooyala/android/Channel$1;->$SwitchMap$com$ooyala$android$Constants$ReturnState:[I

    invoke-super {p0, p1}, Lcom/ooyala/android/ContentItem;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/Constants$ReturnState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_embedCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 50
    const-string/jumbo v0, "authorized"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "authorized"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    .line 52
    invoke-virtual {v0, p1}, Lcom/ooyala/android/Video;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
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

    .line 110
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :goto_1
    monitor-exit p0

    return-object v0

    .line 36
    :pswitch_0
    :try_start_3
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    .line 40
    invoke-virtual {v0, p1}, Lcom/ooyala/android/Video;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 42
    :cond_0
    :try_start_4
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_UNMATCHED:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 54
    :cond_1
    :try_start_5
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 58
    :cond_2
    const-string/jumbo v0, "base"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0}, Lcom/ooyala/android/OrderedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    .line 60
    invoke-virtual {v0, p1}, Lcom/ooyala/android/Video;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_3

    .line 62
    :cond_3
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_1

    .line 66
    :cond_4
    const-string/jumbo v0, "content_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "content_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Channel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 68
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR: Attempted to initialize Channel with content_type: "

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

    .line 70
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_1

    .line 73
    :cond_5
    const-string/jumbo v0, "next_children"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_4
    iput-object v0, p0, Lcom/ooyala/android/Channel;->_nextChildren:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "children"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 77
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_nextChildren:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 78
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR: Attempted to initialize Channel with children == nil and next_children == nil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/Channel;->_embedCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_1

    .line 73
    :cond_6
    const-string/jumbo v0, "next_children"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 83
    :cond_7
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_1

    .line 86
    :cond_8
    const-string/jumbo v0, "children"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 88
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 89
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    const-string/jumbo v3, "content_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "content_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 92
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string/jumbo v4, "embed_code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 96
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0, v4}, Lcom/ooyala/android/OrderedMap;->get(Ljava/lang/Object;)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    .line 97
    if-nez v0, :cond_9

    .line 98
    new-instance v0, Lcom/ooyala/android/Video;

    iget-object v3, p0, Lcom/ooyala/android/Channel;->_api:Lcom/ooyala/android/PlayerAPIClient;

    invoke-direct {v0, v5, v4, p0, v3}, Lcom/ooyala/android/Video;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ooyala/android/Channel;Lcom/ooyala/android/PlayerAPIClient;)V

    invoke-virtual {p0, v0}, Lcom/ooyala/android/Channel;->addVideo(Lcom/ooyala/android/Video;)V

    .line 88
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 100
    :cond_9
    invoke-virtual {v0, v5}, Lcom/ooyala/android/Video;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_6

    .line 103
    :cond_a
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR: Invalid Video content_type: "

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

    .line 113
    :cond_b
    :try_start_6
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public videoFromEmbedCode(Ljava/lang/String;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ooyala/android/Channel;->_videos:Lcom/ooyala/android/OrderedMap;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/OrderedMap;->get(Ljava/lang/Object;)Lcom/ooyala/android/OrderedMapValue;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Video;

    return-object v0
.end method
