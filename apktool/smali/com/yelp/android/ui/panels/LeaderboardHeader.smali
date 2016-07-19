.class public Lcom/yelp/android/ui/panels/LeaderboardHeader;
.super Lcom/yelp/android/ui/panels/TitleWithSubTitleView;
.source "LeaderboardHeader.java"


# instance fields
.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f0101dc

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->a:Landroid/widget/TextView;

    const v1, 0x7f070367

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 38
    iput p1, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->c:I

    .line 39
    iput p2, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->d:I

    .line 40
    iput p3, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->e:I

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    if-eq p1, v2, :cond_0

    if-eq p2, v2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 46
    if-lez p3, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070368

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0704ca

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public getFriendsActiveCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->e:I

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 76
    check-cast p1, Landroid/os/Bundle;

    .line 77
    const-string/jumbo v0, "super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 78
    const-string/jumbo v0, "weekly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->c:I

    .line 79
    const-string/jumbo v0, "friend_rank"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->d:I

    .line 80
    const-string/jumbo v0, "friend_active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->e:I

    .line 81
    iget v0, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->c:I

    iget v1, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->d:I

    iget v2, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->e:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->a(III)V

    .line 82
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string/jumbo v1, "super"

    invoke-super {p0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    const-string/jumbo v1, "weekly"

    iget v2, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string/jumbo v1, "friend_rank"

    iget v2, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string/jumbo v1, "friend_active"

    iget v2, p0, Lcom/yelp/android/ui/panels/LeaderboardHeader;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    return-object v0
.end method
