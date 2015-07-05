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
            "Lcom/path/android/jobqueue/b;",
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
            "Lcom/path/android/jobqueue/b;",
            ">;"
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
            "Lcom/path/android/jobqueue/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->c:Ljava/util/Map;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_0
    return-void

    .line 103
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

.method private b()Lcom/path/android/jobqueue/b;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/b;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 111
    :cond_0
    const-string/jumbo v0, "detected inconsistency in NonPersistentJobSet\'s group id hash"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/at/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Collection;)Lcom/path/android/jobqueue/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/b;"
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b()Lcom/path/android/jobqueue/b;

    move-result-object v0

    .line 54
    :cond_1
    :goto_0
    return-object v0

    .line 44
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

    check-cast v0, Lcom/path/android/jobqueue/b;

    .line 45
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 54
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
    .line 149
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    .line 151
    const/4 v0, 0x0

    .line 152
    if-lez v3, :cond_5

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 155
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

    check-cast v0, Lcom/path/android/jobqueue/b;

    .line 156
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-gez v5, :cond_4

    .line 159
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 160
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 165
    :cond_1
    if-lez v3, :cond_4

    .line 166
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_2
    move v2, v0

    .line 172
    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_2

    .line 176
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

.method public a(Lcom/path/android/jobqueue/b;)Z
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "cannot add job holder w/o an ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b(Lcom/path/android/jobqueue/b;)Z

    .line 87
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    :cond_1
    if-eqz v0, :cond_2

    .line 90
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a(Ljava/lang/String;)V

    .line 96
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

    .line 181
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/b;

    iget-object v2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/b;-><init>(ILjava/util/Set;)V

    .line 201
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 187
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

    check-cast v0, Lcom/path/android/jobqueue/b;

    .line 188
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 189
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    :cond_2
    if-nez v1, :cond_3

    .line 192
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 193
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 199
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 194
    :cond_3
    invoke-virtual {v0}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    .line 201
    :cond_5
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/b;

    invoke-direct {v0, v2, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/b;-><init>(ILjava/util/Set;)V

    goto :goto_0
.end method

.method public b(Lcom/path/android/jobqueue/b;)Z
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/e;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/e;->b(Ljava/lang/String;)V

    .line 129
    :cond_0
    return v0
.end method
