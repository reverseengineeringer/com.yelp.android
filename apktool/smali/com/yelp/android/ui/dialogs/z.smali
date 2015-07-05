.class Lcom/yelp/android/ui/dialogs/z;
.super Ljava/lang/Object;
.source "FiltersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/AttributeFilter;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/ac;

.field final synthetic c:Lcom/yelp/android/ui/dialogs/y;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/y;Lcom/yelp/android/serializable/AttributeFilter;Lcom/yelp/android/ui/dialogs/ac;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/z;->c:Lcom/yelp/android/ui/dialogs/y;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/z;->a:Lcom/yelp/android/serializable/AttributeFilter;

    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/z;->b:Lcom/yelp/android/ui/dialogs/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/z;->a:Lcom/yelp/android/serializable/AttributeFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/z;->b:Lcom/yelp/android/ui/dialogs/ac;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/ac;->c(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/z;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/z;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/z;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 100
    :goto_1
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/z;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
