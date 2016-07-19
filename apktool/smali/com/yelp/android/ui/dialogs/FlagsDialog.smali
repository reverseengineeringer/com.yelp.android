.class public Lcom/yelp/android/ui/dialogs/FlagsDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "FlagsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/FlagsDialog$a;,
        Lcom/yelp/android/ui/dialogs/FlagsDialog$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

.field private b:Ljava/util/Locale;

.field private c:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

.field private d:Z

.field private final e:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->d:Z

    .line 128
    new-instance v0, Lcom/yelp/android/ui/dialogs/FlagsDialog$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/FlagsDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/FlagsDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/FlagsDialog$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    return-object v0
.end method

.method public static a(Ljava/util/Locale;)Lcom/yelp/android/ui/dialogs/FlagsDialog;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/ui/dialogs/FlagsDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string/jumbo v2, "locale"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FlagsDialog;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->b:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/FlagsDialog$b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->c:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/dialogs/FlagsDialog$a;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/dialogs/FlagsDialog$b;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->c:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

    .line 118
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a()Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070546

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070452

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 59
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->b:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 62
    if-eqz p1, :cond_1

    .line 63
    const-string/jumbo v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->b:Ljava/util/Locale;

    .line 68
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->b:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a;->notifyDataSetChanged()V

    .line 70
    return-object v1

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->b:Ljava/util/Locale;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->d:Z

    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a()Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->b:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a()Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    const-string/jumbo v0, "locale"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->b:Ljava/util/Locale;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    return-void
.end method

.method public show(Landroid/support/v4/app/l;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->d:Z

    if-nez v0, :cond_1

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog;->d:Z

    .line 101
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p1, p2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 104
    instance-of v1, v0, Landroid/support/v4/app/DialogFragment;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
