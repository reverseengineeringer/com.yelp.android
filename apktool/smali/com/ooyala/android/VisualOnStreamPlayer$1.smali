.class Lcom/ooyala/android/VisualOnStreamPlayer$1;
.super Ljava/lang/Object;
.source "VisualOnStreamPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/VisualOnStreamPlayer;


# direct methods
.method constructor <init>(Lcom/ooyala/android/VisualOnStreamPlayer;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ooyala/android/VisualOnStreamPlayer$1;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer$1;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    # invokes: Lcom/ooyala/android/VisualOnStreamPlayer;->setChanged()V
    invoke-static {v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->access$200(Lcom/ooyala/android/VisualOnStreamPlayer;)V

    .line 112
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer$1;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    const-string/jumbo v1, "timeChanged"

    invoke-virtual {v0, v1}, Lcom/ooyala/android/VisualOnStreamPlayer;->notifyObservers(Ljava/lang/Object;)V

    .line 113
    const/4 v0, 0x0

    return v0
.end method
