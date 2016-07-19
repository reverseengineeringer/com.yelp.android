.class public Lcom/yelp/android/cg/g;
.super Lcom/yelp/android/cg/f;
.source "FeedUserItemViewHolder.java"


# instance fields
.field private final a:Lcom/yelp/android/ui/util/ap$b;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yelp/android/cg/f;-><init>(Landroid/view/View;)V

    .line 19
    new-instance v0, Lcom/yelp/android/ui/util/ap$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ui/util/ap$b;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/yelp/android/cg/g;->a:Lcom/yelp/android/ui/util/ap$b;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/User;Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/cg/g;->a:Lcom/yelp/android/ui/util/ap$b;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->l_()I

    move-result v5

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v6

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->n_()I

    move-result v7

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/ap$b;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 33
    return-void
.end method
