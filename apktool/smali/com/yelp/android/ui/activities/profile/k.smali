.class public Lcom/yelp/android/ui/activities/profile/k;
.super Lcom/yelp/android/ui/util/au;
.source "ContributionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/ui/activities/profile/ContributionAwardType;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/User;

.field private final b:I

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/yelp/android/serializable/User;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/activities/profile/ContributionAwardType;",
            ">;",
            "Lcom/yelp/android/serializable/User;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/k;->a:Lcom/yelp/android/serializable/User;

    .line 32
    iput p3, p0, Lcom/yelp/android/ui/activities/profile/k;->b:I

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 37
    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getValue(Lcom/yelp/android/serializable/User;)I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->MESSAGES:Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    if-eq v0, v3, :cond_0

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/k;->a(Ljava/util/List;)V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/k;->c:Landroid/util/SparseArray;

    .line 44
    return-void
.end method

.method private varargs a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {p1, p3, p4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 116
    iget v1, p0, Lcom/yelp/android/ui/activities/profile/k;->b:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Ljava/lang/CharSequence;I)Landroid/text/Spannable;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    :cond_0
    return-object v0
.end method

.method private a(ILcom/yelp/android/ui/activities/profile/ContributionAwardType;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/k;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p2, v0}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getValue(Lcom/yelp/android/serializable/User;)I

    move-result v0

    .line 91
    const v1, 0x7f0704a2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/k;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p2, v3}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getTitleRes(Lcom/yelp/android/serializable/User;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, p3, p1, v1, v2}, Lcom/yelp/android/ui/activities/profile/k;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget v0, p2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->iconRes:I

    invoke-virtual {p4, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 95
    return-void
.end method

.method private a(ILcom/yelp/android/ui/activities/profile/ContributionAwardType;Landroid/content/Context;Lcom/yelp/android/ui/activities/profile/l;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/k;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p2, v0}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getValue(Lcom/yelp/android/serializable/User;)I

    move-result v0

    .line 100
    iget-object v1, p4, Lcom/yelp/android/ui/activities/profile/l;->a:Landroid/widget/TextView;

    iget v2, p2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->iconRes:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 101
    iget-object v1, p4, Lcom/yelp/android/ui/activities/profile/l;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/k;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p2, v2}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getTitleRes(Lcom/yelp/android/serializable/User;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    if-lez v0, :cond_1

    .line 103
    iget-object v1, p4, Lcom/yelp/android/ui/activities/profile/l;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 104
    iget-object v1, p4, Lcom/yelp/android/ui/activities/profile/l;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :cond_0
    iget-object v1, p4, Lcom/yelp/android/ui/activities/profile/l;->b:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p4, Lcom/yelp/android/ui/activities/profile/l;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->clear()V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 126
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    iget-boolean v0, v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->hasBadgeCount:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/k;->getItemViewType(I)I

    move-result v1

    .line 60
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 61
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 62
    if-nez v1, :cond_2

    .line 64
    if-nez p2, :cond_1

    .line 65
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030157

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    const v1, 0x7f0c001d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/yelp/android/ui/activities/profile/k;->a(ILcom/yelp/android/ui/activities/profile/ContributionAwardType;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 85
    :cond_0
    :goto_1
    return-object p2

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 73
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 75
    if-nez p2, :cond_3

    .line 76
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030156

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v1, Lcom/yelp/android/ui/activities/profile/l;

    invoke-direct {v1, p2}, Lcom/yelp/android/ui/activities/profile/l;-><init>(Landroid/view/View;)V

    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_2
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/yelp/android/ui/activities/profile/k;->a(ILcom/yelp/android/ui/activities/profile/ContributionAwardType;Landroid/content/Context;Lcom/yelp/android/ui/activities/profile/l;)V

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/profile/l;

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x2

    return v0
.end method
