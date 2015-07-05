.class public Lcom/yelp/android/ui/util/cj;
.super Lcom/yelp/android/ui/util/au;
.source "UserAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;",
        "Landroid/widget/Filterable;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/ui/util/cm;

.field private final b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseIntArray;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/View$OnClickListener;

.field private final j:Landroid/view/View$OnClickListener;

.field private final k:Landroid/widget/Filter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f030155

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/cj;-><init>(I)V

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/util/cj;-><init>(Ljava/util/ArrayList;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/cj;->g:Z

    .line 401
    new-instance v0, Lcom/yelp/android/ui/util/ck;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/ck;-><init>(Lcom/yelp/android/ui/util/cj;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/cj;->j:Landroid/view/View$OnClickListener;

    .line 429
    new-instance v0, Lcom/yelp/android/ui/util/cl;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/cl;-><init>(Lcom/yelp/android/ui/util/cj;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/cj;->k:Landroid/widget/Filter;

    .line 114
    iput p2, p0, Lcom/yelp/android/ui/util/cj;->b:I

    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/cj;->c:Ljava/util/Map;

    .line 118
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/cj;->e:Landroid/util/SparseIntArray;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/cj;->f:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/cj;->a(Ljava/util/List;)V

    .line 121
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/yelp/android/ui/util/cj;
    .locals 8

    .prologue
    .line 78
    .line 79
    if-nez p0, :cond_0

    .line 80
    new-instance v0, Lcom/yelp/android/ui/util/cj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/cj;-><init>()V

    .line 92
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-string/jumbo v0, "users"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    const-string/jumbo v0, "uids"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 84
    const-string/jumbo v0, "contacts"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 85
    new-instance v0, Lcom/yelp/android/ui/util/cj;

    const-string/jumbo v4, "layout_id"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/util/cj;-><init>(Ljava/util/ArrayList;I)V

    .line 86
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_1

    .line 88
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_1
    iput-object v4, v0, Lcom/yelp/android/ui/util/cj;->c:Ljava/util/Map;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/cj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/util/cj;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/cj;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/util/cj;->h:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/yelp/android/ui/util/cj;->i:Landroid/view/View$OnClickListener;

    .line 204
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->c(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/cj;->b()V

    .line 145
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;Z)V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/cj;->a(Lcom/yelp/android/serializable/User;)V

    .line 131
    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/cj;->notifyDataSetChanged()V

    .line 133
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/serializable/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/Collection;)V

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/cj;->b()V

    .line 139
    return-void
.end method

.method public a(Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/cj;->a(Ljava/util/Collection;)V

    .line 125
    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/cj;->notifyDataSetChanged()V

    .line 127
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/cj;->b()V

    .line 151
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
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    iput-object p1, p0, Lcom/yelp/android/ui/util/cj;->c:Ljava/util/Map;

    .line 423
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/cj;->g:Z

    .line 427
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 244
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/util/cj;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/cj;->getCount()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    .line 247
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/util/cj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 248
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 252
    iget-object v1, p0, Lcom/yelp/android/ui/util/cj;->e:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lcom/yelp/android/ui/util/cj;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    iget-object v1, p0, Lcom/yelp/android/ui/util/cj;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 256
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/util/cj;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/cj;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/cj;->h:Ljava/util/List;

    .line 164
    :cond_0
    const-string/jumbo v0, "users"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/util/cj;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/util/cj;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_1
    const-string/jumbo v0, "uids"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    const-string/jumbo v0, "contacts"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 173
    const-string/jumbo v0, "layout_id"

    iget v1, p0, Lcom/yelp/android/ui/util/cj;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/cj;->a(Lcom/yelp/android/serializable/User;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->clear()V

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/cj;->c:Ljava/util/Map;

    .line 180
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/cj;->notifyDataSetInvalidated()V

    .line 181
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/util/cj;->k:Landroid/widget/Filter;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/util/cj;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/cj;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/cj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 271
    iget-object v1, p0, Lcom/yelp/android/ui/util/cj;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/util/cj;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 208
    if-nez p2, :cond_1

    .line 209
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/util/cj;->b:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 212
    new-instance v0, Lcom/yelp/android/ui/util/cn;

    invoke-direct {v0, p2, v3}, Lcom/yelp/android/ui/util/cn;-><init>(Landroid/view/View;Z)V

    .line 213
    iget-object v1, p0, Lcom/yelp/android/ui/util/cj;->c:Ljava/util/Map;

    iput-object v1, v0, Lcom/yelp/android/ui/util/cn;->i:Ljava/util/Map;

    .line 214
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/yelp/android/ui/util/cj;->d:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, v0, Lcom/yelp/android/ui/util/cn;->m:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 217
    iget-object v1, v0, Lcom/yelp/android/ui/util/cn;->m:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lcom/yelp/android/ui/util/cj;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :cond_0
    iget-object v1, v0, Lcom/yelp/android/ui/util/cn;->o:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, v0, Lcom/yelp/android/ui/util/cn;->o:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 221
    iget-object v0, v0, Lcom/yelp/android/ui/util/cn;->o:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/yelp/android/ui/util/cj;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/cj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 225
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/cn;

    .line 226
    iget-boolean v2, p0, Lcom/yelp/android/ui/util/cj;->g:Z

    if-eqz v2, :cond_4

    .line 227
    iget-object v2, v1, Lcom/yelp/android/ui/util/cn;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v2, v1, Lcom/yelp/android/ui/util/cn;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/util/cj;->d:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    .line 233
    iget-object v2, v1, Lcom/yelp/android/ui/util/cn;->m:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lcom/yelp/android/ui/util/cj;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 234
    iget-object v2, v1, Lcom/yelp/android/ui/util/cn;->m:Landroid/widget/CompoundButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 236
    :cond_2
    iget-object v2, v1, Lcom/yelp/android/ui/util/cn;->o:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, v1, Lcom/yelp/android/ui/util/cn;->o:Landroid/widget/ImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 239
    :cond_3
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/cn;->a(Lcom/yelp/android/serializable/DisplayableAsUserBadge;)V

    .line 240
    return-object p2

    .line 230
    :cond_4
    iget-object v2, v1, Lcom/yelp/android/ui/util/cn;->n:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
