.class Lcom/yelp/android/i/l;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v4/view/ez;


# instance fields
.field final synthetic a:Lcom/yelp/android/i/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/i/i;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/yelp/android/i/l;->a:Lcom/yelp/android/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/i/l;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->c(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 168
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 169
    return-void
.end method
