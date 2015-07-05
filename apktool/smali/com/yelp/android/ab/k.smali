.class Lcom/yelp/android/ab/k;
.super Ljava/lang/Object;
.source "GifFrameManager.java"

# interfaces
.implements Lcom/bumptech/glide/load/b;


# instance fields
.field private final a:Ljava/util/UUID;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ab/k;->a:Ljava/util/UUID;

    .line 171
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/yelp/android/ab/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ab/k;->b:I

    .line 175
    return-void
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 179
    instance-of v1, p1, Lcom/yelp/android/ab/k;

    if-eqz v1, :cond_0

    .line 180
    check-cast p1, Lcom/yelp/android/ab/k;

    .line 181
    iget-object v1, p1, Lcom/yelp/android/ab/k;->a:Ljava/util/UUID;

    iget-object v2, p0, Lcom/yelp/android/ab/k;->a:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/yelp/android/ab/k;->b:I

    iget v2, p1, Lcom/yelp/android/ab/k;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 183
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ab/k;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yelp/android/ab/k;->b:I

    add-int/2addr v0, v1

    .line 190
    return v0
.end method
