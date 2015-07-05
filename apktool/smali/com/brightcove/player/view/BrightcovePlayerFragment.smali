.class public Lcom/brightcove/player/view/BrightcovePlayerFragment;
.super Landroid/app/Fragment;
.source "BrightcovePlayerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field protected static final POSITION:Ljava/lang/String; = "position"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

.field private originalLayoutParamsHeight:I

.field private originalLayoutParamsWidth:I

.field private position:I

.field private wasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public fullScreen()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 61
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 68
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 69
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fullScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 74
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    .line 75
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    .line 76
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method

.method public getBrightcoveVideoView()Lcom/brightcove/player/view/BrightcoveVideoView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    return-object v0
.end method

.method public normalScreen()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 85
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "normalScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    if-eq v0, v3, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 96
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 100
    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iput v3, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsWidth:I

    .line 106
    iput v3, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->originalLayoutParamsHeight:I

    .line 108
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    if-eqz v1, :cond_1

    .line 115
    new-instance v1, Lcom/brightcove/player/event/EventLogger;

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BrightcoveVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/brightcove/player/event/EventLogger;-><init>(Lcom/brightcove/player/event/EventEmitter;ZLjava/lang/String;)V

    .line 117
    if-eqz p3, :cond_0

    .line 118
    const-string/jumbo v1, "position"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    .line 121
    :cond_0
    new-instance v1, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 122
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v2, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 127
    return-object v0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "brightcoveVideoView needs to be wired up to the layout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 167
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    invoke-interface {v0}, Lcom/brightcove/player/event/EventEmitter;->off()V

    .line 168
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 141
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->pause()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->wasPlaying:Z

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->wasPlaying:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 154
    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->wasPlaying:Z

    if-eqz v0, :cond_1

    .line 155
    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->seekTo(I)V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->start()V

    .line 161
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "position"

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 134
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 174
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->position:I

    .line 175
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->stopPlayback()V

    .line 176
    return-void
.end method
