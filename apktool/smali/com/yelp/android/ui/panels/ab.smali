.class Lcom/yelp/android/ui/panels/ab;
.super Ljava/lang/Object;
.source "PanelLoading.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/PanelLoading;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/PanelLoading;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ab;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ab;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->onWindowVisibilityChanged(I)V

    .line 204
    return-void
.end method
