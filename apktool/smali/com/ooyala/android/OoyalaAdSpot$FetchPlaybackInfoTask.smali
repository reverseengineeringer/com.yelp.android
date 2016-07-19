.class Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;
.super Landroid/os/AsyncTask;
.source "OoyalaAdSpot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/OoyalaAdSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchPlaybackInfoTask"
.end annotation

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

.field final synthetic this$0:Lcom/ooyala/android/OoyalaAdSpot;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaAdSpot;Lcom/ooyala/android/FetchPlaybackInfoCallback;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;->this$0:Lcom/ooyala/android/OoyalaAdSpot;

    .line 117
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;->_callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

    .line 118
    iput-object p2, p0, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;->_callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

    .line 119
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;->this$0:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->fetchPlaybackInfo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;->_callback:Lcom/ooyala/android/FetchPlaybackInfoCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/ooyala/android/FetchPlaybackInfoCallback;->callback(Z)V

    .line 129
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/OoyalaAdSpot$FetchPlaybackInfoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
