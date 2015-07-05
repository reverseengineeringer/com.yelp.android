.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/p;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/n;


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

.field private b:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/q;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/bitmap_recycle/p;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/q;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/n;)V

    .line 173
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->b:I

    .line 149
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    instance-of v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;

    if-eqz v1, :cond_0

    .line 154
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;

    .line 155
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 157
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->b:I

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
