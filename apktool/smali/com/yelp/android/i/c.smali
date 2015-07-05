.class Lcom/yelp/android/i/c;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/widget/dj;


# instance fields
.field final synthetic a:Lcom/yelp/android/i/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/i/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yelp/android/i/c;->a:Lcom/yelp/android/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/i/c;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/i/h;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
