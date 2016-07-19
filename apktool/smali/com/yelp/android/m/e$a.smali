.class public Lcom/yelp/android/m/e$a;
.super Lcom/yelp/android/r/a;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/m/e;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v7/internal/view/menu/f;

.field private d:Lcom/yelp/android/r/a$a;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/m/e;Landroid/content/Context;Lcom/yelp/android/r/a$a;)V
    .locals 2

    .prologue
    .line 937
    iput-object p1, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-direct {p0}, Lcom/yelp/android/r/a;-><init>()V

    .line 938
    iput-object p2, p0, Lcom/yelp/android/m/e$a;->b:Landroid/content/Context;

    .line 939
    iput-object p3, p0, Lcom/yelp/android/m/e$a;->d:Lcom/yelp/android/r/a$a;

    .line 940
    new-instance v0, Landroid/support/v7/internal/view/menu/f;

    invoke-direct {v0, p2}, Landroid/support/v7/internal/view/menu/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/f;->a(I)Landroid/support/v7/internal/view/menu/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    .line 942
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/f$a;)V

    .line 943
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 947
    new-instance v0, Lcom/yelp/android/p/e;

    iget-object v1, p0, Lcom/yelp/android/m/e$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yelp/android/p/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->i(Lcom/yelp/android/m/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/m/e$a;->b(Ljava/lang/CharSequence;)V

    .line 1031
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;)V
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->d:Lcom/yelp/android/r/a$a;

    if-nez v0, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/m/e$a;->d()V

    .line 1096
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a()Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1015
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/m/e$a;->e:Ljava/lang/ref/WeakReference;

    .line 1016
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1021
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1050
    invoke-super {p0, p1}, Lcom/yelp/android/r/a;->a(Z)V

    .line 1051
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1052
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->d:Lcom/yelp/android/r/a$a;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->d:Lcom/yelp/android/r/a$a;

    invoke-interface {v0, p0, p2}, Lcom/yelp/android/r/a$a;->a(Lcom/yelp/android/r/a;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1068
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->i(Lcom/yelp/android/m/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/m/e$a;->a(Ljava/lang/CharSequence;)V

    .line 1036
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1026
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 957
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    iget-object v0, v0, Lcom/yelp/android/m/e;->a:Lcom/yelp/android/m/e$a;

    if-eq v0, p0, :cond_0

    .line 984
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->e(Lcom/yelp/android/m/e;)Z

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v1}, Lcom/yelp/android/m/e;->f(Lcom/yelp/android/m/e;)Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/yelp/android/m/e;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    iput-object p0, v0, Lcom/yelp/android/m/e;->b:Lcom/yelp/android/r/a;

    .line 970
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    iget-object v1, p0, Lcom/yelp/android/m/e$a;->d:Lcom/yelp/android/r/a$a;

    iput-object v1, v0, Lcom/yelp/android/m/e;->c:Lcom/yelp/android/r/a$a;

    .line 974
    :goto_1
    iput-object v3, p0, Lcom/yelp/android/m/e$a;->d:Lcom/yelp/android/r/a$a;

    .line 975
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-virtual {v0, v2}, Lcom/yelp/android/m/e;->l(Z)V

    .line 978
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->b()V

    .line 979
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->h(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/f;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 981
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->d(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    iget-boolean v1, v1, Lcom/yelp/android/m/e;->d:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 983
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    iput-object v3, v0, Lcom/yelp/android/m/e;->a:Lcom/yelp/android/m/e$a;

    goto :goto_0

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->d:Lcom/yelp/android/r/a$a;

    invoke-interface {v0, p0}, Lcom/yelp/android/r/a$a;->a(Lcom/yelp/android/r/a;)V

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    iget-object v0, v0, Lcom/yelp/android/m/e;->a:Lcom/yelp/android/m/e$a;

    if-eq v0, p0, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->g()V

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->d:Lcom/yelp/android/r/a$a;

    iget-object v1, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-interface {v0, p0, v1}, Lcom/yelp/android/r/a$a;->b(Lcom/yelp/android/r/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/f;->h()V

    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->g()V

    .line 1006
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->d:Lcom/yelp/android/r/a$a;

    iget-object v1, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-interface {v0, p0, v1}, Lcom/yelp/android/r/a$a;->a(Lcom/yelp/android/r/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1008
    iget-object v1, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/f;->h()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/m/e$a;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/f;->h()V

    throw v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->d()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/yelp/android/m/e$a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/m/e$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
