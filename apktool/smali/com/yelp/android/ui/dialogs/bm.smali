.class Lcom/yelp/android/ui/dialogs/bm;
.super Ljava/lang/Object;
.source "YelpDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/bl;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/bl;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/bm;->b:Lcom/yelp/android/ui/dialogs/bl;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/bm;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bm;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bm;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bm;->b:Lcom/yelp/android/ui/dialogs/bl;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/bl;->a(Lcom/yelp/android/ui/dialogs/bl;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 106
    return-void
.end method
