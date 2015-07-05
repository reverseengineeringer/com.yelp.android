.class Lcom/ooyala/android/OoyalaPlayerLayoutController$1;
.super Landroid/app/Dialog;
.source "OoyalaPlayerLayoutController.java"


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/OoyalaPlayerLayoutController;


# direct methods
.method constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayoutController;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController$1;->this$0:Lcom/ooyala/android/OoyalaPlayerLayoutController;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController$1;->this$0:Lcom/ooyala/android/OoyalaPlayerLayoutController;

    iget-object v0, v0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController$1;->this$0:Lcom/ooyala/android/OoyalaPlayerLayoutController;

    iget-object v0, v0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->setFullscreen(Z)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method
