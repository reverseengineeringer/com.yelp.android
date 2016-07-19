.class public Lcom/yelp/android/ui/panels/businesssearch/e;
.super Lcom/yelp/android/ui/util/w;
.source "RelatedBusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/panels/businesssearch/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessTiny;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/yelp/android/ui/util/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->a:Lcom/yelp/android/ui/util/t;

    .line 35
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const v5, 0x7f0200bb

    const/4 v7, 0x0

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 43
    if-nez p2, :cond_0

    .line 44
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301da

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/e$a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/panels/businesssearch/e$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/e$a;

    .line 52
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/e;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessTiny;

    .line 55
    iget-object v4, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->a:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessTiny;->e()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    iget-object v4, v0, Lcom/yelp/android/ui/panels/businesssearch/e$a;->b:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 65
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/e$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessTiny;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, v0, Lcom/yelp/android/ui/panels/businesssearch/e$a;->c:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessTiny;->a()I

    move-result v2

    .line 70
    const v4, 0x7f080025

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessTiny;->b()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 72
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/e$1;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/panels/businesssearch/e$1;-><init>(Lcom/yelp/android/ui/panels/businesssearch/e;Lcom/yelp/android/serializable/YelpBusinessTiny;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-object p2

    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessTiny;->e()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->u()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
