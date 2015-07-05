.class public Lcom/yelp/android/ui/activities/gallery/p;
.super Landroid/widget/ArrayAdapter;
.source "MediaBucketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yelp/android/ui/activities/gallery/q;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/gallery/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/p;->a:Landroid/view/LayoutInflater;

    .line 63
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/p;->a:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/yelp/android/ui/activities/gallery/r;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/gallery/r;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    return-object v0
.end method

.method protected a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/gallery/r;

    .line 108
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/gallery/p;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/gallery/q;

    .line 110
    iget v2, v1, Lcom/yelp/android/ui/activities/gallery/q;->e:I

    if-lez v2, :cond_0

    .line 111
    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/r;->a:Landroid/widget/TextView;

    iget v1, v1, Lcom/yelp/android/ui/activities/gallery/q;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/r;->a:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/gallery/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/gallery/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/gallery/q;

    .line 96
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/p;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    const v0, 0x1090009

    invoke-virtual {p0, p1, p3, v0}, Lcom/yelp/android/ui/activities/gallery/p;->a(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 90
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/yelp/android/ui/activities/gallery/p;->a(Landroid/view/View;I)V

    .line 91
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    if-nez p2, :cond_0

    .line 70
    const v0, 0x1090008

    invoke-virtual {p0, p1, p3, v0}, Lcom/yelp/android/ui/activities/gallery/p;->a(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 75
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/yelp/android/ui/activities/gallery/p;->a(Landroid/view/View;I)V

    .line 76
    return-object p2
.end method
