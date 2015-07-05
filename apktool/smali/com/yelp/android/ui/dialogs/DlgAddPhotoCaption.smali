.class public Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;
.super Landroid/support/v4/app/DialogFragment;
.source "DlgAddPhotoCaption.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/content/DialogInterface$OnClickListener;

.field private d:Z

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;-><init>()V

    .line 51
    invoke-static {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Intent;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->e:Ljava/io/File;

    .line 52
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;)Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->e:Ljava/io/File;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/appdata/webrequests/m;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/yelp/android/ui/activities/support/YelpActivity;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gw;",
            ">;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/ui/activities/support/YelpActivity;Z)V

    .line 169
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a()V

    .line 170
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1, p4}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 172
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->d:Z

    .line 125
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/ui/activities/support/YelpActivity;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gw;",
            ">;",
            "Lcom/yelp/android/ui/activities/support/YelpActivity;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/yelp/android/ui/dialogs/u;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/yelp/android/ui/dialogs/u;-><init>(Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;ZLcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 159
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->b:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 62
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    const v0, 0x7f070213

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030097

    invoke-virtual {v0, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 66
    const v0, 0x7f0c0086

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->b:Landroid/widget/CheckBox;

    .line 67
    const v0, 0x7f0c0263

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 68
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->d:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 69
    :goto_0
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->b:Landroid/widget/CheckBox;

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 70
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    const v0, 0x7f0c0262

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a:Landroid/widget/EditText;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 76
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const v0, 0x7f0c0264

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "photo_file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "photo_file_path"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->e:Ljava/io/File;

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->e:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    new-instance v0, Lcom/yelp/android/ui/dialogs/t;

    invoke-direct {v0, p0, v3}, Lcom/yelp/android/ui/dialogs/t;-><init>(Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;Landroid/view/View;)V

    new-array v4, v7, [Ljava/io/File;

    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->e:Ljava/io/File;

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/dialogs/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    :cond_2
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 110
    const v0, 0x7f07041d

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    const/high16 v0, 0x1040000

    invoke-virtual {v2, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 68
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 119
    const-string/jumbo v0, "photo_file_path"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method
