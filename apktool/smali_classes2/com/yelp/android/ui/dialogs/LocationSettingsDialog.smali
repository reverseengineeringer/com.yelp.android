.class public Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "LocationSettingsDialog.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/yelp/android/ui/activities/support/b$e;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->d:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog$2;-><init>(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->e:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message_res"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a:Z

    if-eqz v0, :cond_1

    .line 87
    const v0, 0x7f070427

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    const v0, 0x7f0706c1

    goto :goto_0
.end method

.method public static a(ZI)Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string/jumbo v2, "allow_manual"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    const-string/jumbo v2, "message_res"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->b()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)Lcom/yelp/android/ui/activities/support/b$e;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c:Lcom/yelp/android/ui/activities/support/b$e;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 117
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "Trying to open the location settings but they don\'t exist!"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070382

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070383

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c:Lcom/yelp/android/ui/activities/support/b$e;

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->b:Z

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c:Lcom/yelp/android/ui/activities/support/b$e;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/support/b$e;->b()V

    .line 142
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->d()V

    .line 147
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->dismiss()V

    .line 148
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c:Lcom/yelp/android/ui/activities/support/b$e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/support/b$e;->a(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/support/b$e;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c:Lcom/yelp/android/ui/activities/support/b$e;

    .line 43
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    const/16 v0, 0x405

    if-ne p1, v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c()V

    .line 135
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 47
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "allow_manual"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a:Z

    .line 53
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a:Z

    if-eqz v0, :cond_0

    .line 54
    const v0, 0x7f070296

    .line 58
    :goto_0
    const v2, 0x7f07045b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    const v0, 0x7f070382

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    const/high16 v0, 0x1040000

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c:Lcom/yelp/android/ui/activities/support/b$e;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->b:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c:Lcom/yelp/android/ui/activities/support/b$e;

    iget-boolean v1, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a:Z

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/support/b$e;->a(Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 71
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method
