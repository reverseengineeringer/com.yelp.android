.class Lcom/yelp/android/ui/panels/PanelError$1;
.super Ljava/lang/Object;
.source "PanelError.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/PanelError;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/PanelError;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yelp/android/ui/panels/PanelError$1;->a:Lcom/yelp/android/ui/panels/PanelError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError$1;->a:Lcom/yelp/android/ui/panels/PanelError;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/PanelError$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError$1;->a:Lcom/yelp/android/ui/panels/PanelError;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/PanelError$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/PanelError$a;->q_()V

    .line 60
    :cond_0
    return-void
.end method
