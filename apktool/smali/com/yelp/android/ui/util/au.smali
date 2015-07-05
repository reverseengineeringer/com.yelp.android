.class public abstract Lcom/yelp/android/ui/util/au;
.super Landroid/widget/BaseAdapter;
.source "ListBasedAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/yelp/android/ui/util/j;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/util/x",
            "<TT;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/au;->b:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/util/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/x",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 38
    if-ltz v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/au;->notifyDataSetChanged()V

    .line 42
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    iput-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    .line 87
    return-void
.end method

.method public a(Ljava/util/Collection;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/au;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 34
    return-void
.end method

.method public a(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;Z)V

    .line 65
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    .line 73
    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/au;->notifyDataSetChanged()V

    .line 76
    :cond_1
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/au;->notifyDataSetChanged()V

    .line 48
    :cond_0
    return-void
.end method

.method public b(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iput-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    .line 98
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/au;->b(Ljava/util/Collection;)V

    .line 107
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;Z)V

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/au;->notifyDataSetInvalidated()V

    .line 28
    return-void
.end method

.method public d(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/au;->notifyDataSetChanged()V

    .line 61
    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 141
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/x;

    .line 164
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/x;->a()V

    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/au;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/x;->a(Ljava/util/List;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 168
    return-void
.end method
