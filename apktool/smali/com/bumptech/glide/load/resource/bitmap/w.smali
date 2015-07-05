.class public Lcom/bumptech/glide/load/resource/bitmap/w;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/a",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/bitmap/x;


# instance fields
.field private b:Lcom/bumptech/glide/load/resource/bitmap/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/x;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/x;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/w;->a:Lcom/bumptech/glide/load/resource/bitmap/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/w;->a:Lcom/bumptech/glide/load/resource/bitmap/x;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/w;-><init>(Lcom/bumptech/glide/load/resource/bitmap/x;)V

    .line 24
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/x;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/w;->b:Lcom/bumptech/glide/load/resource/bitmap/x;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/w;->b:Lcom/bumptech/glide/load/resource/bitmap/x;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/x;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 36
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 37
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 38
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 39
    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
