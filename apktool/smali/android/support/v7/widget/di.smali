.class Landroid/support/v7/widget/di;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/x;


# instance fields
.field a:Landroid/support/v7/internal/view/menu/i;

.field b:Landroid/support/v7/internal/view/menu/m;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1904
    iput-object p1, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/df;)V
    .locals 0

    .prologue
    .line 1904
    invoke-direct {p0, p1}, Landroid/support/v7/widget/di;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V
    .locals 2

    .prologue
    .line 1911
    iget-object v0, p0, Landroid/support/v7/widget/di;->a:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_0

    .line 1912
    iget-object v0, p0, Landroid/support/v7/widget/di;->a:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->d(Landroid/support/v7/internal/view/menu/m;)Z

    .line 1914
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/di;->a:Landroid/support/v7/internal/view/menu/i;

    .line 1915
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 0

    .prologue
    .line 1957
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/ad;)Z
    .locals 1

    .prologue
    .line 1952
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/internal/view/menu/m;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1966
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)V

    .line 1967
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 1968
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1970
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/m;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 1971
    iput-object p2, p0, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    .line 1972
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 1973
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->i()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1974
    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/support/v7/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 1975
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->b:I

    .line 1976
    iget-object v1, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1977
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1980
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;Z)V

    .line 1981
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1982
    invoke-virtual {p2, v3}, Landroid/support/v7/internal/view/menu/m;->e(Z)V

    .line 1984
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/yelp/android/m/c;

    if-eqz v0, :cond_2

    .line 1985
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Lcom/yelp/android/m/c;

    invoke-interface {v0}, Lcom/yelp/android/m/c;->a()V

    .line 1988
    :cond_2
    return v3
.end method

.method public b(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1925
    iget-object v1, p0, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    if-eqz v1, :cond_1

    .line 1928
    iget-object v1, p0, Landroid/support/v7/widget/di;->a:Landroid/support/v7/internal/view/menu/i;

    if-eqz v1, :cond_0

    .line 1929
    iget-object v1, p0, Landroid/support/v7/widget/di;->a:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->size()I

    move-result v2

    move v1, v0

    .line 1930
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1931
    iget-object v3, p0, Landroid/support/v7/widget/di;->a:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v3, v1}, Landroid/support/v7/internal/view/menu/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1932
    iget-object v4, p0, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    if-ne v3, v4, :cond_2

    .line 1933
    const/4 v0, 0x1

    .line 1939
    :cond_0
    if-nez v0, :cond_1

    .line 1941
    iget-object v0, p0, Landroid/support/v7/widget/di;->a:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/di;->b(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/internal/view/menu/m;)Z

    .line 1944
    :cond_1
    return-void

    .line 1930
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1961
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/internal/view/menu/m;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1995
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/yelp/android/m/c;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Lcom/yelp/android/m/c;

    invoke-interface {v0}, Lcom/yelp/android/m/c;->b()V

    .line 1999
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2000
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2001
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v3, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 2003
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;Z)V

    .line 2004
    iput-object v3, p0, Landroid/support/v7/widget/di;->b:Landroid/support/v7/internal/view/menu/m;

    .line 2005
    iget-object v0, p0, Landroid/support/v7/widget/di;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2006
    invoke-virtual {p2, v2}, Landroid/support/v7/internal/view/menu/m;->e(Z)V

    .line 2008
    const/4 v0, 0x1

    return v0
.end method
