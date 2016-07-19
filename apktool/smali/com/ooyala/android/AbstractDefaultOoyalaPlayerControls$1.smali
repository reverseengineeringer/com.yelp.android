.class Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$1;
.super Ljava/lang/Object;
.source "AbstractDefaultOoyalaPlayerControls.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;


# direct methods
.method constructor <init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$1;->this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$1;->this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;

    iget-object v0, v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$1;->this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;

    invoke-virtual {v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->hide()V

    .line 47
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
