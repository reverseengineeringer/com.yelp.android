.class Lcom/yelp/android/i/k;
.super Landroid/support/v4/view/ey;
.source "WindowDecorActionBar.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/i/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/i/i;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/yelp/android/i/k;->a:Lcom/yelp/android/i/i;

    invoke-direct {p0}, Landroid/support/v4/view/ey;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yelp/android/i/k;->a:Lcom/yelp/android/i/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/i/i;->a(Lcom/yelp/android/i/i;Lcom/yelp/android/l/h;)Lcom/yelp/android/l/h;

    .line 159
    iget-object v0, p0, Lcom/yelp/android/i/k;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->c(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->requestLayout()V

    .line 160
    return-void
.end method
