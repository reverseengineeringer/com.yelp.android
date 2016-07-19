.class Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;
.super Ljava/lang/Object;
.source "BrightcoveVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BrightcoveVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveVideoView;


# direct methods
.method public constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .prologue
    .line 866
    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Surface changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/brightcove/player/display/VideoDisplayComponent;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 868
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 853
    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Surface created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "readyToPlay"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 856
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 860
    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Surface destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 862
    return-void
.end method
