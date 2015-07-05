.class Landroid/support/v7/app/d;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"

# interfaces
.implements Lcom/yelp/android/i/h;


# instance fields
.field final synthetic a:Landroid/support/v7/app/c;


# direct methods
.method constructor <init>(Landroid/support/v7/app/c;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    iget-object v0, v0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->b(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    iget-object v0, v0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    iget-object v0, v0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    iget-object v0, v0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public b(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    iget-object v0, v0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 91
    return-void
.end method

.method public c(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    iget-object v0, v0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method
