.class public abstract Lcom/yelp/android/ui/dialogs/ListDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 92
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
.end method

.method public a(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ">;>;)",
            "Lcom/yelp/android/ui/dialogs/ListDialogFragment;"
        }
    .end annotation

    .prologue
    .line 43
    iput p1, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->b:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->c:Ljava/util/Map;

    .line 45
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 46
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->c:Ljava/util/Map;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->c:Ljava/util/Map;

    invoke-static {v1}, Lcom/yelp/android/ui/util/i;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object p0
.end method

.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->c:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

    .line 99
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const-string/jumbo v1, "saved_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->b:I

    .line 65
    const-string/jumbo v1, "saved_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Landroid/os/Parcelable;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/i;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->c:Ljava/util/Map;

    .line 70
    :cond_0
    iget v1, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->b:I

    if-eqz v1, :cond_1

    .line 71
    iget v1, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->b:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 73
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Landroid/os/Bundle;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string/jumbo v0, "saved_title"

    iget v1, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string/jumbo v0, "saved_data"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->c:Ljava/util/Map;

    invoke-static {v1}, Lcom/yelp/android/ui/util/i;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86
    return-void
.end method
