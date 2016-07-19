.class Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;
.super Landroid/os/AsyncTask;
.source "PlayerAPIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/PlayerAPIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataFetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected _callback:Lcom/ooyala/android/MetadataFetchedCallback;

.field protected _error:Lcom/ooyala/android/OoyalaException;

.field final synthetic this$0:Lcom/ooyala/android/PlayerAPIClient;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/MetadataFetchedCallback;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 677
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    .line 678
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 674
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->_error:Lcom/ooyala/android/OoyalaException;

    .line 675
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->_callback:Lcom/ooyala/android/MetadataFetchedCallback;

    .line 679
    iput-object p2, p0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->_callback:Lcom/ooyala/android/MetadataFetchedCallback;

    .line 680
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 684
    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;->item:Lcom/ooyala/android/ContentItem;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    .line 686
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;->item:Lcom/ooyala/android/ContentItem;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient;->fetchMetadata(Lcom/ooyala/android/ContentItem;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->_error:Lcom/ooyala/android/OoyalaException;

    .line 689
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 673
    check-cast p1, [Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->doInBackground([Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->_callback:Lcom/ooyala/android/MetadataFetchedCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->_error:Lcom/ooyala/android/OoyalaException;

    invoke-interface {v0, v1, v2}, Lcom/ooyala/android/MetadataFetchedCallback;->callback(ZLcom/ooyala/android/OoyalaException;)V

    .line 696
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 673
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
