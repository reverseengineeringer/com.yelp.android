.class public Lcom/yelp/android/ui/activities/feed/aq;
.super Lcom/yelp/android/ui/util/au;
.source "FeedListAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/i;
.implements Lcom/yelp/android/ui/util/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/FeedEntry;",
        ">;",
        "Lcom/yelp/android/ui/util/i;",
        "Lcom/yelp/android/ui/util/j;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/feed/FeedType;

.field private final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;",
            "Lcom/yelp/android/ui/activities/feed/at",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ui/activities/feed/at;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/feed/FeedType;",
            "Lcom/yelp/android/ui/activities/feed/at",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "viewbinder cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/aq;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->c:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->b:Ljava/util/LinkedHashMap;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->b:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/yelp/android/serializable/FeedEntry;
    .locals 4

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/aq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedEntry;

    .line 134
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/aq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedEntry;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lcom/yelp/android/ui/activities/feed/at",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/aq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 144
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedEntry;

    .line 146
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/feed/aq;->b(Ljava/lang/String;)Lcom/yelp/android/serializable/FeedEntry;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p2}, Lcom/yelp/android/serializable/FeedEntry;->updateContent(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    .line 168
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/Collection;)V

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public a(Ljava/util/Collection;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/Collection;)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/util/Comparator;)V

    .line 187
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/aq;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->b(Ljava/util/Collection;)V

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public c()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;",
            "Lcom/yelp/android/ui/activities/feed/at",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/aq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedEntry;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 86
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/aq;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 87
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/aq;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 92
    :goto_1
    return v0

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/aq;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/FeedEntry;

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/at;

    .line 104
    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/at;

    .line 108
    :cond_0
    check-cast p2, Lcom/yelp/android/ui/activities/feed/ar;

    .line 109
    if-nez p2, :cond_1

    .line 110
    new-instance p2, Lcom/yelp/android/ui/activities/feed/ar;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/aq;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    move v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/at;->b(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v6, v0}, Lcom/yelp/android/ui/activities/feed/ar;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 115
    :goto_0
    return-object p2

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/aq;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-static {p2}, Lcom/yelp/android/ui/activities/feed/ar;->a(Lcom/yelp/android/ui/activities/feed/ar;)Landroid/view/View;

    move-result-object v4

    move v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/at;->b(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yelp/android/ui/activities/feed/ar;->a(Lcom/yelp/android/ui/activities/feed/ar;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aq;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
