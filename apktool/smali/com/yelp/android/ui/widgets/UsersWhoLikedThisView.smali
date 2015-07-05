.class public Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;
.super Landroid/widget/RelativeLayout;
.source "UsersWhoLikedThisView.java"


# instance fields
.field a:Lcom/yelp/android/ui/widgets/WebImageView;

.field b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a()V

    .line 34
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    const v1, 0x7f0300c6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    const v0, 0x7f0c0246

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 50
    const v0, 0x7f0c02ea

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->b:Landroid/widget/TextView;

    .line 51
    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/DisplayableAsUserBadge;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 77
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 78
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 84
    :cond_1
    if-eqz p1, :cond_3

    .line 86
    if-ne p3, v4, :cond_2

    .line 89
    const v1, 0x7f0706c6

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/dc;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 112
    :goto_2
    const v1, 0x7f0a0010

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;ILandroid/content/Context;)Landroid/text/Spannable;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_2
    const v0, 0x7f0e0044

    add-int/lit8 v1, p3, -0x1

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_1

    .line 103
    :cond_3
    if-ne p3, v4, :cond_4

    .line 104
    const v1, 0x7f07069a

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    move-object v1, v0

    .line 110
    :goto_3
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 107
    :cond_4
    const v1, 0x7f0e0032

    add-int/lit8 v3, p3, -0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    move-object v1, v0

    goto :goto_3
.end method
