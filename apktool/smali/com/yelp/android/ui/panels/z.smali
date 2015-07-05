.class Lcom/yelp/android/ui/panels/z;
.super Ljava/lang/Object;
.source "PanelError.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/PanelError;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/PanelError;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yelp/android/ui/panels/z;->a:Lcom/yelp/android/ui/panels/PanelError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/panels/z;->a:Lcom/yelp/android/ui/panels/PanelError;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/panels/z;->a:Lcom/yelp/android/ui/panels/PanelError;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/aa;->m_()V

    .line 58
    :cond_0
    return-void
.end method
