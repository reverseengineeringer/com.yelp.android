.class public Landroid/support/v4/content/l;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/l$b;,
        Landroid/support/v4/content/l$c;,
        Landroid/support/v4/content/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field n:I

.field o:Landroid/support/v4/content/l$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/l$c",
            "<TD;>;"
        }
    .end annotation
.end field

.field p:Landroid/support/v4/content/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/l$b",
            "<TD;>;"
        }
    .end annotation
.end field

.field q:Landroid/content/Context;

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Landroid/support/v4/content/l;->r:Z

    .line 40
    iput-boolean v1, p0, Landroid/support/v4/content/l;->s:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/l;->t:Z

    .line 42
    iput-boolean v1, p0, Landroid/support/v4/content/l;->u:Z

    .line 43
    iput-boolean v1, p0, Landroid/support/v4/content/l;->v:Z

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/l;->q:Landroid/content/Context;

    .line 115
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Landroid/support/v4/content/l;->v:Z

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/l;->u:Z

    .line 471
    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Landroid/support/v4/content/l;->r:Z

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Landroid/support/v4/content/l;->t()V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/l;->u:Z

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public a(ILandroid/support/v4/content/l$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/l$c",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v4/content/l;->o:Landroid/support/v4/content/l$c;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iput-object p2, p0, Landroid/support/v4/content/l;->o:Landroid/support/v4/content/l$c;

    .line 168
    iput p1, p0, Landroid/support/v4/content/l;->n:I

    .line 169
    return-void
.end method

.method public a(Landroid/support/v4/content/l$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/l$b",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v4/content/l;->p:Landroid/support/v4/content/l$b;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput-object p1, p0, Landroid/support/v4/content/l;->p:Landroid/support/v4/content/l$b;

    .line 200
    return-void
.end method

.method public a(Landroid/support/v4/content/l$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/l$c",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/content/l;->o:Landroid/support/v4/content/l$c;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/l;->o:Landroid/support/v4/content/l$c;

    if-eq v0, p1, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/l;->o:Landroid/support/v4/content/l$c;

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/l;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 523
    const-string/jumbo v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/l;->o:Landroid/support/v4/content/l$c;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    iget-boolean v0, p0, Landroid/support/v4/content/l;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/l;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/l;->v:Z

    if-eqz v0, :cond_1

    .line 525
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/l;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 526
    const-string/jumbo v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/l;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 527
    const-string/jumbo v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/l;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 529
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/content/l;->s:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/content/l;->t:Z

    if-eqz v0, :cond_3

    .line 530
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/l;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 531
    const-string/jumbo v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/l;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    :cond_3
    return-void
.end method

.method public b(Landroid/support/v4/content/l$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/l$b",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v4/content/l;->p:Landroid/support/v4/content/l$b;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/l;->p:Landroid/support/v4/content/l$b;

    if-eq v0, p1, :cond_1

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/l;->p:Landroid/support/v4/content/l$b;

    .line 218
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/content/l;->o:Landroid/support/v4/content/l$c;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/support/v4/content/l;->o:Landroid/support/v4/content/l$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/l$c;->a(Landroid/support/v4/content/l;Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    invoke-static {p1, v0}, Lcom/yelp/android/g/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 499
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v4/content/l;->p:Landroid/support/v4/content/l$b;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v4/content/l;->p:Landroid/support/v4/content/l$b;

    invoke-interface {v0, p0}, Landroid/support/v4/content/l$b;->a(Landroid/support/v4/content/l;)V

    .line 140
    :cond_0
    return-void
.end method

.method public m()Landroid/content/Context;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v4/content/l;->q:Landroid/content/Context;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/support/v4/content/l;->n:I

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/support/v4/content/l;->r:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/support/v4/content/l;->s:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Landroid/support/v4/content/l;->t:Z

    return v0
.end method

.method public final r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/l;->r:Z

    .line 270
    iput-boolean v1, p0, Landroid/support/v4/content/l;->t:Z

    .line 271
    iput-boolean v1, p0, Landroid/support/v4/content/l;->s:Z

    .line 272
    invoke-virtual {p0}, Landroid/support/v4/content/l;->i()V

    .line 273
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/support/v4/content/l;->b()Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 0

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/support/v4/content/l;->a()V

    .line 330
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    invoke-static {p0, v0}, Lcom/yelp/android/g/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 507
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget v1, p0, Landroid/support/v4/content/l;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/l;->r:Z

    .line 361
    invoke-virtual {p0}, Landroid/support/v4/content/l;->j()V

    .line 362
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/l;->s:Z

    .line 386
    invoke-virtual {p0}, Landroid/support/v4/content/l;->w()V

    .line 387
    return-void
.end method

.method protected w()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0}, Landroid/support/v4/content/l;->k()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/l;->t:Z

    .line 422
    iput-boolean v1, p0, Landroid/support/v4/content/l;->r:Z

    .line 423
    iput-boolean v1, p0, Landroid/support/v4/content/l;->s:Z

    .line 424
    iput-boolean v1, p0, Landroid/support/v4/content/l;->u:Z

    .line 425
    iput-boolean v1, p0, Landroid/support/v4/content/l;->v:Z

    .line 426
    return-void
.end method

.method public y()Z
    .locals 2

    .prologue
    .line 443
    iget-boolean v0, p0, Landroid/support/v4/content/l;->u:Z

    .line 444
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/l;->u:Z

    .line 445
    iget-boolean v1, p0, Landroid/support/v4/content/l;->v:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/l;->v:Z

    .line 446
    return v0
.end method

.method public z()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/l;->v:Z

    .line 458
    return-void
.end method
