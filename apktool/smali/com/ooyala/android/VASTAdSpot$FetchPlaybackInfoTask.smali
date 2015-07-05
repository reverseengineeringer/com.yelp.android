.class Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;
.super Landroid/os/AsyncTask;
.source "VASTAdSpot.java"


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

.field final synthetic this$0:Lcom/ooyala/android/VASTAdSpot;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/VASTAdSpot;Lcom/ooyala/android/FetchPlaybackInfoCallback;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;->this$0:Lcom/ooyala/android/VASTAdSpot;

    .line 141
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;->_callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

    .line 142
    iput-object p2, p0, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;->_callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

    .line 143
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;->this$0:Lcom/ooyala/android/VASTAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTAdSpot;->fetchPlaybackInfo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;->_callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/ooyala/android/FetchPlaybackInfoCallback;->callback(Z)V

    .line 153
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
