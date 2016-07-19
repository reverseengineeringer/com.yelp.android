.class public Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;
.super Landroid/support/v4/app/Fragment;
.source "PreferenceScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$a;,
        Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

.field private c:Lcom/yelp/android/cj/i;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/activities/settings/PreferenceView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/cj/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->e:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->d:Ljava/util/Map;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;)Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    return-object v0
.end method

.method public static a(ILjava/lang/CharSequence;I)Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string/jumbo v1, "layout"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 73
    const-string/jumbo v1, "footer"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    new-instance v1, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;-><init>()V

    .line 76
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreferenceSection;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string/jumbo v1, "preference_sections"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 88
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;-><init>()V

    .line 91
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 318
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    .line 109
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/cj/i;

    .line 345
    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->c:Lcom/yelp/android/cj/i;

    .line 348
    :cond_0
    invoke-interface {v0, p1}, Lcom/yelp/android/cj/i;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 349
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 334
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/cj/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->e:Ljava/util/Map;

    .line 113
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 262
    instance-of v0, p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    if-eqz v0, :cond_0

    .line 263
    check-cast p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 271
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :goto_0
    invoke-virtual {p2, p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 279
    iget-object v0, p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;-><init>(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 304
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 306
    :cond_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 219
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 220
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v1

    .line 224
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
    const v4, 0x7f0706ff

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ApiPreferences;->e()Ljava/util/List;

    move-result-object v5

    const v6, 0x7f0704c7

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 230
    :cond_0
    const v4, 0x7f0706f5

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    iget-object v4, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ApiPreferences;->d()Ljava/util/List;

    move-result-object v1

    const v5, 0x7f07028d

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 237
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getReference()I

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getReference()I

    move-result v4

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;->a(ILjava/lang/CharSequence;)V

    .line 243
    :cond_2
    instance-of v1, p1, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;

    if-eqz v1, :cond_3

    .line 244
    iget-object v4, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v4, v3, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;->a(Ljava/lang/String;I)V

    .line 247
    :cond_3
    instance-of v1, p1, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    iget-object v4, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    move-object v1, p1

    check-cast v1, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;->getValue()I

    move-result v1

    invoke-interface {v4, v3, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;->a(Ljava/lang/String;I)V

    .line 252
    :cond_4
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, p1, Lcom/yelp/android/ui/activities/settings/LocationPreference;

    if-eqz v1, :cond_5

    .line 253
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v7, v2, v7}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 256
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 257
    return-void

    :cond_6
    move v1, v2

    .line 244
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    new-instance v0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->c:Lcom/yelp/android/cj/i;

    .line 127
    const v0, 0x7f0301d0

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    const v1, 0x7f0f0565

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 130
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 134
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a:Ljava/lang/CharSequence;

    .line 137
    const-string/jumbo v3, "layout"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 138
    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 140
    const-string/jumbo v3, "footer"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p1, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Landroid/view/View;

    .line 143
    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    const-string/jumbo v3, "preference_sections"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    new-instance v3, Lcom/yelp/android/ui/activities/settings/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/yelp/android/ui/activities/settings/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/settings/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 150
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 173
    move-object v0, p1

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 174
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 180
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 182
    const/4 v2, 0x0

    .line 183
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 184
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 185
    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    .line 188
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 189
    const-string/jumbo v1, ""

    .line 197
    instance-of v5, v2, Lcom/yelp/android/ui/activities/settings/LocationPreference;

    if-eqz v5, :cond_1

    move-object v1, v2

    .line 198
    check-cast v1, Lcom/yelp/android/ui/activities/settings/LocationPreference;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/settings/LocationPreference;->getId()I

    move-result v1

    const v5, 0x7f0f0572

    if-ne v1, v5, :cond_2

    .line 199
    const v1, 0x7f0705b7

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0, v4, v3}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_2
    return v0

    .line 200
    :cond_2
    check-cast v2, Lcom/yelp/android/ui/activities/settings/LocationPreference;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/settings/LocationPreference;->getId()I

    move-result v1

    const v2, 0x7f0f0571

    if-ne v1, v2, :cond_3

    .line 201
    const v1, 0x7f0704b2

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 203
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid parent location type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v4

    .line 210
    goto :goto_2

    :cond_5
    move-object v3, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a()V

    .line 169
    return-void
.end method
