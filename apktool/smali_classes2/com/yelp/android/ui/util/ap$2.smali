.class Lcom/yelp/android/ui/util/ap$2;
.super Landroid/widget/Filter;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ap;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/yelp/android/ui/util/ap$2;->a:Lcom/yelp/android/ui/util/ap;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .prologue
    .line 457
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 460
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$2;->a:Lcom/yelp/android/ui/util/ap;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ap;->a(Lcom/yelp/android/ui/util/ap;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$2;->a:Lcom/yelp/android/ui/util/ap;

    iget-object v3, p0, Lcom/yelp/android/ui/util/ap$2;->a:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/ap;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/ap;->a(Lcom/yelp/android/ui/util/ap;Ljava/util/List;)Ljava/util/List;

    .line 464
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$2;->a:Lcom/yelp/android/ui/util/ap;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ap;->a(Lcom/yelp/android/ui/util/ap;)Ljava/util/List;

    move-result-object v0

    .line 476
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 477
    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 479
    return-object v2

    .line 467
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$2;->a:Lcom/yelp/android/ui/util/ap;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ap;->a(Lcom/yelp/android/ui/util/ap;)Ljava/util/List;

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

    .line 469
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 472
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 485
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$2;->a:Lcom/yelp/android/ui/util/ap;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ap;->a(Ljava/util/List;)V

    .line 486
    return-void
.end method
