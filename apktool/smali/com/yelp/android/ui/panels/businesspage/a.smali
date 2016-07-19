.class public Lcom/yelp/android/ui/panels/businesspage/a;
.super Lcom/yelp/android/ui/widgets/ListOfDetails;
.source "PanelBusinessLocalizedAttributes.java"


# instance fields
.field private final b:Lcom/yelp/android/serializable/YelpBusiness;

.field private final c:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalizedAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/ListOfDetails;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/a;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/a;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/a;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/yelp/android/ui/panels/businesspage/a;->setPadding(IIII)V

    .line 54
    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 55
    iput-object p3, p0, Lcom/yelp/android/ui/panels/businesspage/a;->c:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/yelp/android/ui/panels/businesspage/a;->i:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p5}, Lcom/yelp/android/ui/panels/businesspage/a;->a(Ljava/util/List;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesspage/a;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/LocalizedAttribute;Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;)V
    .locals 2

    .prologue
    .line 103
    const v0, 0x7f0f021d

    invoke-virtual {p2, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalizedAttribute;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Lcom/yelp/android/ui/panels/businesspage/a$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/panels/businesspage/a$1;-><init>(Lcom/yelp/android/ui/panels/businesspage/a;Lcom/yelp/android/serializable/LocalizedAttribute;)V

    invoke-virtual {p2, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalizedAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalizedAttribute;

    .line 69
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalizedAttribute;->g()Ljava/lang/String;

    move-result-object v2

    .line 70
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->am()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->am()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :cond_1
    sget-object v1, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v1, v2, v4, v5}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {v1, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 77
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->OpenUrl:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/AnalyticsSpan;->a(Landroid/text/Spanned;Lcom/yelp/android/analytics/iris/a;)Landroid/text/Spannable;

    .line 80
    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalizedAttribute;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/yelp/android/ui/panels/businesspage/a;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;

    .line 84
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalizedAttribute;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalizedAttribute;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/panels/businesspage/a;->a(Lcom/yelp/android/serializable/LocalizedAttribute;Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;)V

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/a;->getChildCount()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 91
    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setLeft(Z)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/a;->a()V

    .line 99
    :cond_4
    return-void

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method
