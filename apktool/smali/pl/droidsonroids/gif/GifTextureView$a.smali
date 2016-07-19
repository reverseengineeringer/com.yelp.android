.class Lpl/droidsonroids/gif/GifTextureView$a;
.super Ljava/lang/Thread;
.source "GifTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Lpl/droidsonroids/gif/b;

.field b:[J

.field private c:Lpl/droidsonroids/gif/GifInfoHandle;

.field private d:Ljava/io/IOException;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lpl/droidsonroids/gif/GifTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 1

    .prologue
    .line 169
    const-string/jumbo v0, "GifRenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 162
    new-instance v0, Lpl/droidsonroids/gif/b;

    invoke-direct {v0}, Lpl/droidsonroids/gif/b;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->a:Lpl/droidsonroids/gif/b;

    .line 163
    sget-object v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:Lpl/droidsonroids/gif/GifInfoHandle;

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->e:Ljava/lang/ref/WeakReference;

    .line 171
    return-void
.end method

.method static synthetic a(Lpl/droidsonroids/gif/GifTextureView$a;)Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    return-object v0
.end method

.method static synthetic b(Lpl/droidsonroids/gif/GifTextureView$a;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->d:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method a(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->b()V

    .line 252
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$a;)V

    .line 253
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->l()V

    .line 254
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$a;->interrupt()V

    .line 255
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->a()V

    .line 232
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->b()V

    .line 242
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->l()V

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    .line 177
    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/f;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/f;->a()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    .line 187
    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->d:Ljava/io/IOException;

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {v0, p0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$a;)V

    .line 193
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->isAvailable()Z

    move-result v1

    .line 194
    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView$a;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v2, v1}, Lpl/droidsonroids/gif/b;->a(Z)V

    .line 195
    if-eqz v1, :cond_2

    .line 196
    new-instance v1, Lpl/droidsonroids/gif/GifTextureView$a$1;

    invoke-direct {v1, p0, v0}, Lpl/droidsonroids/gif/GifTextureView$a$1;-><init>(Lpl/droidsonroids/gif/GifTextureView$a;Lpl/droidsonroids/gif/GifTextureView;)V

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->post(Ljava/lang/Runnable;)Z

    .line 203
    :cond_2
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->b(Lpl/droidsonroids/gif/GifTextureView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->a(F)V

    .line 205
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$a;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 207
    :try_start_1
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$a;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/b;->c()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_3

    .line 215
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 217
    :try_start_2
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v3, p0, Lpl/droidsonroids/gif/GifTextureView$a;->b:[J

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->isOpaque()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lpl/droidsonroids/gif/GifInfoHandle;->a(Landroid/view/Surface;[JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    throw v0

    .line 208
    :catch_1
    move-exception v0

    .line 222
    :cond_4
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    .line 223
    sget-object v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:Lpl/droidsonroids/gif/GifInfoHandle;

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$a;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    goto :goto_0
.end method
