.class public Lcom/yelp/android/ui/activities/profile/a;
.super Lcom/yelp/android/ui/util/w;
.source "ActionToTryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/ui/activities/profile/ActionToTry;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/yelp/android/serializable/User;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/activities/profile/ActionToTry;",
            ">;",
            "Lcom/yelp/android/serializable/User;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/profile/ActionToTry;->shouldTry(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 27
    :cond_1
    iput p3, p0, Lcom/yelp/android/ui/activities/profile/a;->a:I

    .line 28
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/a;->a(Ljava/util/Collection;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 33
    if-nez p2, :cond_0

    .line 34
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301bd

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 37
    const v0, 0x7f0f001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    .line 41
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Lcom/yelp/android/ui/activities/profile/ActionToTry;->titleRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/a;->a:I

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Ljava/lang/CharSequence;I)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget v1, v1, Lcom/yelp/android/ui/activities/profile/ActionToTry;->iconRes:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 45
    return-object p2
.end method
