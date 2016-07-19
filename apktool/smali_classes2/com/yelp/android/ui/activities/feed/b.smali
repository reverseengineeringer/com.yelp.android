.class public Lcom/yelp/android/ui/activities/feed/b;
.super Lcom/yelp/android/g/a;
.source "FeedListCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/g/a",
        "<",
        "Lcom/yelp/android/ui/activities/feed/FeedType;",
        "Lcom/yelp/android/g/g",
        "<",
        "Lcom/yelp/android/ui/activities/feed/a;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/g/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/yelp/android/ci/f;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)Lcom/yelp/android/ui/activities/feed/b;
    .locals 8

    .prologue
    .line 28
    new-instance v1, Lcom/yelp/android/ui/activities/feed/b;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/feed/b;-><init>()V

    .line 29
    invoke-static {}, Lcom/yelp/android/ui/activities/feed/FeedType;->values()[Lcom/yelp/android/ui/activities/feed/FeedType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 30
    invoke-static {v4}, Lcom/yelp/android/ui/activities/feed/b;->c(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 32
    invoke-static {v4}, Lcom/yelp/android/ui/activities/feed/b;->d(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    if-eqz v5, :cond_0

    .line 34
    new-instance v7, Lcom/yelp/android/ui/activities/feed/a;

    invoke-direct {v7, v4, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V

    .line 36
    invoke-virtual {v7, v5}, Lcom/yelp/android/ui/activities/feed/a;->a(Ljava/util/Collection;)V

    .line 37
    new-instance v5, Lcom/yelp/android/g/g;

    invoke-direct {v5, v7, v6}, Lcom/yelp/android/g/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/activities/feed/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    return-object v1
.end method

.method private static c(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "feed_list_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "next_page_offset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/ui/activities/feed/a;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/g/g;

    iget-object v0, v0, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/ui/activities/feed/a;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/b;->c(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/g/g;

    iget-object v1, v1, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/b;->d(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/g/g;

    iget-object v0, v0, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/g/g;

    iget-object v0, v0, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
