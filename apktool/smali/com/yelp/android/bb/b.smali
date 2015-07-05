.class Lcom/yelp/android/bb/b;
.super Landroid/widget/Filter;
.source "ComposeMessageFriendsAdapter.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/bb/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/bb/a;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/bb/b;->a:Lcom/yelp/android/bb/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .prologue
    .line 65
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/bb/b;->a:Lcom/yelp/android/bb/a;

    invoke-static {v0}, Lcom/yelp/android/bb/a;->a(Lcom/yelp/android/bb/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 68
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 74
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 75
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/yelp/android/bb/b;->a:Lcom/yelp/android/bb/a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/bb/a;->a(Ljava/util/List;Z)V

    .line 61
    return-void
.end method
