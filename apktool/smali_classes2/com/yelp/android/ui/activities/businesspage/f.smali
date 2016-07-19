.class public Lcom/yelp/android/ui/activities/businesspage/f;
.super Lcom/yelp/android/ui/util/w;
.source "HealthDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/businesspage/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/HealthDataItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x80000000

    .line 19
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 20
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030070

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 23
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/f$a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/businesspage/f$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/HealthDataItem;

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/businesspage/f$a;

    .line 28
    iget-object v2, v1, Lcom/yelp/android/ui/activities/businesspage/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/HealthDataItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v2, v1, Lcom/yelp/android/ui/activities/businesspage/f$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/HealthDataItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v2, v1, Lcom/yelp/android/ui/activities/businesspage/f$a;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/HealthDataItem;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/HealthDataItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/yelp/android/ui/util/u$a;->a(II)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, v1, Lcom/yelp/android/ui/activities/businesspage/f$a;->c:Lcom/yelp/android/webimageview/WebImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 38
    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    return-object p2
.end method
