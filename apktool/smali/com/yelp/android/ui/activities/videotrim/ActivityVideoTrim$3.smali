.class Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;
.super Lcom/yelp/android/ui/activities/videotrim/c;
.source "ActivityVideoTrim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/videotrim/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->d(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/widgets/SquareTextureView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->e(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$b;)V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->prepareAsync()V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3$1;-><init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v1, "ActivityVideoTrim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media player cannot open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalVideo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
