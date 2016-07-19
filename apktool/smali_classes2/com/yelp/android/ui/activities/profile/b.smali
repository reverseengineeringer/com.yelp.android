.class public Lcom/yelp/android/ui/activities/profile/b;
.super Lcom/yelp/android/ui/util/w;
.source "ContributionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/profile/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
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
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/serializable/User;

    .line 32
    iput p3, p0, Lcom/yelp/android/ui/activities/profile/b;->b:I

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

    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/b;->a(Ljava/util/List;)V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/b;->c:Landroid/util/SparseArray;

    .line 43
    return-void
.end method

.method private varargs a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {p1, p3, p4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 125
    iget v1, p0, Lcom/yelp/android/ui/activities/profile/b;->b:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Ljava/lang/CharSequence;I)Landroid/text/Spannable;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/b;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    :cond_0
    return-object v0
.end method

.method private a(ILcom/yelp/android/ui/activities/profile/ContributionAwardType;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p2, v0}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getValue(Lcom/yelp/android/serializable/User;)I

    move-result v0

    .line 95
    const v1, 0x7f070710

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p2, v3}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getTitleRes(Lcom/yelp/android/serializable/User;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, p3, p1, v1, v2}, Lcom/yelp/android/ui/activities/profile/b;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget v0, p2, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->iconRes:I

    const v1, 0x7f020096

    invoke-virtual {p4, v0, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 105
    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/profile/ContributionAwardType;Lcom/yelp/android/ui/activities/profile/b$a;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getValue(Lcom/yelp/android/serializable/User;)I

    move-result v0

    .line 109
    iget-object v1, p2, Lcom/yelp/android/ui/activities/profile/b$a;->a:Landroid/widget/TextView;

    iget v2, p1, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->iconRes:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 110
    iget-object v1, p2, Lcom/yelp/android/ui/activities/profile/b$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v2}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;->getTitleRes(Lcom/yelp/android/serializable/User;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    if-lez v0, :cond_1

    .line 112
    iget-object v1, p2, Lcom/yelp/android/ui/activities/profile/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 113
    iget-object v1, p2, Lcom/yelp/android/ui/activities/profile/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_0
    iget-object v1, p2, Lcom/yelp/android/ui/activities/profile/b$a;->b:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p2, Lcom/yelp/android/ui/activities/profile/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->clear()V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 135
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/b;->getItem(I)Ljava/lang/Object;

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

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/b;->getItemViewType(I)I

    move-result v1

    .line 59
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;

    .line 60
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 61
    if-nez v1, :cond_2

    .line 63
    if-nez p2, :cond_1

    .line 64
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0301bd

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    const v1, 0x7f0f001f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/yelp/android/ui/activities/profile/b;->a(ILcom/yelp/android/ui/activities/profile/ContributionAwardType;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 89
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

    const v2, 0x7f0301bc

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance v1, Lcom/yelp/android/ui/activities/profile/b$a;

    invoke-direct {v1, p2}, Lcom/yelp/android/ui/activities/profile/b$a;-><init>(Landroid/view/View;)V

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/b;->a(Lcom/yelp/android/ui/activities/profile/ContributionAwardType;Lcom/yelp/android/ui/activities/profile/b$a;)V

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/profile/b$a;

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x2

    return v0
.end method
