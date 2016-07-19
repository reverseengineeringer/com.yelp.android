.class Lcom/yelp/android/m/d$2;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/m/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/m/d;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/yelp/android/m/d$2;->a:Lcom/yelp/android/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/m/d$2;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
