.class public Landroid/support/design/internal/b;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/l;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/b$b;,
        Landroid/support/design/internal/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/design/internal/NavigationMenuView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/support/v7/internal/view/menu/l$a;

.field private d:Landroid/support/v7/internal/view/menu/f;

.field private e:I

.field private f:Landroid/support/design/internal/b$a;

.field private g:Landroid/view/LayoutInflater;

.field private h:I

.field private i:Z

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    return-void
.end method

.method static synthetic a(Landroid/support/design/internal/b;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic b(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/b;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic c(Landroid/support/design/internal/b;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/support/design/internal/b;->i:Z

    return v0
.end method

.method static synthetic d(Landroid/support/design/internal/b;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/internal/b;->h:I

    return v0
.end method

.method static synthetic e(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/b;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic f(Landroid/support/design/internal/b;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/b;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Landroid/support/design/internal/b;)Landroid/support/v7/internal/view/menu/f;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/b;->d:Landroid/support/v7/internal/view/menu/f;

    return-object v0
.end method

.method static synthetic h(Landroid/support/design/internal/b;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/internal/b;->n:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/m;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/yelp/android/a/a$g;->design_navigation_menu:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuView;

    iput-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    .line 100
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/support/design/internal/b$a;

    invoke-direct {v0, p0}, Landroid/support/design/internal/b$a;-><init>(Landroid/support/design/internal/b;)V

    iput-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/yelp/android/a/a$g;->design_navigation_item_header:I

    iget-object v2, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/design/internal/b;->b:Landroid/widget/LinearLayout;

    .line 105
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/b;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/internal/NavigationMenuView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 106
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0, p0}, Landroid/support/design/internal/NavigationMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Landroid/support/design/internal/b;->e:I

    .line 158
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/f;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    .line 87
    iput-object p2, p0, Landroid/support/design/internal/b;->d:Landroid/support/v7/internal/view/menu/f;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    sget v1, Lcom/yelp/android/a/a$d;->design_navigation_padding_top_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/b;->m:I

    .line 91
    sget v1, Lcom/yelp/android/a/a$d;->design_navigation_separator_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/b;->n:I

    .line 93
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Landroid/support/design/internal/b;->k:Landroid/content/res/ColorStateList;

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/b;->a(Z)V

    .line 233
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Landroid/support/design/internal/b;->l:Landroid/graphics/drawable/Drawable;

    .line 257
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 176
    check-cast p1, Landroid/os/Bundle;

    .line 177
    const-string/jumbo v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 181
    :cond_0
    const-string/jumbo v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/b$a;->a(Landroid/os/Bundle;)V

    .line 185
    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;Z)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/design/internal/b;->c:Landroid/support/v7/internal/view/menu/l$a;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/support/design/internal/b;->c:Landroid/support/v7/internal/view/menu/l$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/l$a;->a(Landroid/support/v7/internal/view/menu/f;Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/h;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b$a;->a(Landroid/support/v7/internal/view/menu/h;)V

    .line 204
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Landroid/support/design/internal/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 216
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    invoke-virtual {v0}, Landroid/support/design/internal/b$a;->notifyDataSetChanged()V

    .line 117
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;Landroid/support/v7/internal/view/menu/h;)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/p;)Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/support/design/internal/b;->e:I

    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/design/internal/b;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v0}, Landroid/support/design/internal/b;->a(Landroid/view/View;)V

    .line 209
    return-object v0
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 241
    iput-object p1, p0, Landroid/support/design/internal/b;->j:Landroid/content/res/ColorStateList;

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/b;->a(Z)V

    .line 243
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b$a;->a(Z)V

    .line 263
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/internal/view/menu/f;Landroid/support/v7/internal/view/menu/h;)Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 165
    iget-object v2, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 166
    const-string/jumbo v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 168
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    if-eqz v1, :cond_1

    .line 169
    const-string/jumbo v1, "android:menu:adapter"

    iget-object v2, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    invoke-virtual {v2}, Landroid/support/design/internal/b$a;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 171
    :cond_1
    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 246
    iput p1, p0, Landroid/support/design/internal/b;->h:I

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/b;->i:Z

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/b;->a(Z)V

    .line 249
    return-void
.end method

.method public d()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/design/internal/b;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/design/internal/b;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/design/internal/b;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 190
    if-ltz v0, :cond_1

    .line 191
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/internal/b;->b(Z)V

    .line 192
    iget-object v1, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/b$a;->a(I)Landroid/support/design/internal/b$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/internal/b$b;->d()Landroid/support/v7/internal/view/menu/h;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$a;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/b$a;->a(Landroid/support/v7/internal/view/menu/h;)V

    .line 196
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/b;->d:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v1, v0, p0, v2}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/view/MenuItem;Landroid/support/v7/internal/view/menu/l;I)Z

    .line 197
    invoke-virtual {p0, v2}, Landroid/support/design/internal/b;->b(Z)V

    .line 198
    invoke-virtual {p0, v2}, Landroid/support/design/internal/b;->a(Z)V

    .line 200
    :cond_1
    return-void
.end method
