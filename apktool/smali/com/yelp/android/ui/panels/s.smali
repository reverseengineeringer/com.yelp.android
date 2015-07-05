.class public Lcom/yelp/android/ui/panels/s;
.super Lcom/yelp/android/ui/util/au;
.source "CategoryPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 18
    if-nez p2, :cond_0

    .line 19
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 21
    new-instance v0, Lcom/yelp/android/ui/panels/u;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/yelp/android/ui/panels/u;-><init>(Landroid/view/View;Lcom/yelp/android/ui/panels/t;)V

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 27
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 28
    iget-object v1, v1, Lcom/yelp/android/ui/panels/u;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/categorypicker/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-object p2

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/u;

    move-object v1, v0

    goto :goto_0
.end method
