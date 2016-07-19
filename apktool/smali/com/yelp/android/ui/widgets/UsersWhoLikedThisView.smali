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
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a()V

    .line 33
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    const v1, 0x7f0300e9

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v0, 0x7f0f025a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 49
    const v0, 0x7f0f035d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->b:Landroid/widget/TextView;

    .line 50
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

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 78
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 79
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz p1, :cond_3

    .line 87
    if-ne p3, v4, :cond_2

    .line 90
    const v1, 0x7f070695

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 105
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/co;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 124
    :goto_2
    const v1, 0x7f0e002c

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;ILandroid/content/Context;)Landroid/text/Spannable;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_2
    const v0, 0x7f08004a

    add-int/lit8 v1, p3, -0x1

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_1

    .line 110
    :cond_3
    if-ne p3, v4, :cond_4

    .line 111
    const v1, 0x7f070671

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    move-object v1, v0

    .line 122
    :goto_3
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 115
    :cond_4
    const v1, 0x7f080037

    add-int/lit8 v3, p3, -0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    move-object v1, v0

    goto :goto_3
.end method
