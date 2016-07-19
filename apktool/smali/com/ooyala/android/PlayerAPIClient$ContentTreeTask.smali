.class Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;
.super Landroid/os/AsyncTask;
.source "PlayerAPIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/PlayerAPIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentTreeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;",
        "Ljava/lang/Integer;",
        "Lcom/ooyala/android/ContentItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected _callback:Lcom/ooyala/android/ContentTreeCallback;

.field protected _error:Lcom/ooyala/android/OoyalaException;

.field final synthetic this$0:Lcom/ooyala/android/PlayerAPIClient;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/ContentTreeCallback;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 483
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    .line 484
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 480
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->_error:Lcom/ooyala/android/OoyalaException;

    .line 481
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->_callback:Lcom/ooyala/android/ContentTreeCallback;

    .line 485
    iput-object p2, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->_callback:Lcom/ooyala/android/ContentTreeCallback;

    .line 486
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;)Lcom/ooyala/android/ContentItem;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 490
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

    .line 496
    :cond_0
    :goto_0
    return-object v0

    .line 493
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;->idList:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;->adSetCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;)Lcom/ooyala/android/ContentItem;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v1

    .line 495
    iput-object v1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->_error:Lcom/ooyala/android/OoyalaException;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 479
    check-cast p1, [Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->doInBackground([Lcom/ooyala/android/PlayerAPIClient$ContentTreeTaskParam;)Lcom/ooyala/android/ContentItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/ooyala/android/ContentItem;)V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->_callback:Lcom/ooyala/android/ContentTreeCallback;

    iget-object v1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->_error:Lcom/ooyala/android/OoyalaException;

    invoke-interface {v0, p1, v1}, Lcom/ooyala/android/ContentTreeCallback;->callback(Lcom/ooyala/android/ContentItem;Lcom/ooyala/android/OoyalaException;)V

    .line 503
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 479
    check-cast p1, Lcom/ooyala/android/ContentItem;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeTask;->onPostExecute(Lcom/ooyala/android/ContentItem;)V

    return-void
.end method
