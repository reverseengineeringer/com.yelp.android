.class public Lcom/brightcove/player/view/BrightcovePlayer;
.super Landroid/app/Activity;
.source "BrightcovePlayer.java"


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
    .line 41
    const-class v0, Lcom/brightcove/player/view/BrightcovePlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private hideActionBar()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 63
    :cond_0
    return-void
.end method

.method private showActionBar()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public fullScreen()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 80
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->hideActionBar()V

    .line 82
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 83
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 84
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fullScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 89
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    .line 90
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    .line 91
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method public getBrightcoveVideoView()Lcom/brightcove/player/view/BrightcoveVideoView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    return-object v0
.end method

.method public normalScreen()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 100
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "normalScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    if-eq v0, v3, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->showActionBar()V

    .line 106
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 107
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 112
    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iput v3, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsWidth:I

    .line 117
    iput v3, p0, Lcom/brightcove/player/view/BrightcovePlayer;->originalLayoutParamsHeight:I

    .line 119
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Lcom/brightcove/player/event/EventLogger;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/brightcove/player/event/EventLogger;-><init>(Lcom/brightcove/player/event/EventEmitter;ZLjava/lang/String;)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string/jumbo v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    .line 132
    :cond_0
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 137
    return-void

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "brightcoveVideoView needs to be wired up to the layout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    invoke-interface {v0}, Lcom/brightcove/player/event/EventEmitter;->off()V

    .line 182
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->pause()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z

    .line 154
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 171
    iget v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    if-lez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->seekTo(I)V

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    .line 175
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->wasPlaying:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->start()V

    .line 164
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 194
    const-string/jumbo v0, "position"

    iget v1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/brightcove/player/view/BrightcovePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 188
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->position:I

    .line 189
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->stopPlayback()V

    .line 190
    return-void
.end method
