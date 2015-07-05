.class public Lcom/yelp/android/ui/activities/mutatebiz/EditName;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "EditName.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private final k:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 203
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/v;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/v;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditName;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->k:Landroid/text/TextWatcher;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 65
    invoke-static {p0, p6}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v1, "yomi_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v1, "english_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "romaji_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditName;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string/jumbo v1, "business_country"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 176
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v1, "yomi_name"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string/jumbo v1, "english_name"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v1, "romaji_name"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->setResult(ILandroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->finish()V

    .line 182
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/EditName;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a()V

    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 194
    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditField:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 76
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->setContentView(I)V

    .line 78
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f0c0135

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->c:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0c0137

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Landroid/widget/EditText;

    .line 81
    const v0, 0x7f0c0139

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->e:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f0c0134

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0c0138

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->g:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0c0133

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->h:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0c0136

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->i:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business_country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business_country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->j:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "yomi_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "english_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "romaji_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    .line 106
    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->i()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->e:Landroid/widget/EditText;

    .line 139
    :goto_2
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/u;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/u;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditName;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    return-void

    .line 89
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->h:Landroid/widget/TextView;

    const v1, 0x7f0700fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->i:Landroid/widget/TextView;

    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    const v1, 0x7f0702e8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Landroid/widget/EditText;

    const v1, 0x7f0702e7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Landroid/widget/EditText;

    goto :goto_2

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    move-object v0, v1

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 159
    const v0, 0x7f0c04fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 160
    const v1, 0x7f0703e7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 161
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04fd

    if-ne v0, v1, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a()V

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
