.class public Lcom/yelp/android/ui/activities/nearby/NearbyFriends;
.super Landroid/widget/LinearLayout;
.source "NearbyFriends.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/yelp/android/ui/widgets/WebImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    const v0, 0x7f0c0246

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 27
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->b:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0c019c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->c:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 43
    iget-object v4, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->b:Landroid/widget/TextView;

    const v5, 0x7f0e001a

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    if-ne v3, v7, :cond_2

    .line 46
    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->c:Landroid/widget/TextView;

    const v4, 0x7f070692

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getUserName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_2
    new-array v4, v3, [Ljava/lang/String;

    .line 50
    :goto_1
    if-ge v1, v3, :cond_3

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 56
    :cond_3
    const-string/jumbo v0, ", "

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f07042e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0706a1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v4, v2}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setCheckIns(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->a:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f02009b

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->invalidate()V

    .line 76
    return-void
.end method
