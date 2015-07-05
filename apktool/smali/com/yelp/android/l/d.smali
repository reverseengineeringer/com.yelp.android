.class public Lcom/yelp/android/l/d;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Lcom/yelp/android/m/b;


# instance fields
.field final a:Landroid/view/ActionMode$Callback;

.field final b:Landroid/content/Context;

.field final c:Lcom/yelp/android/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/e/q",
            "<",
            "Lcom/yelp/android/m/a;",
            "Lcom/yelp/android/l/c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/yelp/android/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/e/q",
            "<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/yelp/android/l/d;->b:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/yelp/android/l/d;->a:Landroid/view/ActionMode$Callback;

    .line 148
    new-instance v0, Lcom/yelp/android/e/q;

    invoke-direct {v0}, Lcom/yelp/android/e/q;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/l/d;->c:Lcom/yelp/android/e/q;

    .line 149
    new-instance v0, Lcom/yelp/android/e/q;

    invoke-direct {v0}, Lcom/yelp/android/e/q;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/l/d;->d:Lcom/yelp/android/e/q;

    .line 150
    return-void
.end method

.method private a(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/l/d;->d:Lcom/yelp/android/e/q;

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    .line 178
    if-nez v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/yelp/android/l/d;->b:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/yelp/android/b/a;

    invoke-static {v1, v0}, Landroid/support/v7/internal/view/menu/ab;->a(Landroid/content/Context;Lcom/yelp/android/b/a;)Landroid/view/Menu;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/yelp/android/l/d;->d:Lcom/yelp/android/e/q;

    invoke-virtual {v1, p1, v0}, Lcom/yelp/android/e/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    return-object v0
.end method

.method private b(Lcom/yelp/android/m/a;)Landroid/view/ActionMode;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yelp/android/l/d;->c:Lcom/yelp/android/e/q;

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/l/c;

    .line 188
    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-object v0

    .line 194
    :cond_0
    new-instance v0, Lcom/yelp/android/l/c;

    iget-object v1, p0, Lcom/yelp/android/l/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/l/c;-><init>(Landroid/content/Context;Lcom/yelp/android/m/a;)V

    .line 195
    iget-object v1, p0, Lcom/yelp/android/l/d;->c:Lcom/yelp/android/e/q;

    invoke-virtual {v1, p1, v0}, Lcom/yelp/android/e/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/m/a;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/l/d;->a:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcom/yelp/android/l/d;->b(Lcom/yelp/android/m/a;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 174
    return-void
.end method

.method public a(Lcom/yelp/android/m/a;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/l/d;->a:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcom/yelp/android/l/d;->b(Lcom/yelp/android/m/a;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/yelp/android/l/d;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/m/a;Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/l/d;->a:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcom/yelp/android/l/d;->b(Lcom/yelp/android/m/a;)Landroid/view/ActionMode;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/l/d;->b:Landroid/content/Context;

    check-cast p2, Lcom/yelp/android/b/b;

    invoke-static {v2, p2}, Landroid/support/v7/internal/view/menu/ab;->a(Landroid/content/Context;Lcom/yelp/android/b/b;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/yelp/android/m/a;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/l/d;->a:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcom/yelp/android/l/d;->b(Lcom/yelp/android/m/a;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/yelp/android/l/d;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
