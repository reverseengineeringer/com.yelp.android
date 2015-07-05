.class Lcom/yelp/android/ui/dialogs/ae;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ae;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ae;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/aj;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ae;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/serializable/Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/dialogs/aj;->a(Lcom/yelp/android/serializable/Filter;)V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ae;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->dismiss()V

    .line 236
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity should implement the FiltersDialogListener interface"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
