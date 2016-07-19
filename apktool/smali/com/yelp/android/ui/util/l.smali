.class public abstract Lcom/yelp/android/ui/util/l;
.super Landroid/support/v4/view/ac;
.source "DynamicStatePagerAdapter.java"


# instance fields
.field private final a:Landroid/support/v4/app/l;

.field private b:Landroid/support/v4/app/o;

.field private c:[J

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/l;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/support/v4/view/ac;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->c:[J

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    .line 66
    iput-object v1, p0, Lcom/yelp/android/ui/util/l;->f:Landroid/support/v4/app/Fragment;

    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/util/l;->a:Landroid/support/v4/app/l;

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/l;->h()V

    .line 71
    return-void
.end method

.method private d()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/l;->b()I

    move-result v0

    new-array v4, v0, [J

    move v0, v1

    .line 88
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/l;->d(I)J

    move-result-wide v2

    aput-wide v2, v4, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->c:[J

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_9

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 95
    :goto_1
    array-length v2, v4

    if-ge v0, v2, :cond_1

    .line 96
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->c:[J

    array-length v0, v0

    if-ge v2, v0, :cond_8

    .line 100
    const/4 v3, -0x2

    move v0, v1

    .line 101
    :goto_3
    array-length v7, v4

    if-ge v0, v7, :cond_2

    .line 102
    iget-object v7, p0, Lcom/yelp/android/ui/util/l;->c:[J

    aget-wide v8, v7, v2

    aget-wide v10, v4, v0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    move v3, v0

    .line 107
    :cond_2
    if-ltz v3, :cond_7

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    .line 110
    if-eqz v0, :cond_5

    .line 111
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v3, :cond_4

    .line 112
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 101
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 114
    :cond_4
    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 119
    if-eqz v0, :cond_7

    .line 120
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v3, :cond_6

    .line 121
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 123
    :cond_6
    invoke-virtual {v6, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 129
    :cond_8
    iput-object v4, p0, Lcom/yelp/android/ui/util/l;->c:[J

    .line 130
    iput-object v5, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    .line 131
    iput-object v6, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    .line 133
    :cond_9
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 254
    const/4 v2, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/l;->b()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->c:[J

    move v0, v1

    .line 257
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/util/l;->c:[J

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/yelp/android/ui/util/l;->c:[J

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/l;->d(I)J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    iget-object v2, p0, Lcom/yelp/android/ui/util/l;->c:[J

    array-length v2, v2

    if-lez v2, :cond_1

    .line 264
    const-string/jumbo v2, "item_ids"

    iget-object v3, p0, Lcom/yelp/android/ui/util/l;->c:[J

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/support/v4/app/Fragment$SavedState;

    .line 268
    iget-object v3, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 269
    const-string/jumbo v3, "states"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_1
    move-object v2, v0

    .line 271
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 273
    if-eqz v0, :cond_4

    .line 274
    if-nez v2, :cond_2

    .line 275
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 277
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    iget-object v4, p0, Lcom/yelp/android/ui/util/l;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    const-string/jumbo v3, "Tried to save fragment that wasn\'t in fragment manager.\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string/jumbo v3, "mItemIds: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v3, p0, Lcom/yelp/android/ui/util/l;->c:[J

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    .line 271
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_2

    .line 292
    :cond_3
    iget-object v4, p0, Lcom/yelp/android/ui/util/l;->a:Landroid/support/v4/app/l;

    invoke-virtual {v4, v2, v3, v0}, Landroid/support/v4/app/l;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_4
    move-object v0, v2

    goto :goto_3

    .line 295
    :cond_5
    return-object v2

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method public abstract a(I)Landroid/support/v4/app/Fragment;
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/l;->h()V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 170
    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    .line 179
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/util/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    .line 182
    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    .line 186
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_3

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 190
    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/util/l;->d(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-object v0, v1

    .line 194
    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 300
    if-eqz p1, :cond_5

    .line 301
    check-cast p1, Landroid/os/Bundle;

    .line 302
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 304
    const-string/jumbo v0, "item_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->c:[J

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->c:[J

    if-nez v0, :cond_0

    .line 306
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->c:[J

    .line 309
    :cond_0
    const-string/jumbo v0, "states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    if-eqz v3, :cond_1

    move v1, v2

    .line 313
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 314
    iget-object v4, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    aget-object v0, v3, v1

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 318
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    const-string/jumbo v3, "fragment"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    const-string/jumbo v3, "fragment"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 321
    iget-object v4, p0, Lcom/yelp/android/ui/util/l;->a:Landroid/support/v4/app/l;

    invoke-virtual {v4, p1, v0}, Landroid/support/v4/app/l;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_2

    .line 323
    :goto_2
    iget-object v4, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v3, :cond_3

    .line 324
    iget-object v4, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 326
    :cond_3
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 327
    iget-object v4, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 331
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/util/l;->d()V

    .line 333
    :cond_5
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 201
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    .line 207
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_2

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v1, p0, Lcom/yelp/android/ui/util/l;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/util/l;->a:Landroid/support/v4/app/l;

    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    .line 220
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 249
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->b()I

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->b:Landroid/support/v4/app/o;

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->b()Z

    .line 245
    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 224
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->f:Landroid/support/v4/app/Fragment;

    if-eq p3, v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->f:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 230
    :cond_0
    if-eqz p3, :cond_1

    .line 231
    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 232
    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 234
    :cond_1
    iput-object p3, p0, Lcom/yelp/android/ui/util/l;->f:Landroid/support/v4/app/Fragment;

    .line 236
    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/yelp/android/ui/util/l;->d()V

    .line 139
    invoke-super {p0}, Landroid/support/v4/view/ac;->c()V

    .line 140
    return-void
.end method

.method public abstract d(I)J
.end method

.method public h()V
    .locals 6

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/util/l;->c:[J

    array-length v0, v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/l;->b()I

    move-result v1

    .line 150
    if-lez v1, :cond_0

    .line 151
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/yelp/android/ui/util/l;->c:[J

    .line 152
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/yelp/android/ui/util/l;->c:[J

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/l;->d(I)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method
