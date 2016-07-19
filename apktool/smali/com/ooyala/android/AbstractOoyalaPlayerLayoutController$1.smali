.class Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$1;
.super Ljava/lang/Object;
.source "AbstractOoyalaPlayerLayoutController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->showClosedCaptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$1;->this$0:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;

    iput-object p2, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$1;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$1;->val$items:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string/jumbo v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$1;->val$items:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$1;->this$0:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;

    iget-object v1, v1, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/OoyalaPlayer;->setClosedCaptionsLanguage(Ljava/lang/String;)V

    .line 213
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
