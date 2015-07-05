.class public Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;
.super Landroid/support/v4/app/Fragment;
.source "PreferenceScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Lcom/yelp/android/ui/activities/settings/an;

.field private c:Landroid/content/SharedPreferences;

.field private d:Lcom/yelp/android/ui/activities/settings/ao;

.field private final e:Ljava/util/Map;
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

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/settings/PreferenceView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ao;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Ljava/util/Map;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->g:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->e:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public static a(ILjava/lang/CharSequence;I)Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string/jumbo v1, "screenref"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 71
    const-string/jumbo v1, "footer"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    new-instance v1, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;-><init>()V

    .line 74
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;)Lcom/yelp/android/ui/activities/settings/an;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/an;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->e:Ljava/util/Map;

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

    .line 291
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method public a(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ao;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 106
    iget-object v3, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Ljava/util/Map;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    if-eqz v0, :cond_1

    .line 210
    new-instance v1, Lcom/yelp/android/ui/activities/settings/ai;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/activities/settings/ai;-><init>(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_1
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/an;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/an;

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 307
    :cond_0
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method public b(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/ao;

    .line 318
    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->d:Lcom/yelp/android/ui/activities/settings/ao;

    .line 321
    :cond_0
    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/settings/ao;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 322
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 324
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 325
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 328
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->isClickable()Z

    move-result v1

    if-eq v4, v1, :cond_3

    const/4 v1, 0x1

    move v2, v1

    .line 331
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/settings/ao;

    .line 332
    if-eqz v1, :cond_2

    .line 333
    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/settings/ao;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 337
    :cond_2
    if-eqz v2, :cond_1

    .line 338
    if-eqz v4, :cond_4

    .line 339
    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v6, v1

    invoke-static {v0, v6, v7}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/settings/al;

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/activities/settings/al;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 328
    goto :goto_1

    .line 342
    :cond_4
    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v6, v1

    invoke-static {v0, v6, v7}, Lcom/yelp/android/ui/util/cw;->b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/settings/am;

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/activities/settings/am;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 348
    :cond_5
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 237
    instance-of v0, p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    if-eqz v0, :cond_2

    .line 238
    check-cast p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 246
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_0
    invoke-virtual {p2, p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 254
    iget-object v0, p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/yelp/android/ui/activities/settings/aj;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/activities/settings/aj;-><init>(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 271
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getDependency()I

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getDependency()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 283
    :cond_2
    return-void

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 223
    instance-of v0, p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    if-eqz v0, :cond_0

    .line 224
    check-cast p2, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getDependency()I

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getDependency()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 229
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 183
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getReference()I

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/an;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getReference()I

    move-result v2

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/yelp/android/ui/activities/settings/an;->a(ILjava/lang/CharSequence;)V

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;

    if-eqz v1, :cond_1

    .line 188
    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/an;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    invoke-interface {v2, v3, v1}, Lcom/yelp/android/ui/activities/settings/an;->a(Ljava/lang/String;Z)V

    .line 191
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/yelp/android/ui/activities/settings/LocationPreference;

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/an;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/yelp/android/ui/activities/settings/an;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/an;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/settings/an;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    .line 198
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->c:Landroid/content/SharedPreferences;

    .line 126
    new-instance v0, Lcom/yelp/android/ui/activities/settings/ak;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->c:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/settings/ak;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->d:Lcom/yelp/android/ui/activities/settings/ao;

    .line 129
    const v0, 0x7f030161

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 131
    const v1, 0x7f0c0462

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 132
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 136
    const-string/jumbo v3, "screenref"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 137
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a:Ljava/lang/CharSequence;

    .line 138
    invoke-virtual {p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 139
    const-string/jumbo v3, "footer"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p1, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->h:Landroid/view/View;

    .line 142
    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    :cond_0
    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->c:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 160
    move-object v0, p1

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 161
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 165
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 167
    const/4 v2, 0x0

    .line 168
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 169
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 170
    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->b:Lcom/yelp/android/ui/activities/settings/an;

    const v4, 0x7f07031a

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0, v3, v1}, Lcom/yelp/android/ui/activities/settings/an;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_1
    return v0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a()V

    .line 156
    return-void
.end method
