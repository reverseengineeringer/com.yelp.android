.class public Lcom/yelp/android/ui/util/e;
.super Lcom/yelp/android/ap/a;
.source "BetterSackOfViewsAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/g;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/ap/a;-><init>(Ljava/util/List;)V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/ui/util/e;->a:Ljava/util/List;

    .line 25
    return-void
.end method

.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/e;-><init>(Ljava/util/List;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/util/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/e;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/util/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/e;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/util/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/e;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x1

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
