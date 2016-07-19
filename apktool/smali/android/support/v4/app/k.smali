.class public abstract Landroid/support/v4/app/k;
.super Landroid/support/v4/app/i;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/i;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroid/content/Context;

.field final c:I

.field final d:Landroid/support/v4/app/m;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/yelp/android/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/i",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/q;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/support/v4/app/r;

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->d:Landroid/support/v4/app/m;

    .line 60
    iput-object p1, p0, Landroid/support/v4/app/k;->a:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Landroid/support/v4/app/k;->b:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Landroid/support/v4/app/k;->e:Landroid/os/Handler;

    .line 63
    iput p4, p0, Landroid/support/v4/app/k;->c:I

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/k;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 56
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ZZ)Landroid/support/v4/app/r;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/yelp/android/g/i;

    invoke-direct {v0}, Lcom/yelp/android/g/i;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    invoke-virtual {v0, p1}, Lcom/yelp/android/g/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/r;

    .line 270
    if-nez v0, :cond_2

    .line 271
    if-eqz p3, :cond_1

    .line 272
    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/r;-><init>(Ljava/lang/String;Landroid/support/v4/app/k;Z)V

    .line 273
    iget-object v1, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    invoke-virtual {v1, p1, v0}, Lcom/yelp/android/g/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    :goto_0
    return-object v0

    .line 276
    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/k;)V

    goto :goto_0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 113
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method a(Lcom/yelp/android/g/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/g/i",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    iput-object p1, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    .line 310
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/k;->i:Z

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->i:Z

    .line 229
    if-eqz p1, :cond_2

    .line 230
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->d()V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->c()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method b(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    invoke-virtual {v0, p1}, Lcom/yelp/android/g/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/r;

    .line 190
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/r;->f:Z

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/support/v4/app/r;->h()V

    .line 192
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    invoke-virtual {v0, p1}, Lcom/yelp/android/g/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/k;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/r;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/support/v4/app/k;->c:I

    return v0
.end method

.method public abstract g()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method h()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/app/Activity;

    return-object v0
.end method

.method i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/content/Context;

    return-object v0
.end method

.method j()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v4/app/k;->e:Landroid/os/Handler;

    return-object v0
.end method

.method k()Landroid/support/v4/app/m;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v4/app/k;->d:Landroid/support/v4/app/m;

    return-object v0
.end method

.method l()Landroid/support/v4/app/r;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 178
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    .line 183
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/k;->h:Z

    .line 182
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/k;->i:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/k;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/r;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    .line 183
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    goto :goto_0
.end method

.method m()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 201
    iget-boolean v0, p0, Landroid/support/v4/app/k;->i:Z

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 204
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/k;->i:Z

    .line 206
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()V

    .line 215
    :cond_1
    :goto_1
    iput-boolean v3, p0, Landroid/support/v4/app/k;->h:Z

    goto :goto_0

    .line 208
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/k;->h:Z

    if-nez v0, :cond_1

    .line 209
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/k;->i:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/k;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/r;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    .line 211
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    iget-boolean v0, v0, Landroid/support/v4/app/r;->e:Z

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()V

    goto :goto_1
.end method

.method n()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->h()V

    goto :goto_0
.end method

.method o()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    invoke-virtual {v0}, Lcom/yelp/android/g/i;->size()I

    move-result v2

    .line 253
    new-array v3, v2, [Landroid/support/v4/app/r;

    .line 254
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 255
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/g/i;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/r;

    aput-object v0, v3, v1

    .line 254
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 257
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 258
    aget-object v1, v3, v0

    .line 259
    invoke-virtual {v1}, Landroid/support/v4/app/r;->e()V

    .line 260
    invoke-virtual {v1}, Landroid/support/v4/app/r;->g()V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_1
    return-void
.end method

.method p()Lcom/yelp/android/g/i;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/g/i",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/q;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 282
    .line 283
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    invoke-virtual {v0}, Lcom/yelp/android/g/i;->size()I

    move-result v3

    .line 287
    new-array v4, v3, [Landroid/support/v4/app/r;

    .line 288
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    invoke-virtual {v0, v2}, Lcom/yelp/android/g/i;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/r;

    aput-object v0, v4, v2

    .line 288
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 291
    :goto_1
    if-ge v1, v3, :cond_3

    .line 292
    aget-object v2, v4, v1

    .line 293
    iget-boolean v5, v2, Landroid/support/v4/app/r;->f:Z

    if-eqz v5, :cond_1

    .line 294
    const/4 v0, 0x1

    .line 291
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/r;->h()V

    .line 297
    iget-object v5, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    iget-object v2, v2, Landroid/support/v4/app/r;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/yelp/android/g/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move v0, v1

    .line 302
    :cond_3
    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Lcom/yelp/android/g/i;

    .line 305
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
