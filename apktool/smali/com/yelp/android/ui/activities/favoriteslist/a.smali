.class public Lcom/yelp/android/ui/activities/favoriteslist/a;
.super Landroid/widget/BaseAdapter;
.source "FavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/favoriteslist/a$a;,
        Lcom/yelp/android/ui/activities/favoriteslist/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/favoriteslist/a$a;

.field private b:Lcom/yelp/android/serializable/FavoritesList;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/favoriteslist/a$a;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a;->a:Lcom/yelp/android/ui/activities/favoriteslist/a$a;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/favoriteslist/a;)Lcom/yelp/android/serializable/FavoritesList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/a;->b:Lcom/yelp/android/serializable/FavoritesList;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/favoriteslist/a;)Lcom/yelp/android/ui/activities/favoriteslist/a$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/a;->a:Lcom/yelp/android/ui/activities/favoriteslist/a$a;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/g/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/g/g",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/yelp/android/g/g;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a;->b:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FavoritesList;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/a;->b:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FavoritesList;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/g/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/FavoritesList;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a;->b:Lcom/yelp/android/serializable/FavoritesList;

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/favoriteslist/a;->notifyDataSetChanged()V

    .line 149
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/a;->b:Lcom/yelp/android/serializable/FavoritesList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/a;->b:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/favoriteslist/a;->a(I)Lcom/yelp/android/g/g;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v6, 0x7f0200bb

    const/4 v4, 0x0

    .line 63
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 65
    if-nez p2, :cond_0

    .line 66
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b8

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/favoriteslist/a$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;

    .line 75
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/favoriteslist/a;->a(I)Lcom/yelp/android/g/g;

    move-result-object v1

    iget-object v1, v1, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    .line 76
    invoke-static {v5}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    iget-object v3, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 82
    iget-object v2, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 83
    iget-object v2, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07067a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v2, Lcom/yelp/android/ui/activities/favoriteslist/a$1;

    invoke-direct {v2, p0, v1, v5}, Lcom/yelp/android/ui/activities/favoriteslist/a$1;-><init>(Lcom/yelp/android/ui/activities/favoriteslist/a;Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    .line 101
    iget-object v3, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->i:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v3, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/favoriteslist/a;->a(I)Lcom/yelp/android/g/g;

    move-result-object v2

    iget-object v2, v2, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v2, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 106
    iget-object v3, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->C()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v3, v6, v7}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 107
    iget-object v6, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->G()I

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v3, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080005

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->G()I

    move-result v8

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7, v8, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->f:Landroid/widget/TextView;

    new-instance v4, Lcom/yelp/android/ui/activities/favoriteslist/a$2;

    invoke-direct {v4, p0, v1, v2, v5}, Lcom/yelp/android/ui/activities/favoriteslist/a$2;-><init>(Lcom/yelp/android/ui/activities/favoriteslist/a;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpBusinessReview;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0200d3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v0, v0, Lcom/yelp/android/ui/activities/favoriteslist/a$b;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/yelp/android/ui/activities/favoriteslist/a$3;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/a$3;-><init>(Lcom/yelp/android/ui/activities/favoriteslist/a;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-object p2

    :cond_1
    move v3, v4

    .line 107
    goto :goto_0

    .line 131
    :cond_2
    const v2, 0x7f0200d1

    goto :goto_1
.end method
