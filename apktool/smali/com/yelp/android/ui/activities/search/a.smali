.class public Lcom/yelp/android/ui/activities/search/a;
.super Lcom/yelp/android/ui/util/w;
.source "RichSearchSuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/a;->a:Ljava/util/HashSet;

    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 28
    return-void
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/ui/activities/search/a$a;Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yelp/android/serializable/RichSearchSuggestion;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-static {p2}, Lcom/yelp/android/ui/activities/search/a$a;->b(Lcom/yelp/android/ui/activities/search/a$a;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/search/a$a;->b(Lcom/yelp/android/ui/activities/search/a$a;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yelp/android/serializable/RichSearchSuggestion;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const v9, 0x7f0200bb

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 44
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v5

    .line 46
    if-nez p2, :cond_3

    .line 47
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/a;->getItemViewType(I)I

    move-result v1

    sget-object v3, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->ordinal()I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/a;->getItemViewType(I)I

    move-result v1

    sget-object v3, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CHAIN:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 51
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    if-eqz v1, :cond_2

    const v1, 0x7f0301a9

    :goto_1
    invoke-virtual {v3, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v1, Lcom/yelp/android/ui/activities/search/a$a;

    invoke-direct {v1, p2}, Lcom/yelp/android/ui/activities/search/a$a;-><init>(Landroid/view/View;)V

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aI()Lcom/yelp/android/serializable/Photo;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 68
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aI()Lcom/yelp/android/serializable/Photo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v3

    .line 71
    :goto_3
    sget-object v6, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    if-ne v5, v6, :cond_4

    .line 72
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->a(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusiness;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->b(Lcom/yelp/android/ui/activities/search/a$a;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 75
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->c(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_4
    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    if-eq v5, v0, :cond_7

    .line 94
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->d(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->d(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f0704d6

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_5
    return-object p2

    :cond_1
    move v1, v2

    .line 47
    goto/16 :goto_0

    .line 51
    :cond_2
    const v1, 0x7f0301aa

    goto/16 :goto_1

    .line 62
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/search/a$a;

    goto :goto_2

    .line 76
    :cond_4
    sget-object v6, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CHAIN:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    if-ne v5, v6, :cond_5

    .line 77
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->a(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->b(Lcom/yelp/android/ui/activities/search/a$a;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 79
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->c(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 81
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 82
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->b(Lcom/yelp/android/ui/activities/search/a$a;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 83
    invoke-direct {p0, p2, v1, v0}, Lcom/yelp/android/ui/activities/search/a;->a(Landroid/view/View;Lcom/yelp/android/ui/activities/search/a$a;Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    .line 87
    :goto_6
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->c(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->d()Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 85
    :cond_6
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->b(Lcom/yelp/android/ui/activities/search/a$a;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto :goto_6

    .line 97
    :cond_7
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->d(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/a$a;->d(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    move-object v3, v4

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->values()[Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
