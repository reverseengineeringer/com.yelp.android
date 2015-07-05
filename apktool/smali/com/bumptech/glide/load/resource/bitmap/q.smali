.class Lcom/bumptech/glide/load/resource/bitmap/q;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Ljava/io/InputStream;

    .line 325
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public a([B)I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public a(J)J
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()S
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
