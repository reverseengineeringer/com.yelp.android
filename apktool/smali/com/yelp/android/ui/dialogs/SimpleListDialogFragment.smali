.class public Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;
.super Lcom/yelp/android/ui/dialogs/ListDialogFragment;
.source "SimpleListDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;-><init>()V

    return-void
.end method

.method public static b(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;
    .locals 1
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
    .line 26
    new-instance v0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;-><init>()V

    .line 27
    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->a(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    .line 28
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->a()Ljava/util/Map;

    move-result-object v0

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 40
    const-string/jumbo v4, "text"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v4, "data"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x1090003

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "text"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x1020014

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 50
    new-instance v1, Lcom/yelp/android/ui/dialogs/bf;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/dialogs/bf;-><init>(Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    return-object p2
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
