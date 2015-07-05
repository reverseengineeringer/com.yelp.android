.class Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;
.super Landroid/os/AsyncTask;
.source "PlayerAPIClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Lcom/ooyala/android/PaginatedItemResponse;",
        ">;"
    }
.end annotation


# instance fields
.field protected _callback:Lcom/ooyala/android/ContentTreeNextCallback;

.field protected _error:Lcom/ooyala/android/OoyalaException;

.field final synthetic this$0:Lcom/ooyala/android/PlayerAPIClient;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/ContentTreeNextCallback;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 614
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    .line 615
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 611
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->_error:Lcom/ooyala/android/OoyalaException;

    .line 612
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->_callback:Lcom/ooyala/android/ContentTreeNextCallback;

    .line 616
    iput-object p2, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->_callback:Lcom/ooyala/android/ContentTreeNextCallback;

    .line 617
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/ooyala/android/PaginatedItemResponse;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 621
    array-length v0, p1

    if-lt v0, v2, :cond_0

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/ooyala/android/PaginatedParentItem;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 622
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    aget-object v0, p1, v2

    check-cast v0, Lcom/ooyala/android/PaginatedParentItem;

    check-cast v0, Lcom/ooyala/android/PaginatedParentItem;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeNext(Lcom/ooyala/android/PaginatedParentItem;)Lcom/ooyala/android/PaginatedItemResponse;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->doInBackground([Ljava/lang/Object;)Lcom/ooyala/android/PaginatedItemResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/ooyala/android/PaginatedItemResponse;)V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->_callback:Lcom/ooyala/android/ContentTreeNextCallback;

    iget-object v1, p0, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->_error:Lcom/ooyala/android/OoyalaException;

    invoke-interface {v0, p1, v1}, Lcom/ooyala/android/ContentTreeNextCallback;->callback(Lcom/ooyala/android/PaginatedItemResponse;Lcom/ooyala/android/OoyalaException;)V

    .line 628
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 610
    check-cast p1, Lcom/ooyala/android/PaginatedItemResponse;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$ContentTreeNextTask;->onPostExecute(Lcom/ooyala/android/PaginatedItemResponse;)V

    return-void
.end method
