.class public Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;
.super Lcom/yelp/android/ui/dialogs/ListDialogFragment;
.source "SingleChoiceListDialogFragment.java"


# instance fields
.field private b:I

.field private c:[Ljava/lang/String;

.field private d:[Landroid/os/Parcelable;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->b:I

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->b:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->b:I

    return p1
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
    .line 33
    new-instance v0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;-><init>()V

    .line 34
    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    .line 35
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)[Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->d:[Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 5

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a()Ljava/util/Map;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->c:[Ljava/lang/String;

    .line 41
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->d:[Landroid/os/Parcelable;

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->c:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v4, v2

    .line 46
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->d:[Landroid/os/Parcelable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    aput-object v0, v1, v2

    .line 47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->c:[Ljava/lang/String;

    const/4 v1, -0x1

    new-instance v2, Lcom/yelp/android/ui/dialogs/bg;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/bg;-><init>(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)V

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    const v0, 0x1040013

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/yelp/android/ui/dialogs/bh;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/bh;-><init>(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    return-object p2
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->e:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->onStart()V

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/yelp/android/ui/dialogs/bi;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/bi;-><init>(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_0
    return-void
.end method
