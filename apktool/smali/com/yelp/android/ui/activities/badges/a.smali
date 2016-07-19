.class public Lcom/yelp/android/ui/activities/badges/a;
.super Landroid/widget/BaseAdapter;
.source "BadgesAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/badges/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lcom/yelp/android/ui/activities/badges/b$a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/badges/b$a;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/badges/a;->a:Landroid/view/LayoutInflater;

    .line 28
    iput-object p2, p0, Lcom/yelp/android/ui/activities/badges/a;->b:Lcom/yelp/android/ui/activities/badges/b$a;

    .line 29
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/Badge;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yelp/android/ui/activities/badges/a;->c:Ljava/util/List;

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/badges/a;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/badges/a;->notifyDataSetInvalidated()V

    .line 37
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/badges/a;->a(I)Lcom/yelp/android/serializable/Badge;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f020596

    .line 66
    if-nez p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v0, Lcom/yelp/android/ui/activities/badges/a$a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/badges/a$a;-><init>(Landroid/view/View;)V

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/badges/a$a;

    .line 73
    iget-object v1, p0, Lcom/yelp/android/ui/activities/badges/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Badge;

    .line 74
    iget-object v2, v0, Lcom/yelp/android/ui/activities/badges/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    iget-object v0, v0, Lcom/yelp/android/ui/activities/badges/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 96
    :goto_0
    return-object p2

    .line 81
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/yelp/android/ui/activities/badges/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->h()Ljava/lang/String;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    iget-object v3, v0, Lcom/yelp/android/ui/activities/badges/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v3, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 90
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->c()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 91
    iget-object v0, v0, Lcom/yelp/android/ui/activities/badges/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->a()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v2, v0, Lcom/yelp/android/ui/activities/badges/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    goto :goto_1

    .line 93
    :cond_4
    iget-object v0, v0, Lcom/yelp/android/ui/activities/badges/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/a;->b:Lcom/yelp/android/ui/activities/badges/b$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/badges/b$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
