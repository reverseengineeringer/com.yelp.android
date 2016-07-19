.class Lcom/yelp/android/ui/dialogs/FiltersDialog$5;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

.field final synthetic b:Ljava/util/HashSet;

.field final synthetic c:Lcom/yelp/android/ui/widgets/TwoTierButton;

.field final synthetic d:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/HashSet;Lcom/yelp/android/ui/widgets/TwoTierButton;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->d:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->b:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->c:Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->b:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/d;->a(Ljava/util/Set;Ljava/lang/Object;)V

    .line 760
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->d:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->c:Lcom/yelp/android/ui/widgets/TwoTierButton;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;->c:Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V

    .line 762
    :cond_0
    return-void

    .line 760
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
