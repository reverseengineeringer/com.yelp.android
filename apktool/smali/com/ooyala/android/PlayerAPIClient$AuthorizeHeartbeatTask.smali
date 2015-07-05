.class Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;
.super Landroid/os/AsyncTask;
.source "PlayerAPIClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected _callback:Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatCallback;

.field protected _error:Lcom/ooyala/android/OoyalaException;

.field final synthetic this$0:Lcom/ooyala/android/PlayerAPIClient;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatCallback;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 405
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    .line 406
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 402
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->_error:Lcom/ooyala/android/OoyalaException;

    .line 403
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->_callback:Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatCallback;

    .line 407
    iput-object p2, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->_callback:Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatCallback;

    .line 408
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0}, Lcom/ooyala/android/PlayerAPIClient;->authorizeHeartbeat()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    iput-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->_error:Lcom/ooyala/android/OoyalaException;

    .line 416
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->_callback:Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->_error:Lcom/ooyala/android/OoyalaException;

    invoke-interface {v0, v1, v2}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatCallback;->callback(ZLcom/ooyala/android/OoyalaException;)V

    .line 423
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 401
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$AuthorizeHeartbeatTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
