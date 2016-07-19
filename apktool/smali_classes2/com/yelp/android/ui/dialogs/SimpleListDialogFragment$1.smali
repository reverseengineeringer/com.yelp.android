.class Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment$1;
.super Ljava/lang/Object;
.source "SimpleListDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->a(Landroid/os/Bundle;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment$1;->b:Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment$1;->b:Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->a:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 61
    const-string/jumbo v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    const-string/jumbo v2, "data"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 63
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment$1;->b:Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->a:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

    invoke-interface {v2, v1, v0}, Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    :cond_0
    return-void
.end method
