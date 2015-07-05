.class public Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;
.super Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;
.source "PanelReviewTranslate.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/yelp/android/ui/activities/reviewpage/aj;

.field private final k:Landroid/view/View$OnClickListener;

.field private final l:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ag;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ag;-><init>(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->k:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ai;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ai;-><init>(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->l:Lcom/yelp/android/appdata/webrequests/m;

    .line 53
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    .line 55
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;Ljava/util/List;Lcom/yelp/android/ui/activities/reviewpage/aj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;",
            "Lcom/yelp/android/ui/activities/reviewpage/aj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ag;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ag;-><init>(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->k:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ai;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ai;-><init>(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->l:Lcom/yelp/android/appdata/webrequests/m;

    .line 62
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    .line 64
    iput-object p4, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->j:Lcom/yelp/android/ui/activities/reviewpage/aj;

    .line 65
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    const v0, 0x7f0c042d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->g:Landroid/widget/Button;

    .line 71
    const v0, 0x7f0c042c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->h:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/aj;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->j:Lcom/yelp/android/ui/activities/reviewpage/aj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v7, -0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATING:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 126
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->shouldDisplayTranslation()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTranslatedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    move v1, v4

    :goto_1
    move v3, v1

    move v1, v0

    .line 131
    goto :goto_0

    :cond_0
    move v0, v4

    move v1, v3

    .line 129
    goto :goto_1

    .line 132
    :cond_1
    if-nez v1, :cond_3

    .line 133
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 139
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 140
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    sget-object v3, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    if-ne v1, v3, :cond_4

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070574

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e002c

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 149
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 150
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :goto_3
    return-void

    .line 134
    :cond_3
    if-nez v3, :cond_2

    .line 135
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    goto :goto_2

    .line 154
    :cond_4
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v5

    .line 157
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 158
    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    sget-object v3, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    if-ne v1, v3, :cond_6

    const v1, 0x7f070619

    move v3, v1

    :goto_4
    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->h:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 167
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 158
    :cond_6
    const v1, 0x7f07061d

    move v3, v1

    goto :goto_4
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 102
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    const v1, 0x7f07061a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 228
    const v1, 0x7f070500

    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/ah;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviewpage/ah;-><init>(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    const v1, 0x7f070110

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 245
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fj;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->l:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v1, p1, v0, v2}, Lcom/yelp/android/appdata/webrequests/fj;-><init>(Ljava/lang/Iterable;Ljava/util/Locale;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fj;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 90
    return-void
.end method

.method public getState()Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    return-object v0
.end method

.method public setContents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->i:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public setOnTranslationStateChangedCb(Lcom/yelp/android/ui/activities/reviewpage/aj;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->j:Lcom/yelp/android/ui/activities/reviewpage/aj;

    .line 82
    return-void
.end method

.method public setState(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 109
    return-void
.end method
