.class public Lcom/yelp/android/ui/activities/mutatebiz/EditName;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "EditName.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/yelp/android/serializable/BusinessAttributes;

.field private e:Landroid/widget/LinearLayout;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 226
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditName$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName$2;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditName;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->h:Landroid/text/TextWatcher;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/BusinessAttributes;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditName;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "extra.name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v1, "extra.yomi_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "extra.english_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "extra.romaji_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "extra.business_attributes"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 183
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 184
    const-string/jumbo v0, "extra.name"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string/jumbo v0, ""

    .line 186
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v2, "ja_primary"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v1, "ja_romanized"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 189
    :goto_0
    const-string/jumbo v0, ""

    .line 190
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v4, "en_primary"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v2, "en_primary"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 193
    :goto_1
    const-string/jumbo v0, ""

    .line 194
    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v5, "ja_romanized"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v4, "ja_romanized"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    const-string/jumbo v4, "extra.yomi_name"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v1, "extra.english_name"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string/jumbo v1, "extra.romaji_name"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->setResult(ILandroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->finish()V

    .line 202
    return-void

    :cond_1
    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/EditName;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a()V

    return-void
.end method

.method private b()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v1, v3

    .line 218
    :goto_0
    const-string/jumbo v0, ""

    .line 219
    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v5, "en_primary"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v4, "en_primary"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_1
    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2

    :cond_4
    move v1, v2

    .line 214
    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditField:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 84
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->setContentView(I)V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->g:Ljava/util/LinkedHashMap;

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->g:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "ja_primary"

    const-string/jumbo v2, "extra.yomi_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->g:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "en_primary"

    const-string/jumbo v2, "extra.english_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->g:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "ja_romanized"

    const-string/jumbo v2, "extra.romaji_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const v0, 0x7f0f0175

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->e:Landroid/widget/LinearLayout;

    .line 98
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    .line 99
    const v0, 0x7f0f0176

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->c:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_attributes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessAttributes;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Lcom/yelp/android/serializable/BusinessAttributes;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttributes;->f()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttribute;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessAttributes;->f()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessAttribute;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttributes;->f()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttribute;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    .line 117
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/BusinessAttributes;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->d:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessAttributes;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/BusinessAttribute;

    .line 124
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f03013d

    iget-object v6, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->e:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 127
    const v3, 0x7f0f0417

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessAttribute;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setId(I)V

    .line 132
    const v3, 0x7f0f0418

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 133
    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessAttribute;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setId(I)V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    :goto_2
    move-object v2, v0

    .line 140
    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 143
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditName$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName$1;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditName;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->h:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v1, "en_primary"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->f:Ljava/util/Map;

    const-string/jumbo v1, "en_primary"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->h:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 162
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 168
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 169
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0607

    if-ne v0, v1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a()V

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
