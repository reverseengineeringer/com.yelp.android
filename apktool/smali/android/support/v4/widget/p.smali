.class final Landroid/support/v4/widget/p;
.super Landroid/support/v4/view/a;
.source "DrawerLayout.java"


# instance fields
.field final synthetic b:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 0

    .prologue
    .line 1944
    iput-object p1, p0, Landroid/support/v4/widget/p;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/yelp/android/f/g;)V
    .locals 1

    .prologue
    .line 1948
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Lcom/yelp/android/f/g;)V

    .line 1950
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/yelp/android/f/g;->c(Landroid/view/View;)V

    .line 1956
    :cond_0
    return-void
.end method
