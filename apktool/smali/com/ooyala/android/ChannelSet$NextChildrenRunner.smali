.class Lcom/ooyala/android/ChannelSet$NextChildrenRunner;
.super Ljava/lang/Object;
.source "ChannelSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private _listener:Lcom/ooyala/android/PaginatedItemListener;

.field final synthetic this$0:Lcom/ooyala/android/ChannelSet;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/ChannelSet;Lcom/ooyala/android/PaginatedItemListener;)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->_listener:Lcom/ooyala/android/PaginatedItemListener;

    .line 204
    iput-object p2, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->_listener:Lcom/ooyala/android/PaginatedItemListener;

    .line 205
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 208
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    iget-object v0, v0, Lcom/ooyala/android/ChannelSet;->_api:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v1, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeNext(Lcom/ooyala/android/PaginatedParentItem;)Lcom/ooyala/android/PaginatedItemResponse;

    move-result-object v1

    .line 209
    if-nez v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->_listener:Lcom/ooyala/android/PaginatedItemListener;

    const/4 v1, -0x1

    new-instance v2, Lcom/ooyala/android/OoyalaException;

    sget-object v3, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v4, "Null response"

    invoke-direct {v2, v3, v4}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    invoke-interface {v0, v1, v7, v2}, Lcom/ooyala/android/PaginatedItemListener;->onItemsFetched(IILcom/ooyala/android/OoyalaException;)V

    .line 212
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    iput-boolean v7, v0, Lcom/ooyala/android/ChannelSet;->_isFetchingMoreChildren:Z

    .line 237
    :goto_0
    return-void

    .line 216
    :cond_0
    iget v0, v1, Lcom/ooyala/android/PaginatedItemResponse;->firstIndex:I

    if-gez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->_listener:Lcom/ooyala/android/PaginatedItemListener;

    iget v2, v1, Lcom/ooyala/android/PaginatedItemResponse;->firstIndex:I

    iget v1, v1, Lcom/ooyala/android/PaginatedItemResponse;->count:I

    new-instance v3, Lcom/ooyala/android/OoyalaException;

    sget-object v4, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_NEXT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v5, "No additional children found"

    invoke-direct {v3, v4, v5}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1, v3}, Lcom/ooyala/android/PaginatedItemListener;->onItemsFetched(IILcom/ooyala/android/OoyalaException;)V

    .line 219
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    iput-boolean v7, v0, Lcom/ooyala/android/ChannelSet;->_isFetchingMoreChildren:Z

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    iget-object v0, v0, Lcom/ooyala/android/ChannelSet;->_channels:Lcom/ooyala/android/OrderedMap;

    iget v2, v1, Lcom/ooyala/android/PaginatedItemResponse;->firstIndex:I

    iget v3, v1, Lcom/ooyala/android/PaginatedItemResponse;->firstIndex:I

    iget v4, v1, Lcom/ooyala/android/PaginatedItemResponse;->count:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/ooyala/android/OrderedMap;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/ContentItem;->getEmbedCodes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    iget-object v2, v2, Lcom/ooyala/android/ChannelSet;->_api:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v3, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    invoke-virtual {v2, v0, v3}, Lcom/ooyala/android/PlayerAPIClient;->authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    iget-object v2, v2, Lcom/ooyala/android/ChannelSet;->_api:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v3, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    invoke-virtual {v2, v0, v3}, Lcom/ooyala/android/PlayerAPIClient;->fetchMetadataForEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->_listener:Lcom/ooyala/android/PaginatedItemListener;

    iget v2, v1, Lcom/ooyala/android/PaginatedItemResponse;->firstIndex:I

    iget v3, v1, Lcom/ooyala/android/PaginatedItemResponse;->count:I

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/ooyala/android/PaginatedItemListener;->onItemsFetched(IILcom/ooyala/android/OoyalaException;)V
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->this$0:Lcom/ooyala/android/ChannelSet;

    iput-boolean v7, v0, Lcom/ooyala/android/ChannelSet;->_isFetchingMoreChildren:Z

    goto :goto_0

    .line 230
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->_listener:Lcom/ooyala/android/PaginatedItemListener;

    iget v2, v1, Lcom/ooyala/android/PaginatedItemResponse;->firstIndex:I

    iget v3, v1, Lcom/ooyala/android/PaginatedItemResponse;->count:I

    new-instance v4, Lcom/ooyala/android/OoyalaException;

    sget-object v5, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v6, "Additional child authorization failed"

    invoke-direct {v4, v5, v6}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/ooyala/android/PaginatedItemListener;->onItemsFetched(IILcom/ooyala/android/OoyalaException;)V
    :try_end_1
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    iget-object v2, p0, Lcom/ooyala/android/ChannelSet$NextChildrenRunner;->_listener:Lcom/ooyala/android/PaginatedItemListener;

    iget v3, v1, Lcom/ooyala/android/PaginatedItemResponse;->firstIndex:I

    iget v1, v1, Lcom/ooyala/android/PaginatedItemResponse;->count:I

    invoke-interface {v2, v3, v1, v0}, Lcom/ooyala/android/PaginatedItemListener;->onItemsFetched(IILcom/ooyala/android/OoyalaException;)V

    goto :goto_1
.end method
