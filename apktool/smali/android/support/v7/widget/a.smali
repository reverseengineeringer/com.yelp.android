.class Landroid/support/v7/widget/a;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroid/support/v7/widget/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/a$a;,
        Landroid/support/v7/widget/a$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v7/widget/a$a;

.field d:Ljava/lang/Runnable;

.field final e:Z

.field final f:Landroid/support/v7/widget/h;

.field private g:Lcom/yelp/android/g/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/h$a",
            "<",
            "Landroid/support/v7/widget/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a$a;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/a;-><init>(Landroid/support/v7/widget/a$a;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/a$a;Z)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/yelp/android/g/h$b;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/yelp/android/g/h$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/a;->g:Lcom/yelp/android/g/h$a;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    .line 76
    iput-boolean p2, p0, Landroid/support/v7/widget/a;->e:Z

    .line 77
    new-instance v0, Landroid/support/v7/widget/h;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/h;-><init>(Landroid/support/v7/widget/h$a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/h;

    .line 78
    return-void
.end method

.method private b(II)I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 327
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 328
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-ltz v4, :cond_e

    .line 329
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a$b;

    .line 330
    iget v2, v0, Landroid/support/v7/widget/a$b;->a:I

    if-ne v2, v6, :cond_a

    .line 332
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    iget v3, v0, Landroid/support/v7/widget/a$b;->d:I

    if-ge v2, v3, :cond_2

    .line 333
    iget v3, v0, Landroid/support/v7/widget/a$b;->b:I

    .line 334
    iget v2, v0, Landroid/support/v7/widget/a$b;->d:I

    .line 339
    :goto_1
    if-lt v1, v3, :cond_7

    if-gt v1, v2, :cond_7

    .line 341
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    if-ne v3, v2, :cond_4

    .line 342
    if-nez p2, :cond_3

    .line 343
    iget v2, v0, Landroid/support/v7/widget/a$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->d:I

    .line 348
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 328
    :cond_1
    :goto_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 336
    :cond_2
    iget v3, v0, Landroid/support/v7/widget/a$b;->d:I

    .line 337
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    goto :goto_1

    .line 344
    :cond_3
    if-ne p2, v5, :cond_0

    .line 345
    iget v2, v0, Landroid/support/v7/widget/a$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->d:I

    goto :goto_2

    .line 350
    :cond_4
    if-nez p2, :cond_6

    .line 351
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->b:I

    .line 356
    :cond_5
    :goto_5
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 352
    :cond_6
    if-ne p2, v5, :cond_5

    .line 353
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->b:I

    goto :goto_5

    .line 358
    :cond_7
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    if-ge v1, v2, :cond_9

    .line 360
    if-nez p2, :cond_8

    .line 361
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->b:I

    .line 362
    iget v2, v0, Landroid/support/v7/widget/a$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->d:I

    move v0, v1

    goto :goto_3

    .line 363
    :cond_8
    if-ne p2, v5, :cond_9

    .line 364
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->b:I

    .line 365
    iget v2, v0, Landroid/support/v7/widget/a$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->d:I

    :cond_9
    move v0, v1

    goto :goto_3

    .line 369
    :cond_a
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    if-gt v2, v1, :cond_c

    .line 370
    iget v2, v0, Landroid/support/v7/widget/a$b;->a:I

    if-nez v2, :cond_b

    .line 371
    iget v0, v0, Landroid/support/v7/widget/a$b;->d:I

    sub-int/2addr v1, v0

    goto :goto_4

    .line 372
    :cond_b
    iget v2, v0, Landroid/support/v7/widget/a$b;->a:I

    if-ne v2, v5, :cond_1

    .line 373
    iget v0, v0, Landroid/support/v7/widget/a$b;->d:I

    add-int/2addr v1, v0

    goto :goto_4

    .line 376
    :cond_c
    if-nez p2, :cond_d

    .line 377
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->b:I

    goto :goto_4

    .line 378
    :cond_d
    if-ne p2, v5, :cond_1

    .line 379
    iget v2, v0, Landroid/support/v7/widget/a$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/a$b;->b:I

    goto :goto_4

    .line 392
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_6
    if-ltz v2, :cond_12

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a$b;

    .line 394
    iget v3, v0, Landroid/support/v7/widget/a$b;->a:I

    if-ne v3, v6, :cond_11

    .line 395
    iget v3, v0, Landroid/support/v7/widget/a$b;->d:I

    iget v4, v0, Landroid/support/v7/widget/a$b;->b:I

    if-eq v3, v4, :cond_f

    iget v3, v0, Landroid/support/v7/widget/a$b;->d:I

    if-gez v3, :cond_10

    .line 396
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;)V

    .line 392
    :cond_10
    :goto_7
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_6

    .line 399
    :cond_11
    iget v3, v0, Landroid/support/v7/widget/a$b;->d:I

    if-gtz v3, :cond_10

    .line 400
    iget-object v3, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;)V

    goto :goto_7

    .line 404
    :cond_12
    return v1
.end method

.method private b(Landroid/support/v7/widget/a$b;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a;->g(Landroid/support/v7/widget/a$b;)V

    .line 128
    return-void
.end method

.method private b(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 409
    :goto_0
    if-ge v3, v4, :cond_3

    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a$b;

    .line 411
    iget v5, v0, Landroid/support/v7/widget/a$b;->a:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 412
    iget v0, v0, Landroid/support/v7/widget/a$b;->d:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/a;->a(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    move v0, v1

    .line 425
    :goto_1
    return v0

    .line 415
    :cond_0
    iget v5, v0, Landroid/support/v7/widget/a$b;->a:I

    if-nez v5, :cond_2

    .line 417
    iget v5, v0, Landroid/support/v7/widget/a$b;->b:I

    iget v6, v0, Landroid/support/v7/widget/a$b;->d:I

    add-int/2addr v5, v6

    .line 418
    iget v0, v0, Landroid/support/v7/widget/a$b;->b:I

    :goto_2
    if-ge v0, v5, :cond_2

    .line 419
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/a;->a(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    move v0, v1

    .line 420
    goto :goto_1

    .line 418
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 409
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 425
    goto :goto_1
.end method

.method private c(Landroid/support/v7/widget/a$b;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    iget v7, p1, Landroid/support/v7/widget/a$b;->b:I

    .line 133
    iget v0, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/a$b;->d:I

    add-int v4, v0, v3

    .line 134
    const/4 v5, -0x1

    .line 135
    iget v3, p1, Landroid/support/v7/widget/a$b;->b:I

    move v6, v2

    :goto_0
    if-ge v3, v4, :cond_3

    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/a$a;->a(I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    if-nez v5, :cond_7

    .line 148
    invoke-virtual {p0, v1, v7, v6, v8}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/a$b;

    move-result-object v0

    .line 149
    invoke-direct {p0, v0}, Landroid/support/v7/widget/a;->e(Landroid/support/v7/widget/a$b;)V

    move v0, v1

    :goto_1
    move v5, v1

    .line 165
    :goto_2
    if-eqz v0, :cond_2

    .line 166
    sub-int v0, v3, v6

    .line 167
    sub-int v3, v4, v6

    move v4, v1

    .line 135
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v6, v4

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 156
    :cond_1
    if-ne v5, v1, :cond_6

    .line 159
    invoke-virtual {p0, v1, v7, v6, v8}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/a$b;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Landroid/support/v7/widget/a;->g(Landroid/support/v7/widget/a$b;)V

    move v0, v1

    :goto_4
    move v5, v2

    .line 163
    goto :goto_2

    .line 170
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v9, v3

    move v3, v4

    move v4, v0

    move v0, v9

    goto :goto_3

    .line 173
    :cond_3
    iget v0, p1, Landroid/support/v7/widget/a$b;->d:I

    if-eq v6, v0, :cond_4

    .line 174
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;)V

    .line 175
    invoke-virtual {p0, v1, v7, v6, v8}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/a$b;

    move-result-object p1

    .line 177
    :cond_4
    if-nez v5, :cond_5

    .line 178
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a;->e(Landroid/support/v7/widget/a$b;)V

    .line 182
    :goto_5
    return-void

    .line 180
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a;->g(Landroid/support/v7/widget/a$b;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private d(Landroid/support/v7/widget/a$b;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 185
    iget v2, p1, Landroid/support/v7/widget/a$b;->b:I

    .line 187
    iget v0, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/a$b;->d:I

    add-int v6, v0, v3

    .line 188
    const/4 v0, -0x1

    .line 189
    iget v3, p1, Landroid/support/v7/widget/a$b;->b:I

    move v5, v0

    move v0, v1

    :goto_0
    if-ge v3, v6, :cond_4

    .line 190
    iget-object v7, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    invoke-interface {v7, v3}, Landroid/support/v7/widget/a$a;->a(I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v7

    .line 191
    if-nez v7, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/a;->b(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 192
    :cond_0
    if-nez v5, :cond_1

    .line 193
    iget-object v5, p1, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/a$b;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Landroid/support/v7/widget/a;->e(Landroid/support/v7/widget/a$b;)V

    move v0, v1

    move v2, v3

    :cond_1
    move v5, v2

    move v2, v0

    move v0, v4

    .line 210
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 189
    add-int/lit8 v3, v3, 0x1

    move v9, v0

    move v0, v2

    move v2, v5

    move v5, v9

    goto :goto_0

    .line 201
    :cond_2
    if-ne v5, v4, :cond_3

    .line 202
    iget-object v5, p1, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/a$b;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Landroid/support/v7/widget/a;->g(Landroid/support/v7/widget/a$b;)V

    move v0, v1

    move v2, v3

    :cond_3
    move v5, v2

    move v2, v0

    move v0, v1

    .line 208
    goto :goto_1

    .line 212
    :cond_4
    iget v1, p1, Landroid/support/v7/widget/a$b;->d:I

    if-eq v0, v1, :cond_5

    .line 213
    iget-object v1, p1, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    .line 214
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;)V

    .line 215
    invoke-virtual {p0, v8, v2, v0, v1}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/a$b;

    move-result-object p1

    .line 217
    :cond_5
    if-nez v5, :cond_6

    .line 218
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a;->e(Landroid/support/v7/widget/a$b;)V

    .line 222
    :goto_2
    return-void

    .line 220
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a;->g(Landroid/support/v7/widget/a$b;)V

    goto :goto_2
.end method

.method private e(Landroid/support/v7/widget/a$b;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 228
    iget v0, p1, Landroid/support/v7/widget/a$b;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v7/widget/a$b;->a:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    iget v0, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/a$b;->a:I

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/a;->b(II)I

    move-result v4

    .line 247
    iget v3, p1, Landroid/support/v7/widget/a$b;->b:I

    .line 249
    iget v0, p1, Landroid/support/v7/widget/a$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    :goto_0
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, v1

    .line 259
    :goto_1
    iget v7, p1, Landroid/support/v7/widget/a$b;->d:I

    if-ge v3, v7, :cond_6

    .line 260
    iget v7, p1, Landroid/support/v7/widget/a$b;->b:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    .line 261
    iget v8, p1, Landroid/support/v7/widget/a$b;->a:I

    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/a;->b(II)I

    move-result v8

    .line 266
    iget v7, p1, Landroid/support/v7/widget/a$b;->a:I

    packed-switch v7, :pswitch_data_1

    move v7, v2

    .line 274
    :goto_2
    if-eqz v7, :cond_4

    .line 275
    add-int/lit8 v5, v5, 0x1

    .line 259
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 255
    goto :goto_0

    .line 268
    :pswitch_2
    add-int/lit8 v7, v6, 0x1

    if-ne v8, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_2

    .line 271
    :pswitch_3
    if-ne v8, v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_2

    .line 278
    :cond_4
    iget v7, p1, Landroid/support/v7/widget/a$b;->a:I

    iget-object v9, p1, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6, v5, v9}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/a$b;

    move-result-object v6

    .line 282
    invoke-virtual {p0, v6, v4}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;I)V

    .line 283
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;)V

    .line 284
    iget v6, p1, Landroid/support/v7/widget/a$b;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 285
    add-int/2addr v4, v5

    :cond_5
    move v5, v1

    move v6, v8

    .line 288
    goto :goto_3

    .line 291
    :cond_6
    iget-object v0, p1, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    .line 292
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;)V

    .line 293
    if-lez v5, :cond_7

    .line 294
    iget v1, p1, Landroid/support/v7/widget/a$b;->a:I

    invoke-virtual {p0, v1, v6, v5, v0}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/a$b;

    move-result-object v0

    .line 298
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;I)V

    .line 299
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;)V

    .line 309
    :cond_7
    return-void

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private f(Landroid/support/v7/widget/a$b;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a;->g(Landroid/support/v7/widget/a$b;)V

    .line 430
    return-void
.end method

.method private g(Landroid/support/v7/widget/a$b;)V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget v0, p1, Landroid/support/v7/widget/a$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v1, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/a$b;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/a$a;->c(II)V

    .line 454
    :goto_0
    return-void

    .line 442
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v1, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/a$b;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/a$a;->d(II)V

    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v1, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/a$b;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/a$a;->b(II)V

    goto :goto_0

    .line 449
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v1, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/a$b;->d:I

    iget-object v3, p1, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/a$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method a(I)I
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/a;->a(II)I

    move-result v0

    return v0
.end method

.method a(II)I
    .locals 5

    .prologue
    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 466
    :goto_0
    if-ge p2, v2, :cond_4

    .line 467
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a$b;

    .line 468
    iget v3, v0, Landroid/support/v7/widget/a$b;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 469
    iget v3, v0, Landroid/support/v7/widget/a$b;->b:I

    if-ne v3, v1, :cond_1

    .line 470
    iget v1, v0, Landroid/support/v7/widget/a$b;->d:I

    .line 466
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 472
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/a$b;->b:I

    if-ge v3, v1, :cond_2

    .line 473
    add-int/lit8 v1, v1, -0x1

    .line 475
    :cond_2
    iget v0, v0, Landroid/support/v7/widget/a$b;->d:I

    if-gt v0, v1, :cond_0

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    :cond_3
    iget v3, v0, Landroid/support/v7/widget/a$b;->b:I

    if-gt v3, v1, :cond_0

    .line 480
    iget v3, v0, Landroid/support/v7/widget/a$b;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 481
    iget v3, v0, Landroid/support/v7/widget/a$b;->b:I

    iget v4, v0, Landroid/support/v7/widget/a$b;->d:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 482
    const/4 v1, -0x1

    .line 490
    :cond_4
    return v1

    .line 484
    :cond_5
    iget v0, v0, Landroid/support/v7/widget/a$b;->d:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 485
    :cond_6
    iget v3, v0, Landroid/support/v7/widget/a$b;->a:I

    if-nez v3, :cond_0

    .line 486
    iget v0, v0, Landroid/support/v7/widget/a$b;->d:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public a(IIILjava/lang/Object;)Landroid/support/v7/widget/a$b;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/support/v7/widget/a;->g:Lcom/yelp/android/g/h$a;

    invoke-interface {v0}, Lcom/yelp/android/g/h$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a$b;

    .line 703
    if-nez v0, :cond_0

    .line 704
    new-instance v0, Landroid/support/v7/widget/a$b;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/a$b;-><init>(IIILjava/lang/Object;)V

    .line 711
    :goto_0
    return-object v0

    .line 706
    :cond_0
    iput p1, v0, Landroid/support/v7/widget/a$b;->a:I

    .line 707
    iput p2, v0, Landroid/support/v7/widget/a$b;->b:I

    .line 708
    iput p3, v0, Landroid/support/v7/widget/a$b;->d:I

    .line 709
    iput-object p4, v0, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->a(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->a(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public a(Landroid/support/v7/widget/a$b;)V
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Landroid/support/v7/widget/a;->e:Z

    if-nez v0, :cond_0

    .line 717
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Landroid/support/v7/widget/a;->g:Lcom/yelp/android/g/h$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/g/h$a;->a(Ljava/lang/Object;)Z

    .line 720
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/a$b;I)V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/a$a;->a(Landroid/support/v7/widget/a$b;)V

    .line 313
    iget v0, p1, Landroid/support/v7/widget/a$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v1, p1, Landroid/support/v7/widget/a$b;->d:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/a$a;->a(II)V

    .line 324
    :goto_0
    return-void

    .line 318
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v1, p1, Landroid/support/v7/widget/a$b;->d:I

    iget-object v2, p1, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroid/support/v7/widget/a$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/a$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 724
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 725
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a$b;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a$b;)V

    .line 724
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 727
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 728
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/h;

    iget-object v1, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/h;->a(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 93
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a$b;

    .line 95
    iget v3, v0, Landroid/support/v7/widget/a$b;->a:I

    packed-switch v3, :pswitch_data_0

    .line 109
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/a;->f(Landroid/support/v7/widget/a$b;)V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/a$b;)V

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/a;->d(Landroid/support/v7/widget/a$b;)V

    goto :goto_1

    .line 106
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/a$b;)V

    goto :goto_1

    .line 113
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method c()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 119
    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a$b;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/a$a;->b(Landroid/support/v7/widget/a$b;)V

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->a(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 6

    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/support/v7/widget/a;->c()V

    .line 538
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 539
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a$b;

    .line 541
    iget v3, v0, Landroid/support/v7/widget/a$b;->a:I

    packed-switch v3, :pswitch_data_0

    .line 559
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 539
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 543
    :pswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/a$a;->b(Landroid/support/v7/widget/a$b;)V

    .line 544
    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v4, v0, Landroid/support/v7/widget/a$b;->b:I

    iget v0, v0, Landroid/support/v7/widget/a$b;->d:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/a$a;->c(II)V

    goto :goto_1

    .line 547
    :pswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/a$a;->b(Landroid/support/v7/widget/a$b;)V

    .line 548
    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v4, v0, Landroid/support/v7/widget/a$b;->b:I

    iget v0, v0, Landroid/support/v7/widget/a$b;->d:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/a$a;->a(II)V

    goto :goto_1

    .line 551
    :pswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/a$a;->b(Landroid/support/v7/widget/a$b;)V

    .line 552
    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v4, v0, Landroid/support/v7/widget/a$b;->b:I

    iget v5, v0, Landroid/support/v7/widget/a$b;->d:I

    iget-object v0, v0, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v0}, Landroid/support/v7/widget/a$a;->a(IILjava/lang/Object;)V

    goto :goto_1

    .line 555
    :pswitch_3
    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/a$a;->b(Landroid/support/v7/widget/a$b;)V

    .line 556
    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/widget/a$a;

    iget v4, v0, Landroid/support/v7/widget/a$b;->b:I

    iget v0, v0, Landroid/support/v7/widget/a$b;->d:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/a$a;->d(II)V

    goto :goto_1

    .line 563
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->a(Ljava/util/List;)V

    .line 564
    return-void

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
