.class Landroid/support/v4/widget/o;
.super Landroid/support/v4/view/a;
.source "DrawerLayout.java"


# instance fields
.field final synthetic b:Landroid/support/v4/widget/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    .prologue
    .line 1828
    iput-object p1, p0, Landroid/support/v4/widget/o;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 1829
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/o;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Lcom/yelp/android/f/g;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 1903
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1904
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1905
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1906
    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1907
    invoke-virtual {p1, v2}, Lcom/yelp/android/f/g;->b(Landroid/view/View;)V

    .line 1904
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1910
    :cond_1
    return-void
.end method

.method private a(Lcom/yelp/android/f/g;Lcom/yelp/android/f/g;)V
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Landroid/support/v4/widget/o;->c:Landroid/graphics/Rect;

    .line 1921
    invoke-virtual {p2, v0}, Lcom/yelp/android/f/g;->a(Landroid/graphics/Rect;)V

    .line 1922
    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->b(Landroid/graphics/Rect;)V

    .line 1924
    invoke-virtual {p2, v0}, Lcom/yelp/android/f/g;->c(Landroid/graphics/Rect;)V

    .line 1925
    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->d(Landroid/graphics/Rect;)V

    .line 1927
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->c(Z)V

    .line 1928
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->a(Ljava/lang/CharSequence;)V

    .line 1929
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->q()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->b(Ljava/lang/CharSequence;)V

    .line 1930
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->s()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->c(Ljava/lang/CharSequence;)V

    .line 1932
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->h(Z)V

    .line 1933
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->f(Z)V

    .line 1934
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->a(Z)V

    .line 1935
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->b(Z)V

    .line 1936
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->d(Z)V

    .line 1937
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->e(Z)V

    .line 1938
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->g(Z)V

    .line 1940
    invoke-virtual {p2}, Lcom/yelp/android/f/g;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/f/g;->a(I)V

    .line 1941
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/yelp/android/f/g;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1833
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Lcom/yelp/android/f/g;)V

    .line 1853
    :goto_0
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/f/g;->b(Ljava/lang/CharSequence;)V

    .line 1858
    invoke-virtual {p2, v3}, Lcom/yelp/android/f/g;->a(Z)V

    .line 1859
    invoke-virtual {p2, v3}, Lcom/yelp/android/f/g;->b(Z)V

    .line 1860
    return-void

    .line 1838
    :cond_0
    invoke-static {p2}, Lcom/yelp/android/f/g;->a(Lcom/yelp/android/f/g;)Lcom/yelp/android/f/g;

    move-result-object v1

    .line 1840
    invoke-super {p0, p1, v1}, Landroid/support/v4/view/a;->a(Landroid/view/View;Lcom/yelp/android/f/g;)V

    .line 1842
    invoke-virtual {p2, p1}, Lcom/yelp/android/f/g;->a(Landroid/view/View;)V

    .line 1843
    invoke-static {p1}, Landroid/support/v4/view/ce;->i(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 1844
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1845
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/yelp/android/f/g;->c(Landroid/view/View;)V

    .line 1847
    :cond_1
    invoke-direct {p0, p2, v1}, Landroid/support/v4/widget/o;->a(Lcom/yelp/android/f/g;Lcom/yelp/android/f/g;)V

    .line 1848
    invoke-virtual {v1}, Lcom/yelp/android/f/g;->t()V

    .line 1850
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/o;->a(Lcom/yelp/android/f/g;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 1896
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1897
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1899
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    .line 1876
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1877
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1878
    iget-object v1, p0, Landroid/support/v4/widget/o;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;

    move-result-object v1

    .line 1879
    if-eqz v1, :cond_0

    .line 1880
    iget-object v2, p0, Landroid/support/v4/widget/o;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v1

    .line 1881
    iget-object v2, p0, Landroid/support/v4/widget/o;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1882
    if-eqz v1, :cond_0

    .line 1883
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1887
    :cond_0
    const/4 v0, 0x1

    .line 1890
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1864
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1866
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1867
    return-void
.end method