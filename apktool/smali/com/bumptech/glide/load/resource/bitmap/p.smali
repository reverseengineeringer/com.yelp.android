.class Lcom/bumptech/glide/load/resource/bitmap/p;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Ljava/nio/ByteBuffer;

    .line 299
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 300
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteOrder;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 304
    return-void
.end method

.method public b(I)S
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method
