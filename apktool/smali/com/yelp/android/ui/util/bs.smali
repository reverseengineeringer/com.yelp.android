.class public Lcom/yelp/android/ui/util/bs;
.super Landroid/widget/BaseAdapter;
.source "SectionedAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/j;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Lcom/yelp/android/ui/util/j;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/yelp/android/ui/util/j;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/ui/util/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/bu",
            "<",
            "Lcom/yelp/android/ui/util/bv",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/util/bv",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/ui/util/bv",
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

    .line 275
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    .line 278
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/bs;->d:Ljava/util/Set;

    .line 279
    new-instance v0, Lcom/yelp/android/ui/util/bu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/bu;-><init>(Lcom/yelp/android/ui/util/bt;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/bs;->a:Lcom/yelp/android/ui/util/bu;

    .line 280
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/bs;->e:Z

    .line 281
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/bs;->f:Z

    .line 282
    new-instance v0, Lcom/yelp/android/ui/util/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/b;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/bs;->h:Lcom/yelp/android/ui/util/b;

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/bs;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/yelp/android/ui/util/bu;)Lcom/yelp/android/ui/util/bu;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yelp/android/ui/util/bu",
            "<",
            "Lcom/yelp/android/ui/util/bv",
            "<*>;>;)",
            "Lcom/yelp/android/ui/util/bu",
            "<",
            "Lcom/yelp/android/ui/util/bv",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 624
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v0

    move v2, p1

    :goto_0
    if-ge v4, v5, :cond_6

    .line 625
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 626
    iget-object v1, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/util/j;

    .line 627
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getCount()I

    move-result v1

    .line 628
    if-nez v1, :cond_1

    .line 624
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 631
    :cond_1
    iget-boolean v6, v0, Lcom/yelp/android/ui/util/bv;->g:Z

    if-eqz v6, :cond_2

    .line 632
    add-int/lit8 v1, v1, 0x1

    .line 634
    :cond_2
    if-nez v2, :cond_3

    iget-boolean v6, v0, Lcom/yelp/android/ui/util/bv;->g:Z

    if-eqz v6, :cond_3

    move-object v0, v3

    .line 650
    :goto_2
    return-object v0

    .line 636
    :cond_3
    if-ne v2, v1, :cond_4

    iget-boolean v6, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v6, :cond_4

    move-object v0, v3

    .line 637
    goto :goto_2

    .line 638
    :cond_4
    if-ge v2, v1, :cond_5

    .line 639
    iget-boolean v1, v0, Lcom/yelp/android/ui/util/bv;->g:Z

    if-eqz v1, :cond_7

    .line 640
    add-int/lit8 v1, v2, -0x1

    .line 642
    :goto_3
    invoke-virtual {p2, v0, v1}, Lcom/yelp/android/ui/util/bu;->a(Ljava/lang/Object;I)Lcom/yelp/android/ui/util/bu;

    move-result-object v0

    goto :goto_2

    .line 644
    :cond_5
    sub-int/2addr v2, v1

    .line 645
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v0, :cond_0

    .line 646
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 650
    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method public a(I)Lcom/yelp/android/ui/util/bv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/bv",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 670
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 671
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/yelp/android/ui/util/bv;->i:Z

    goto :goto_0

    .line 673
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
            "Lcom/yelp/android/ui/util/j;",
            ">(ITClearable;)V"
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {p2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 333
    return-void
.end method

.method public a(ILcom/yelp/android/ui/util/bv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yelp/android/ui/util/bv",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
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

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bs;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/bs;->e:Z

    .line 365
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bs;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/yelp/android/ui/util/bs;->f:Z

    .line 366
    iget-object v0, p2, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/util/bs;->h:Lcom/yelp/android/ui/util/b;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 367
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 368
    return-void

    :cond_1
    move v0, v2

    .line 364
    goto :goto_0

    :cond_2
    move v1, v2

    .line 365
    goto :goto_1
.end method

.method public a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Clearable:",
            "Landroid/widget/BaseAdapter;",
            ":",
            "Lcom/yelp/android/ui/util/j;",
            ">(I",
            "Ljava/lang/CharSequence;",
            "TClearable;)V"
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {p2, p3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 346
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 660
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/bs;->g:Z

    .line 661
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 662
    return-void
.end method

.method public varargs a([I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    .line 318
    array-length v5, p1

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget v0, p1, v3

    .line 319
    iget-object v6, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    and-int/2addr v4, v0

    .line 318
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 319
    goto :goto_1

    .line 321
    :cond_1
    return v4
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bs;->e:Z

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 419
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 421
    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/util/j;

    invoke-interface {v0}, Lcom/yelp/android/ui/util/j;->clear()V

    .line 419
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 424
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetInvalidated()V

    .line 425
    return-void
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 372
    .line 373
    iget-object v1, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_3

    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 385
    iget-boolean v1, p0, Lcom/yelp/android/ui/util/bs;->g:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/yelp/android/ui/util/bv;->i:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 373
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v1

    goto :goto_0

    .line 389
    :cond_1
    iget-object v1, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/util/j;

    .line 390
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getCount()I

    move-result v1

    .line 391
    if-lez v1, :cond_4

    .line 392
    add-int/2addr v1, v2

    .line 393
    iget-boolean v2, v0, Lcom/yelp/android/ui/util/bv;->g:Z

    if-eqz v2, :cond_2

    .line 394
    add-int/lit8 v1, v1, 0x1

    .line 396
    :cond_2
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v0, :cond_0

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 401
    :cond_3
    return v2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->a:Lcom/yelp/android/ui/util/bu;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bu;)Lcom/yelp/android/ui/util/bu;

    move-result-object v1

    .line 548
    const/4 v0, 0x0

    .line 549
    if-eqz v1, :cond_0

    .line 550
    iget-object v0, v1, Lcom/yelp/android/ui/util/bu;->a:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    iget v1, v1, Lcom/yelp/android/ui/util/bu;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 552
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 542
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 9

    .prologue
    const/4 v4, -0x1

    .line 469
    .line 471
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v0

    move v2, v4

    move v3, p1

    :goto_0
    if-ge v5, v6, :cond_7

    .line 472
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 473
    iget-object v1, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/util/j;

    .line 474
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getCount()I

    move-result v7

    .line 475
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/bv;->g:Z

    if-eqz v8, :cond_0

    .line 476
    add-int/lit8 v2, v2, 0x1

    .line 478
    :cond_0
    if-nez v7, :cond_1

    .line 479
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getViewTypeCount()I

    move-result v1

    add-int/2addr v1, v2

    .line 480
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v0, :cond_9

    .line 481
    add-int/lit8 v0, v1, 0x1

    move v1, v3

    .line 471
    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 485
    :cond_1
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/bv;->g:Z

    if-eqz v8, :cond_2

    .line 486
    add-int/lit8 v3, v3, -0x1

    .line 488
    :cond_2
    if-ne v3, v4, :cond_3

    .line 521
    :goto_2
    return v2

    .line 491
    :cond_3
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v8, :cond_4

    if-ne v3, v7, :cond_4

    .line 492
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 493
    goto :goto_2

    .line 494
    :cond_4
    if-ge v3, v7, :cond_6

    .line 496
    invoke-interface {v1, v3}, Lcom/yelp/android/ui/util/j;->getItemViewType(I)I

    move-result v0

    .line 497
    if-gez v0, :cond_5

    move v2, v4

    .line 498
    goto :goto_2

    .line 500
    :cond_5
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    goto :goto_2

    .line 503
    :cond_6
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v0, :cond_8

    .line 504
    add-int/lit8 v0, v2, 0x1

    .line 505
    add-int/lit8 v2, v3, -0x1

    .line 508
    :goto_3
    sub-int/2addr v2, v7

    .line 509
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_1

    :cond_7
    move v2, v4

    .line 521
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

    .line 557
    .line 558
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v0

    move v2, v5

    move v3, p1

    :goto_0
    if-ge v4, v6, :cond_a

    .line 559
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 560
    iget-object v1, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/yelp/android/ui/util/j;

    .line 561
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getCount()I

    move-result v7

    .line 562
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/bv;->g:Z

    if-eqz v8, :cond_0

    .line 563
    add-int/lit8 v2, v2, 0x1

    .line 565
    :cond_0
    if-nez v7, :cond_1

    .line 566
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getViewTypeCount()I

    move-result v1

    add-int/2addr v1, v2

    .line 567
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v0, :cond_c

    .line 568
    add-int/lit8 v0, v1, 0x1

    move v1, v3

    .line 558
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 572
    :cond_1
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/bv;->g:Z

    if-eqz v8, :cond_2

    .line 573
    add-int/lit8 v3, v3, -0x1

    .line 575
    :cond_2
    if-ne v3, v5, :cond_4

    .line 576
    invoke-virtual {v0, p2, p3}, Lcom/yelp/android/ui/util/bv;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 577
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 578
    if-nez v0, :cond_3

    invoke-static {}, Lcom/yelp/android/ui/util/cp;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 579
    :cond_3
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v0, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 612
    :goto_2
    return-object v0

    .line 582
    :cond_4
    iget-boolean v8, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v8, :cond_6

    if-ne v3, v7, :cond_6

    .line 583
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 584
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bv;->a()Landroid/view/View;

    move-result-object v1

    .line 585
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 586
    if-nez v0, :cond_5

    invoke-static {}, Lcom/yelp/android/ui/util/cp;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 587
    :cond_5
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v0, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 589
    goto :goto_2

    .line 590
    :cond_6
    if-ge v3, v7, :cond_9

    .line 591
    invoke-interface {v1, v3, p2, p3}, Lcom/yelp/android/ui/util/j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 592
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 593
    if-eqz v5, :cond_8

    const-class v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 595
    invoke-interface {v1, v3}, Lcom/yelp/android/ui/util/j;->getItemViewType(I)I

    move-result v0

    .line 596
    if-ltz v0, :cond_7

    .line 597
    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 599
    :cond_7
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    move-object v0, v4

    .line 602
    goto :goto_2

    .line 604
    :cond_9
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v0, :cond_b

    .line 605
    add-int/lit8 v0, v2, 0x1

    .line 606
    add-int/lit8 v2, v3, -0x1

    .line 609
    :goto_3
    sub-int/2addr v2, v7

    .line 610
    invoke-interface {v1}, Lcom/yelp/android/ui/util/j;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    goto/16 :goto_1

    .line 612
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

    .line 526
    .line 527
    iget-object v1, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 528
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 529
    iget-object v4, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 530
    iget-boolean v4, v0, Lcom/yelp/android/ui/util/bv;->g:Z

    if-eqz v4, :cond_0

    .line 531
    add-int/lit8 v1, v1, 0x1

    .line 533
    :cond_0
    iget-boolean v0, v0, Lcom/yelp/android/ui/util/bv;->h:Z

    if-eqz v0, :cond_1

    .line 534
    add-int/lit8 v1, v1, 0x1

    .line 527
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 537
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bs;->f:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 439
    :goto_1
    return v0

    .line 433
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 439
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/util/bs;->a:Lcom/yelp/android/ui/util/bu;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bu;)Lcom/yelp/android/ui/util/bu;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 459
    :goto_0
    if-eqz v0, :cond_0

    .line 460
    iget-object v0, v1, Lcom/yelp/android/ui/util/bu;->a:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 461
    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    .line 462
    iget v1, v1, Lcom/yelp/android/ui/util/bu;->b:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 464
    :cond_0
    return v0

    .line 458
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
            "Lcom/yelp/android/ui/util/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/yelp/android/ui/util/bt;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/bt;-><init>(Lcom/yelp/android/ui/util/bs;)V

    return-object v0
.end method
