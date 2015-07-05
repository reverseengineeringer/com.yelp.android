.class public Lcom/yelp/android/ui/activities/leaderboard/g;
.super Lcom/yelp/android/ui/util/au;
.source "RoyaltyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/Royal;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/g;->a:Landroid/util/SparseArray;

    .line 23
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 27
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/leaderboard/h;

    if-nez v0, :cond_1

    .line 28
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011a

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/h;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/leaderboard/h;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/leaderboard/h;

    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/leaderboard/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Royal;

    .line 36
    iget-object v2, v0, Lcom/yelp/android/ui/activities/leaderboard/h;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->getLocationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->getLocationName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 39
    iget-object v2, v0, Lcom/yelp/android/ui/activities/leaderboard/h;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v2, v0, Lcom/yelp/android/ui/activities/leaderboard/h;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->getLocationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :goto_0
    iget-object v2, v0, Lcom/yelp/android/ui/activities/leaderboard/h;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/WebImageView;->reset()V

    .line 45
    iget-object v2, v0, Lcom/yelp/android/ui/activities/leaderboard/h;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/yelp/android/ui/activities/leaderboard/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 48
    if-nez v2, :cond_2

    .line 49
    const v2, 0x7f0e000c

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->getDukedomCount()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->getDukedomCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/yelp/android/ui/activities/leaderboard/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 53
    :cond_2
    iget-object v3, v0, Lcom/yelp/android/ui/activities/leaderboard/h;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/h;->a(Lcom/yelp/android/serializable/DisplayableAsUserBadge;)V

    .line 55
    return-object p2

    .line 42
    :cond_3
    iget-object v2, v0, Lcom/yelp/android/ui/activities/leaderboard/h;->a:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
