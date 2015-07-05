.class Lcom/yelp/android/ui/dialogs/ai;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/TwoTierButton;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/ui/widgets/TwoTierButton;I)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ai;->c:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/ai;->a:Lcom/yelp/android/ui/widgets/TwoTierButton;

    iput p3, p0, Lcom/yelp/android/ui/dialogs/ai;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 554
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ai;->c:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/ai;->a:Lcom/yelp/android/ui/widgets/TwoTierButton;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ai;->a:Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V

    .line 557
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ai;->c:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Ljava/util/HashSet;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/dialogs/ai;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ai;->c:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Ljava/util/HashSet;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/dialogs/ai;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 562
    :goto_1
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ai;->c:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Ljava/util/HashSet;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/dialogs/ai;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
