.class Lcom/ooyala/android/PlayerAPIClient$ContentTreeByExternalIdsTask;
.super Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;
.source "PlayerAPIClient.java"


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/PlayerAPIClient;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/ContentTreeCallback;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeByExternalIdsTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;-><init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/ContentTreeCallback;)V

    .line 543
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;)Lcom/ooyala/android/ContentItem;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 547
    array-length v1, p1

    if-eqz v1, :cond_0

    aget-object v1, p1, v2

    if-eqz v1, :cond_0

    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;->idList:Ljava/util/List;

    if-eqz v1, :cond_0

    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;->idList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-object v0

    .line 550
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeByExternalIdsTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;->idList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeByExternalIds(Ljava/util/List;)Lcom/ooyala/android/ContentItem;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    .line 552
    iput-object v1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeByExternalIdsTask;->_error:Lcom/ooyala/android/OoyalaException;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    check-cast p1, [Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeByExternalIdsTask;->doInBackground([Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;)Lcom/ooyala/android/ContentItem;

    move-result-object v0

    return-object v0
.end method
