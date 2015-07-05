.class Lcom/yelp/android/ui/dialogs/ah;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ah;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ah;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b(Lcom/yelp/android/ui/dialogs/FiltersDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 444
    return-void
.end method
