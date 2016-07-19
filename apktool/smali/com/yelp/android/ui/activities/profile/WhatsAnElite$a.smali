.class final Lcom/yelp/android/ui/activities/profile/WhatsAnElite$a;
.super Lcom/yelp/android/ui/util/w;
.source "WhatsAnElite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/WhatsAnElite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
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
    .line 98
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 100
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite$a;->a(Ljava/util/Collection;)V

    .line 102
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 107
    if-nez p2, :cond_0

    .line 108
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03015f

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 113
    :cond_0
    const v0, 0x7f0f048f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/EliteBadge;

    .line 114
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/User$EliteYear;

    .line 115
    iget v3, v1, Lcom/yelp/android/serializable/User$EliteYear;->a:I

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/profile/EliteBadge;->setYear(I)V

    .line 116
    iget-object v1, v1, Lcom/yelp/android/serializable/User$EliteYear;->b:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getBackground()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;I)V

    .line 117
    const v0, 0x7f0f0490

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f070286

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/User$EliteYear;

    iget v1, v1, Lcom/yelp/android/serializable/User$EliteYear;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method
