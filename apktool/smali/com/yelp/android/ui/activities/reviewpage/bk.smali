.class public Lcom/yelp/android/ui/activities/reviewpage/bk;
.super Lcom/yelp/android/ui/util/au;
.source "UserBadgeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/DisplayableAsUserBadge;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f030154

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/bk;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 31
    iput p1, p0, Lcom/yelp/android/ui/activities/reviewpage/bk;->a:I

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bk;->b:Landroid/util/SparseArray;

    .line 33
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yelp/android/ui/activities/reviewpage/bk;
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    if-eqz p0, :cond_0

    const-string/jumbo v1, "key.contents"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "key.resource"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/bk;

    const-string/jumbo v1, "key.resource"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/bk;-><init>(I)V

    .line 83
    const-string/jumbo v1, "key.contents"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/bk;->a(Ljava/util/List;Z)V

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "key.resource"

    iget v1, p0, Lcom/yelp/android/ui/activities/reviewpage/bk;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string/jumbo v0, "key.contents"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/bk;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 41
    if-nez p2, :cond_1

    .line 42
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/reviewpage/bk;->a:I

    invoke-virtual {v0, v1, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance v1, Lcom/yelp/android/ui/util/cn;

    invoke-direct {v1, p2, v11}, Lcom/yelp/android/ui/util/cn;-><init>(Landroid/view/View;Z)V

    .line 45
    const v0, 0x7f0c044f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yelp/android/ui/util/cn;->l:Landroid/widget/TextView;

    .line 46
    iget-object v0, v1, Lcom/yelp/android/ui/util/cn;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, v1, Lcom/yelp/android/ui/util/cn;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/cn;

    .line 52
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/bk;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v10}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getFriendCount()I

    move-result v3

    invoke-interface {v10}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getReviewCount()I

    move-result v4

    invoke-interface {v10}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getPhotoCount()I

    move-result v5

    invoke-interface {v10}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getVideoCount()I

    move-result v6

    invoke-interface {v10}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getMediaCount()I

    move-result v7

    invoke-interface {v10}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->isEliteUser()Z

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/cn;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 57
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/bk;->c:Z

    if-nez v1, :cond_2

    instance-of v1, v10, Lcom/yelp/android/serializable/ds;

    if-eqz v1, :cond_4

    .line 58
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/bk;->c:Z

    .line 59
    check-cast v10, Lcom/yelp/android/serializable/ds;

    .line 60
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/bk;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-interface {v10}, Lcom/yelp/android/serializable/ds;->getTimeOf()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/bk;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 66
    :cond_3
    iget-object v2, v0, Lcom/yelp/android/ui/util/cn;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, v0, Lcom/yelp/android/ui/util/cn;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :cond_4
    return-object p2
.end method
