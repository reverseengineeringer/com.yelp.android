.class public Lcom/path/android/jobqueue/nonPersistentQueue/e;
.super Ljava/lang/Object;
.source "NonPersistentJobSet.java"

# interfaces
.implements Lcom/path/android/jobqueue/nonPersistentQueue/c;


# instance fields
.field private final a:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/path/android/jobqueue/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->c:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->d:Ljava/util/Map;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b()Lcom/path/android/jobqueue/a;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/a;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 207
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    .line 209
    :cond_0
    const-string/jumbo v0, "detected inconsistency in NonPersistentJobSet\'s group id hash. Please report a bug"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/bp/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private c(Lcom/path/android/jobqueue/a;)V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->j()Ljava/util/Set;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 168
    if-nez v1, :cond_2

    .line 169
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 170
    iget-object v3, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->d:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private d(Lcom/path/android/jobqueue/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->j()Ljava/util/Set;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 183
    if-nez v1, :cond_3

    .line 184
    const-string/jumbo v0, "trying to remove job from tag cache but cannot find the tag cache"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/bp/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_3
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 188
    const-string/jumbo v0, "trying to remove job from tag cache but cannot find it in the cache"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/bp/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 189
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Collection;)Lcom/path/android/jobqueue/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/a;"
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b()Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 61
    :cond_1
    :goto_0
    return-object v0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/a;

    .line 52
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 61
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/nonPersistentQueue/b;"
        }
    .end annotation

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    .line 255
    const/4 v0, 0x0

    .line 256
    if-lez v3, :cond_5

    .line 257
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/a;

    .line 260
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->g()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-gez v5, :cond_4

    .line 263
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 264
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    :cond_1
    if-lez v3, :cond_4

    .line 270
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_2
    move v2, v0

    .line 279
    goto :goto_1

    .line 276
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_2

    .line 280
    :cond_3
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/b;

    invoke-direct {v0, v2, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/b;-><init>(ILjava/util/Set;)V

    return-object v0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/path/android/jobqueue/a;)Z
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "cannot add job holder w/o an ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b(Lcom/path/android/jobqueue/a;)Z

    .line 148
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 150
    :cond_1
    if-eqz v0, :cond_2

    .line 151
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->c(Lcom/path/android/jobqueue/a;)V

    .line 153
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a(Ljava/lang/String;)V

    .line 158
    :cond_2
    return v0
.end method

.method public b(Ljava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/nonPersistentQueue/b;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/b;

    iget-object v2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/b;-><init>(ILjava/util/Set;)V

    .line 305
    :goto_0
    return-object v0

    .line 289
    :cond_0
    const/4 v0, 0x0

    .line 291
    iget-object v2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/a;

    .line 292
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 293
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 295
    :cond_2
    if-nez v1, :cond_3

    .line 296
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 297
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 303
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    .line 304
    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual {v0}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    .line 305
    :cond_5
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/b;

    invoke-direct {v0, v2, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/b;-><init>(ILjava/util/Set;)V

    goto :goto_0
.end method

.method public b(Lcom/path/android/jobqueue/a;)Z
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->d(Lcom/path/android/jobqueue/a;)V

    .line 228
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b(Ljava/lang/String;)V

    .line 232
    :cond_0
    return v0
.end method
