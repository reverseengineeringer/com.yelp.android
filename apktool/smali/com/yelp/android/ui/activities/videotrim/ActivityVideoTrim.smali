.class public Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityVideoTrim.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/videotrim/j;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

.field private b:Lcom/yelp/android/serializable/LocalVideo;

.field private c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

.field private d:Lcom/yelp/android/ui/widgets/SquareTextureView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/yelp/android/ui/panels/PanelLoading;

.field private final g:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 187
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/videotrim/c;-><init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->g:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string/jumbo v1, "extra.video_file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/yelp/android/serializable/LocalVideo;
    .locals 3

    .prologue
    .line 136
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.video_file_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.business_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/yelp/android/serializable/LocalVideo;->fromFile(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->finish()V

    .line 148
    :cond_0
    return-object v0

    .line 136
    :cond_1
    const-string/jumbo v0, "extra.video_file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/serializable/LocalVideo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/widgets/SquareTextureView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->d:Lcom/yelp/android/ui/widgets/SquareTextureView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->FROZEN_AND_WAITING:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 159
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelLoading;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    if-lt v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/videotrim/a;-><init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/videotrim/b;-><init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoTrim:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Landroid/os/Bundle;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 64
    :cond_0
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->setContentView(I)V

    .line 66
    const v0, 0x7f0c01ba

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->setLocalVideo(Lcom/yelp/android/serializable/LocalVideo;)V

    .line 69
    const v0, 0x7f0c01bb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SquareTextureView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->d:Lcom/yelp/android/ui/widgets/SquareTextureView;

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->d:Lcom/yelp/android/ui/widgets/SquareTextureView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalVideo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/SquareTextureView;->a(II)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->d:Lcom/yelp/android/ui/widgets/SquareTextureView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->g:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SquareTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 73
    const v0, 0x7f0c01bc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->e:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0c01bd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/PanelLoading;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    sget-object v1, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->DEFAULT:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/y;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->stop()V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->release()V

    .line 110
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 132
    :goto_0
    return v0

    .line 123
    :pswitch_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->getTrimBegin()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->getTrimEnd()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;ZII)Landroid/content/Intent;

    move-result-object v1

    .line 126
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->setResult(ILandroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->finish()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x7f0c04fd
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->pause()V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->start()V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    const-string/jumbo v0, "extra.video_file_path"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "extra.business_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
