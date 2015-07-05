.class public Lcom/yelp/android/ui/activities/PickCategory;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "PickCategory.java"


# instance fields
.field a:Lcom/yelp/android/database/q;

.field b:Lcom/yelp/android/appdata/j;

.field private c:Lcom/yelp/android/serializable/Category;

.field private d:Lcom/yelp/android/ui/activities/ei;

.field private e:Lcom/yelp/android/ui/activities/ei;

.field private f:Lcom/yelp/android/ui/util/bs;

.field private g:Z

.field private h:Z

.field private final i:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 328
    new-instance v0, Lcom/yelp/android/ui/activities/fl;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/fl;-><init>(Lcom/yelp/android/ui/activities/PickCategory;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->i:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Category;Ljava/util/List;ZZ)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;ZZ)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/yelp/android/ui/activities/PickCategory;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string/jumbo v0, "category"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    const/4 v0, 0x0

    .line 81
    instance-of v2, p2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 82
    check-cast p2, Ljava/util/ArrayList;

    .line 86
    :goto_0
    const-string/jumbo v0, "selected_categories"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v0, "show_popular"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string/jumbo v0, "search_on_complete"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    return-object v1

    .line 83
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/serializable/Category;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "category"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/Category;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 217
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/m;

    move-result-object v5

    .line 218
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "selected_categories"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    if-nez v0, :cond_4

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 225
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v6, 0x7f080000

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 227
    new-instance v7, Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 229
    array-length v8, v6

    move v2, v4

    :goto_1
    if-ge v2, v8, :cond_0

    .line 230
    aget-object v9, v6, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 232
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/ei;

    invoke-direct {v0, v11, v7, v1}, Lcom/yelp/android/ui/activities/ei;-><init>(ZLjava/util/Map;Ljava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->d:Lcom/yelp/android/ui/activities/ei;

    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/b;->CategoryPicker:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 235
    const-string/jumbo v1, ""

    .line 236
    const-string/jumbo v0, ""

    .line 237
    if-eqz p1, :cond_3

    .line 238
    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->getDatabaseId()I

    move-result v2

    .line 243
    :goto_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    invoke-virtual {v5, v2}, Lcom/yelp/android/database/m;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 245
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 246
    :cond_1
    new-instance v5, Lcom/yelp/android/serializable/Category;

    invoke-direct {v5, v1, v0, v3}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    invoke-virtual {v5, v4}, Lcom/yelp/android/serializable/Category;->setNumChildren(I)V

    .line 248
    invoke-interface {v2, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->d:Lcom/yelp/android/ui/activities/ei;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/ei;->a(Ljava/util/List;)V

    .line 251
    return-void

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/PickCategory;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->h:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    .line 281
    const-string/jumbo v1, "NewBusiness"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CheckInOffer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Everything"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "PlatformDelivery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ActiveDeal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    const-string/jumbo v1, "NewBusiness"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    const v0, 0x7f0702ea

    .line 305
    :cond_0
    :goto_0
    new-instance v1, Lcom/yelp/android/serializable/Category;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/PickCategory;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    .line 296
    :cond_1
    const-string/jumbo v1, "CheckInOffer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    const v0, 0x7f070131

    goto :goto_0

    .line 298
    :cond_2
    const-string/jumbo v1, "Everything"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    const v0, 0x7f070123

    goto :goto_0

    .line 300
    :cond_3
    const-string/jumbo v1, "ActiveDeal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 301
    const v0, 0x7f0701f1

    goto :goto_0

    .line 302
    :cond_4
    const-string/jumbo v1, "PlatformDelivery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const v0, 0x7f0701fd

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->f:Lcom/yelp/android/ui/util/bs;

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->c:Lcom/yelp/android/serializable/Category;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->g:Z

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/yelp/android/util/PlatformQualifier;->SensisYellowPages:Lcom/yelp/android/util/PlatformQualifier;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/PlatformQualifier;->qualifies(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ef

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 126
    const v0, 0x7f0c0389

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f070556

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/PickCategory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;)V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/PickCategory;->f()V

    .line 133
    return-void
.end method

.method private f()V
    .locals 9

    .prologue
    const v8, 0x7f07048c

    const v7, 0x7f0700b0

    const v6, 0x7f01015f

    const/4 v0, 0x0

    const/16 v5, 0xf

    .line 139
    .line 140
    iget-object v1, p0, Lcom/yelp/android/ui/activities/PickCategory;->c:Lcom/yelp/android/serializable/Category;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/PickCategory;->g:Z

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/PickCategory;->g()V

    .line 142
    iget-object v1, p0, Lcom/yelp/android/ui/activities/PickCategory;->f:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v8}, Lcom/yelp/android/ui/activities/PickCategory;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/PickCategory;->e:Lcom/yelp/android/ui/activities/ei;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    const v3, 0x7f0c0216

    invoke-static {p0, v5}, Lcom/yelp/android/appdata/ao;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 150
    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/PickCategory;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/PickCategory;->c:Lcom/yelp/android/serializable/Category;

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/PickCategory;->a(Lcom/yelp/android/serializable/Category;)V

    .line 159
    iget-object v2, p0, Lcom/yelp/android/ui/activities/PickCategory;->f:Lcom/yelp/android/ui/util/bs;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/PickCategory;->d:Lcom/yelp/android/ui/activities/ei;

    invoke-static {v1, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v3, 0x7f0c0216

    invoke-static {p0, v5}, Lcom/yelp/android/appdata/ao;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v3, v0, v4}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 169
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelector(I)V

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v1, p0, Lcom/yelp/android/ui/activities/PickCategory;->f:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v1, p0, Lcom/yelp/android/ui/activities/PickCategory;->i:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 184
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->e:Lcom/yelp/android/ui/activities/ei;

    .line 153
    invoke-static {p0, v5}, Lcom/yelp/android/appdata/ao;->a(Landroid/content/Context;I)I

    move-result v0

    .line 154
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private g()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 191
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0200ed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 198
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 205
    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v7

    add-int/2addr v3, v7

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 207
    array-length v7, v4

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_0

    .line 208
    aget-object v8, v4, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_0
    array-length v3, v5

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_1

    .line 211
    aget-object v4, v5, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/ei;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v6, v1}, Lcom/yelp/android/ui/activities/ei;-><init>(ZLjava/util/Map;Ljava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->e:Lcom/yelp/android/ui/activities/ei;

    .line 214
    return-void
.end method

.method private h()V
    .locals 8

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->e:Lcom/yelp/android/ui/activities/ei;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->e:Lcom/yelp/android/ui/activities/ei;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ei;->clear()V

    .line 259
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/m;

    move-result-object v1

    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    array-length v4, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v2, v0

    .line 263
    invoke-virtual {v1, v5}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v6

    .line 264
    if-nez v6, :cond_2

    invoke-direct {p0, v5}, Lcom/yelp/android/ui/activities/PickCategory;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    invoke-direct {p0, v5}, Lcom/yelp/android/ui/activities/PickCategory;->b(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v5

    .line 266
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_2
    if-eqz v6, :cond_1

    .line 268
    new-instance v5, Lcom/yelp/android/serializable/Category;

    invoke-direct {v5, v6}, Lcom/yelp/android/serializable/Category;-><init>(Lcom/yelp/android/serializable/Category;)V

    .line 269
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->e:Lcom/yelp/android/ui/activities/ei;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/ei;->a(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Nearby:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 312
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 313
    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/ui/activities/PickCategory;->setResult(ILandroid/content/Intent;)V

    .line 314
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->finish()V

    goto :goto_0

    .line 318
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->f:Lcom/yelp/android/ui/util/bs;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->f:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/PickCategory;->f()V

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->c:Lcom/yelp/android/serializable/Category;

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_popular"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->g:Z

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "search_on_complete"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->h:Z

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->a:Lcom/yelp/android/database/q;

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/PickCategory;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->b:Lcom/yelp/android/appdata/j;

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->c:Lcom/yelp/android/serializable/Category;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory;->c:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/PickCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/PickCategory;->c()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/PickCategory;->h()V

    .line 116
    return-void
.end method
