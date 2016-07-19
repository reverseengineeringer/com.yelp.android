.class Landroid/support/v7/app/i$a;
.super Landroid/support/v7/app/g$b;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/app/i;


# direct methods
.method constructor <init>(Landroid/support/v7/app/i;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Landroid/support/v7/app/i$a;->b:Landroid/support/v7/app/i;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/g$b;-><init>(Landroid/support/v7/app/g;Landroid/view/Window$Callback;)V

    .line 52
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/yelp/android/p/d$a;

    iget-object v1, p0, Landroid/support/v7/app/i$a;->b:Landroid/support/v7/app/i;

    iget-object v1, v1, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/p/d$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 74
    iget-object v1, p0, Landroid/support/v7/app/i$a;->b:Landroid/support/v7/app/i;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/i;->a(Lcom/yelp/android/r/a$a;)Lcom/yelp/android/r/a;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Lcom/yelp/android/p/d$a;->b(Lcom/yelp/android/r/a;)Landroid/view/ActionMode;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/i$a;->b:Landroid/support/v7/app/i;

    invoke-virtual {v0}, Landroid/support/v7/app/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/support/v7/app/i$a;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/g$b;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
