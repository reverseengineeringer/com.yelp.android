.class Lcom/bumptech/glide/load/engine/n;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Lcom/bumptech/glide/load/d;

.field private final e:Lcom/bumptech/glide/load/d;

.field private final f:Lcom/bumptech/glide/load/f;

.field private final g:Lcom/bumptech/glide/load/e;

.field private final h:Lcom/yelp/android/ad/c;

.field private final i:Lcom/bumptech/glide/load/a;

.field private final j:Lcom/bumptech/glide/load/b;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/bumptech/glide/load/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/e;Lcom/yelp/android/ad/c;Lcom/bumptech/glide/load/a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/n;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/n;->j:Lcom/bumptech/glide/load/b;

    .line 35
    iput p3, p0, Lcom/bumptech/glide/load/engine/n;->b:I

    .line 36
    iput p4, p0, Lcom/bumptech/glide/load/engine/n;->c:I

    .line 37
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    .line 38
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    .line 39
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    .line 40
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    .line 41
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    .line 42
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/b;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->m:Lcom/bumptech/glide/load/b;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/bumptech/glide/load/engine/s;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/n;->j:Lcom/bumptech/glide/load/b;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/s;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/n;->m:Lcom/bumptech/glide/load/b;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->m:Lcom/bumptech/glide/load/b;

    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 3

    .prologue
    .line 137
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/n;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/n;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/n;->j:Lcom/bumptech/glide/load/b;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/b;->a(Ljava/security/MessageDigest;)V

    .line 142
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/n;->a:Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 143
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/e;->a()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 149
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 150
    return-void

    .line 144
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 145
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 146
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    .line 147
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3

    .line 149
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 57
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 61
    check-cast p1, Lcom/bumptech/glide/load/engine/n;

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->j:Lcom/bumptech/glide/load/b;

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->j:Lcom/bumptech/glide/load/b;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->c:I

    iget v3, p1, Lcom/bumptech/glide/load/engine/n;->c:I

    if-ne v0, v3, :cond_0

    .line 69
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->b:I

    iget v3, p1, Lcom/bumptech/glide/load/engine/n;->b:I

    if-ne v0, v3, :cond_0

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    if-nez v3, :cond_9

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    invoke-interface {v3}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    if-nez v3, :cond_b

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    if-nez v0, :cond_c

    move v0, v1

    :goto_5
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    if-nez v3, :cond_d

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    if-nez v0, :cond_e

    move v0, v1

    :goto_7
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    if-nez v3, :cond_f

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/e;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    if-nez v0, :cond_10

    move v0, v1

    :goto_9
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    if-nez v3, :cond_11

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    invoke-interface {v0}, Lcom/yelp/android/ad/c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    invoke-interface {v3}, Lcom/yelp/android/ad/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    if-nez v0, :cond_12

    move v0, v1

    :goto_b
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    if-nez v3, :cond_13

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    move v2, v1

    .line 96
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 71
    goto/16 :goto_1

    :cond_9
    move v3, v2

    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 75
    goto/16 :goto_3

    :cond_b
    move v3, v2

    goto/16 :goto_4

    :cond_c
    move v0, v2

    .line 79
    goto/16 :goto_5

    :cond_d
    move v3, v2

    goto/16 :goto_6

    :cond_e
    move v0, v2

    .line 83
    goto :goto_7

    :cond_f
    move v3, v2

    goto :goto_8

    :cond_10
    move v0, v2

    .line 87
    goto :goto_9

    :cond_11
    move v3, v2

    goto :goto_a

    :cond_12
    move v0, v2

    .line 91
    goto :goto_b

    :cond_13
    move v3, v2

    goto :goto_c
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 103
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/n;->j:Lcom/bumptech/glide/load/b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 104
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/n;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/n;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 106
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 107
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 108
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 109
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 110
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    invoke-interface {v0}, Lcom/yelp/android/ad/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 111
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    .line 113
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/engine/n;->l:I

    return v0

    :cond_2
    move v0, v1

    .line 106
    goto :goto_0

    :cond_3
    move v0, v1

    .line 107
    goto :goto_1

    :cond_4
    move v0, v1

    .line 108
    goto :goto_2

    :cond_5
    move v0, v1

    .line 109
    goto :goto_3

    :cond_6
    move v0, v1

    .line 110
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/n;->j:Lcom/bumptech/glide/load/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/n;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/n;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->e:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->f:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->g:Lcom/bumptech/glide/load/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/e;->a()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->h:Lcom/yelp/android/ad/c;

    invoke-interface {v0}, Lcom/yelp/android/ad/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->i:Lcom/bumptech/glide/load/a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/n;->k:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/n;->k:Ljava/lang/String;

    return-object v0

    .line 119
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_3

    :cond_5
    const-string/jumbo v0, ""

    goto :goto_4

    :cond_6
    const-string/jumbo v0, ""

    goto :goto_5
.end method
