.class Lcom/yelp/android/ui/activities/camera/y;
.super Lcom/yelp/android/ui/activities/videotrim/q;
.source "VideoPreviewFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/videotrim/q;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->b(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->c(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/widgets/SquareTextureView;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0c01bc

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->prepareAsync()V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/y;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->d(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string/jumbo v1, "VideoPreviewFragment"

    const-string/jumbo v2, "Unable to start media player."

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
