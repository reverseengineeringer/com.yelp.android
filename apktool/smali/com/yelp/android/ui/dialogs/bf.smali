.class Lcom/yelp/android/ui/dialogs/bf;
.super Ljava/lang/Object;
.source "SimpleListDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/bf;->b:Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/bf;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bf;->b:Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->a:Lcom/yelp/android/ui/dialogs/as;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 55
    const-string/jumbo v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    const-string/jumbo v2, "data"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 57
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/bf;->b:Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->a:Lcom/yelp/android/ui/dialogs/as;

    invoke-interface {v2, v1, v0}, Lcom/yelp/android/ui/dialogs/as;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    :cond_0
    return-void
.end method
