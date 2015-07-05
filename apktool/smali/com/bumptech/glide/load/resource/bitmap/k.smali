.class public Lcom/bumptech/glide/load/resource/bitmap/k;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/w;

.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field private c:Lcom/bumptech/glide/load/DecodeFormat;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/w;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/w;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>(Lcom/bumptech/glide/load/resource/bitmap/w;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/w;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->a:Lcom/bumptech/glide/load/resource/bitmap/w;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 40
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->c:Lcom/bumptech/glide/load/DecodeFormat;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;II)Lcom/bumptech/glide/load/engine/t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II)",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->a:Lcom/bumptech/glide/load/resource/bitmap/w;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->c:Lcom/bumptech/glide/load/DecodeFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/w;->a(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/c;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)Lcom/bumptech/glide/load/resource/bitmap/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Landroid/os/ParcelFileDescriptor;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
