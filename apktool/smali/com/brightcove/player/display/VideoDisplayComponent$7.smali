.class Lcom/brightcove/player/display/VideoDisplayComponent$7;
.super Ljava/lang/Object;
.source "VideoDisplayComponent.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$7;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .prologue
    .line 915
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 916
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$7;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p2, p3}, Lcom/brightcove/player/display/VideoDisplayComponent;->emitVideoSize(II)V

    .line 918
    :cond_0
    return-void
.end method
