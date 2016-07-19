.class public Lcom/yelp/android/ui/util/aj;
.super Landroid/widget/BaseAdapter;
.source "SectionedAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/g;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/aj$a;,
        Lcom/yelp/android/ui/util/aj$c;,
        Lcom/yelp/android/ui/util/aj$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Lcom/yelp/android/ui/util/g;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/yelp/android/ui/util/g;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/ui/util/aj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/aj$a",
            "<",
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Lcom/yelp/android/ui/util/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 293
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    .line 296
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/aj;->d:Ljava/util/Set;

    .line 297
    new-instance v0, Lcom/yelp/android/ui/util/aj$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/aj$a;-><init>(Lcom/yelp/android/ui/util/aj$1;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/aj;->a:Lcom/yelp/android/ui/util/aj$a;

    .line 298
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/aj;->e:Z

    .line 299
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/aj;->f:Z

    .line 300
    new-instance v0, Lcom/yelp/android/ui/util/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/b;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/aj;->h:Lcom/yelp/android/ui/util/b;

    .line 301
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/aj;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/yelp/android/ui/util/aj$a;)Lcom/yelp/android/ui/util/aj$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yelp/android/ui/util/aj$a",
            "<",
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;>;)",
            "Lcom/yelp/android/ui/util/aj$a",
            "<",
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 642
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v0

    move v2, p1

    :goto_0
    if-ge v4, v5, :cond_6

    .line 643
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 644
    iget-object v1, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/util/g;

    .line 645
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getCount()I

    move-result v1

    .line 646
    if-nez v1, :cond_1

    .line 642
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 649
    :cond_1
    iget-boolean v6, v0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    if-eqz v6, :cond_2

    .line 650
    add-int/lit8 v1, v1, 0x1

    .line 652
    :cond_2
    if-nez v2, :cond_3

    iget-boolean v6, v0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    if-eqz v6, :cond_3

    move-object v0, v3

    .line 668
    :goto_2
    return-object v0

    .line 654
    :cond_3
    if-ne v2, v1, :cond_4

    iget-boolean v6, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v6, :cond_4

    move-object v0, v3

    .line 655
    goto :goto_2

    .line 656
    :cond_4
    if-ge v2, v1, :cond_5

    .line 657
    iget-boolean v1, v0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    if-eqz v1, :cond_7

    .line 658
    add-int/lit8 v1, v2, -0x1

    .line 660
    :goto_3
    invoke-virtual {p2, v0, v1}, Lcom/yelp/android/ui/util/aj$a;->a(Ljava/lang/Object;I)Lcom/yelp/android/ui/util/aj$a;

    move-result-object v0

    goto :goto_2

    .line 662
    :cond_5
    sub-int/2addr v2, v1

    .line 663
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v0, :cond_0

    .line 664
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 668
    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method public a(I)Lcom/yelp/android/ui/util/aj$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 689
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/yelp/android/ui/util/aj$b;->i:Z

    goto :goto_0

    .line 691
    :cond_0
    return-void
.end method

.method public a(ILandroid/widget/BaseAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Clearable:",
            "Landroid/widget/BaseAdapter;",
            ":",
            "Lcom/yelp/android/ui/util/g;",
            ">(ITClearable;)V"
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {p2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 351
    return-void
.end method

.method public a(ILcom/yelp/android/ui/util/aj$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to add a section with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when one already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/aj;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/aj;->e:Z

    .line 383
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/aj;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/aj;->f:Z

    .line 384
    iget-object v0, p2, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->h:Lcom/yelp/android/ui/util/b;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 385
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    .line 386
    return-void

    :cond_1
    move v0, v2

    .line 382
    goto :goto_0

    :cond_2
    move v1, v2

    .line 383
    goto :goto_1
.end method

.method public a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Clearable:",
            "Landroid/widget/BaseAdapter;",
            ":",
            "Lcom/yelp/android/ui/util/g;",
            ">(I",
            "Ljava/lang/CharSequence;",
            "TClearable;)V"
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {p2, p3}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 364
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/aj;->g:Z

    .line 679
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    .line 680
    return-void
.end method

.method public varargs a([I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    .line 336
    array-length v5, p1

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget v0, p1, v3

    .line 337
    iget-object v6, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    and-int/2addr v4, v0

    .line 336
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 337
    goto :goto_1

    .line 339
    :cond_1
    return v4
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/aj;->e:Z

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 437
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 439
    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/util/g;

    invoke-interface {v0}, Lcom/yelp/android/ui/util/g;->clear()V

    .line 437
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 442
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/aj;->notifyDataSetInvalidated()V

    .line 443
    return-void
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 390
    .line 391
    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_3

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 403
    iget-boolean v1, p0, Lcom/yelp/android/ui/util/aj;->g:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/yelp/android/ui/util/aj$b;->i:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 391
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v1

    goto :goto_0

    .line 407
    :cond_1
    iget-object v1, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/util/g;

    .line 408
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getCount()I

    move-result v1

    .line 409
    if-lez v1, :cond_4

    .line 410
    add-int/2addr v1, v2

    .line 411
    iget-boolean v2, v0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    if-eqz v2, :cond_2

    .line 412
    add-int/lit8 v1, v1, 0x1

    .line 414
    :cond_2
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v0, :cond_0

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 419
    :cond_3
    return v2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->a:Lcom/yelp/android/ui/util/aj$a;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$a;)Lcom/yelp/android/ui/util/aj$a;

    move-result-object v1

    .line 567
    const/4 v0, 0x0

    .line 568
    if-eqz v1, :cond_0

    .line 569
    iget-object v0, v1, Lcom/yelp/android/ui/util/aj$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    iget v1, v1, Lcom/yelp/android/ui/util/aj$a;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 571
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 561
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 9

    .prologue
    const/4 v4, -0x1

    .line 487
    .line 489
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v0

    move v2, v4

    move v3, p1

    :goto_0
    if-ge v5, v6, :cond_7

    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 491
    iget-object v1, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/util/g;

    .line 492
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getCount()I

    move-result v7

    .line 493
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    if-eqz v8, :cond_0

    .line 494
    add-int/lit8 v2, v2, 0x1

    .line 496
    :cond_0
    if-nez v7, :cond_1

    .line 497
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getViewTypeCount()I

    move-result v1

    add-int/2addr v1, v2

    .line 498
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v0, :cond_9

    .line 499
    add-int/lit8 v0, v1, 0x1

    move v1, v3

    .line 489
    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 503
    :cond_1
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    if-eqz v8, :cond_2

    .line 504
    add-int/lit8 v3, v3, -0x1

    .line 506
    :cond_2
    if-ne v3, v4, :cond_3

    .line 540
    :goto_2
    return v2

    .line 509
    :cond_3
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v8, :cond_4

    if-ne v3, v7, :cond_4

    .line 510
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 511
    goto :goto_2

    .line 512
    :cond_4
    if-ge v3, v7, :cond_6

    .line 514
    invoke-interface {v1, v3}, Lcom/yelp/android/ui/util/g;->getItemViewType(I)I

    move-result v0

    .line 515
    if-gez v0, :cond_5

    move v2, v4

    .line 516
    goto :goto_2

    .line 518
    :cond_5
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    goto :goto_2

    .line 521
    :cond_6
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v0, :cond_8

    .line 522
    add-int/lit8 v0, v2, 0x1

    .line 523
    add-int/lit8 v2, v3, -0x1

    .line 526
    :goto_3
    sub-int/2addr v2, v7

    .line 527
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_1

    :cond_7
    move v2, v4

    .line 540
    goto :goto_2

    :cond_8
    move v0, v2

    move v2, v3

    goto :goto_3

    :cond_9
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v5, -0x1

    .line 576
    .line 577
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v0

    move v2, v5

    move v3, p1

    :goto_0
    if-ge v4, v6, :cond_a

    .line 578
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 579
    iget-object v1, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/util/g;

    .line 580
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getCount()I

    move-result v7

    .line 581
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    if-eqz v8, :cond_0

    .line 582
    add-int/lit8 v2, v2, 0x1

    .line 584
    :cond_0
    if-nez v7, :cond_1

    .line 585
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getViewTypeCount()I

    move-result v1

    add-int/2addr v1, v2

    .line 586
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v0, :cond_c

    .line 587
    add-int/lit8 v0, v1, 0x1

    move v1, v3

    .line 577
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 591
    :cond_1
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    if-eqz v8, :cond_2

    .line 592
    add-int/lit8 v3, v3, -0x1

    .line 594
    :cond_2
    if-ne v3, v5, :cond_4

    .line 595
    invoke-static {v0, p2, p3}, Lcom/yelp/android/ui/util/aj$b;->a(Lcom/yelp/android/ui/util/aj$b;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 596
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 597
    if-nez v0, :cond_3

    invoke-static {}, Lcom/yelp/android/ui/util/ar;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 598
    :cond_3
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v0, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 630
    :goto_2
    return-object v0

    .line 601
    :cond_4
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v8, :cond_6

    if-ne v3, v7, :cond_6

    .line 602
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 603
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->b()Landroid/view/View;

    move-result-object v1

    .line 604
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 605
    if-nez v0, :cond_5

    invoke-static {}, Lcom/yelp/android/ui/util/ar;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 606
    :cond_5
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v0, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 608
    goto :goto_2

    .line 609
    :cond_6
    if-ge v3, v7, :cond_9

    .line 610
    invoke-interface {v1, v3, p2, p3}, Lcom/yelp/android/ui/util/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 611
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 612
    if-eqz v5, :cond_8

    const-class v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 614
    invoke-interface {v1, v3}, Lcom/yelp/android/ui/util/g;->getItemViewType(I)I

    move-result v0

    .line 615
    if-ltz v0, :cond_7

    .line 616
    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 618
    :cond_7
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    move-object v0, v4

    .line 620
    goto :goto_2

    .line 622
    :cond_9
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v0, :cond_b

    .line 623
    add-int/lit8 v0, v2, 0x1

    .line 624
    add-int/lit8 v2, v3, -0x1

    .line 627
    :goto_3
    sub-int/2addr v2, v7

    .line 628
    invoke-interface {v1}, Lcom/yelp/android/ui/util/g;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    goto/16 :goto_1

    .line 630
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    move v0, v2

    move v2, v3

    goto :goto_3

    :cond_c
    move v0, v1

    move v1, v3

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 545
    .line 546
    iget-object v1, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 548
    iget-object v4, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 549
    iget-boolean v4, v0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    if-eqz v4, :cond_0

    .line 550
    add-int/lit8 v1, v1, 0x1

    .line 552
    :cond_0
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    if-eqz v0, :cond_1

    .line 553
    add-int/lit8 v1, v1, 0x1

    .line 546
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 556
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/aj;->f:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 457
    :goto_1
    return v0

    .line 451
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 457
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj;->a:Lcom/yelp/android/ui/util/aj$a;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$a;)Lcom/yelp/android/ui/util/aj$a;

    move-result-object v1

    .line 476
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 477
    :goto_0
    if-eqz v0, :cond_0

    .line 478
    iget-object v0, v1, Lcom/yelp/android/ui/util/aj$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 479
    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    .line 480
    iget v1, v1, Lcom/yelp/android/ui/util/aj$a;->b:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 482
    :cond_0
    return v0

    .line 476
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/yelp/android/ui/util/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lcom/yelp/android/ui/util/aj$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/aj$1;-><init>(Lcom/yelp/android/ui/util/aj;)V

    return-object v0
.end method
