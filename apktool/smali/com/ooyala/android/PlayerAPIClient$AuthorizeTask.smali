.class Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;
.super Landroid/os/AsyncTask;
.source "PlayerAPIClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected _callback:Lcom/ooyala/android/AuthorizeCallback;

.field protected _error:Lcom/ooyala/android/OoyalaException;

.field final synthetic this$0:Lcom/ooyala/android/PlayerAPIClient;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/AuthorizeCallback;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 331
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    .line 332
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 328
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->_error:Lcom/ooyala/android/OoyalaException;

    .line 329
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->_callback:Lcom/ooyala/android/AuthorizeCallback;

    .line 333
    iput-object p2, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->_callback:Lcom/ooyala/android/AuthorizeCallback;

    .line 334
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 340
    array-length v0, p1

    if-ge v0, v5, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 341
    :cond_0
    aget-object v0, p1, v4

    instance-of v0, v0, Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    aget-object v0, p1, v4

    check-cast v0, Ljava/util/List;

    .line 344
    aget-object v1, p1, v2

    instance-of v1, v1, Lcom/ooyala/android/AuthorizableItemInternal;

    if-eqz v1, :cond_2

    aget-object v1, p1, v2

    check-cast v1, Lcom/ooyala/android/AuthorizableItemInternal;

    move-object v2, v1

    .line 347
    :goto_1
    array-length v1, p1

    packed-switch v1, :pswitch_data_0

    .line 364
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 344
    goto :goto_1

    .line 350
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v1, v0, v2}, Lcom/ooyala/android/PlayerAPIClient;->authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->_error:Lcom/ooyala/android/OoyalaException;

    .line 353
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_1
    aget-object v1, p1, v5

    instance-of v1, v1, Lcom/ooyala/android/PlayerInfo;

    if-eqz v1, :cond_3

    aget-object v1, p1, v5

    check-cast v1, Lcom/ooyala/android/PlayerInfo;

    .line 358
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v3, v0, v2, v1}, Lcom/ooyala/android/PlayerAPIClient;->authorizeEmbedCodes(Ljava/util/List;Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 356
    goto :goto_2

    .line 359
    :catch_1
    move-exception v0

    .line 360
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->_error:Lcom/ooyala/android/OoyalaException;

    .line 361
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->_callback:Lcom/ooyala/android/AuthorizeCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->_error:Lcom/ooyala/android/OoyalaException;

    invoke-interface {v0, v1, v2}, Lcom/ooyala/android/AuthorizeCallback;->callback(ZLcom/ooyala/android/OoyalaException;)V

    .line 371
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 327
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
