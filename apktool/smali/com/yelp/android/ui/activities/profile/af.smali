.class final Lcom/yelp/android/ui/activities/profile/af;
.super Lcom/yelp/android/ui/util/au;
.source "WhatsAnElite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/User$EliteYear;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User$EliteYear;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 91
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/af;->a(Ljava/util/Collection;)V

    .line 93
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 98
    if-nez p2, :cond_0

    .line 99
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    :cond_0
    const v0, 0x7f0c03af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/EliteBadge;

    .line 104
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/af;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/User$EliteYear;

    .line 105
    iget v3, v1, Lcom/yelp/android/serializable/User$EliteYear;->year:I

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/profile/EliteBadge;->setYear(I)V

    .line 106
    iget-object v1, v1, Lcom/yelp/android/serializable/User$EliteYear;->type:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getBackground()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;I)V

    .line 107
    const v0, 0x7f0c03b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f070236

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/af;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/User$EliteYear;

    iget v1, v1, Lcom/yelp/android/serializable/User$EliteYear;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method
