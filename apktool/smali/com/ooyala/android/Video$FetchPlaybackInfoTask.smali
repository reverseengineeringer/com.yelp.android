.class Lcom/ooyala/android/Video$FetchPlaybackInfoTask;
.super Landroid/os/AsyncTask;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected _callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

.field final synthetic this$0:Lcom/ooyala/android/Video;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/Video;Lcom/ooyala/android/FetchPlaybackInfoCallback;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;->this$0:Lcom/ooyala/android/Video;

    .line 171
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;->_callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

    .line 172
    iput-object p2, p0, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;->_callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

    .line 173
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;->this$0:Lcom/ooyala/android/Video;

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->fetchPlaybackInfo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;->_callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/ooyala/android/FetchPlaybackInfoCallback;->callback(Z)V

    .line 183
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/Video$FetchPlaybackInfoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
