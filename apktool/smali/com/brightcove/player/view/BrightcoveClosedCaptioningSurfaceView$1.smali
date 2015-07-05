.class Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView$1;
.super Ljava/lang/Object;
.source "BrightcoveClosedCaptioningSurfaceView.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView$1;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView$1;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->invalidate()V

    .line 105
    return-void
.end method
