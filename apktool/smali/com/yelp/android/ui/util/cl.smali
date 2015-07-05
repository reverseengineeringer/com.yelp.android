.class Lcom/yelp/android/ui/util/cl;
.super Landroid/widget/Filter;
.source "UserAdapter.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/cj;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/cj;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/yelp/android/ui/util/cl;->a:Lcom/yelp/android/ui/util/cj;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .prologue
    .line 433
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/util/cl;->a:Lcom/yelp/android/ui/util/cj;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cj;->a(Lcom/yelp/android/ui/util/cj;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/util/cl;->a:Lcom/yelp/android/ui/util/cj;

    iget-object v3, p0, Lcom/yelp/android/ui/util/cl;->a:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/cj;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/cj;->a(Lcom/yelp/android/ui/util/cj;Ljava/util/List;)Ljava/util/List;

    .line 440
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/util/cl;->a:Lcom/yelp/android/ui/util/cj;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cj;->a(Lcom/yelp/android/ui/util/cj;)Ljava/util/List;

    move-result-object v0

    .line 450
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 451
    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 453
    return-object v2

    .line 443
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/util/cl;->a:Lcom/yelp/android/ui/util/cj;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cj;->a(Lcom/yelp/android/ui/util/cj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 445
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 446
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 458
    iget-object v1, p0, Lcom/yelp/android/ui/util/cl;->a:Lcom/yelp/android/ui/util/cj;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/cj;->a(Ljava/util/List;)V

    .line 459
    return-void
.end method
