.class public Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "WhatsNewDialogFragment.java"


# static fields
.field public static final a:Lcom/yelp/android/appdata/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/appdata/b;

    const/4 v1, 0x7

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/b;-><init>(II)V

    sput-object v0, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->a:Lcom/yelp/android/appdata/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;-><init>()V

    return-object v0
.end method

.method protected static a(Lcom/yelp/android/appdata/b;Lcom/yelp/android/appdata/b;Lcom/yelp/android/appdata/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p2}, Lcom/yelp/android/appdata/b;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/b;->a()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/yelp/android/appdata/b;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/b;->b()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 64
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/appdata/b;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/b;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/b;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/b;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    new-instance v1, Lcom/yelp/android/appdata/b;

    invoke-direct {v1, p1}, Lcom/yelp/android/appdata/b;-><init>(Ljava/lang/String;)V

    .line 47
    if-eqz p0, :cond_0

    .line 48
    new-instance v0, Lcom/yelp/android/appdata/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/b;-><init>(Ljava/lang/String;)V

    .line 51
    :cond_0
    sget-object v2, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->a:Lcom/yelp/android/appdata/b;

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->a(Lcom/yelp/android/appdata/b;Lcom/yelp/android/appdata/b;Lcom/yelp/android/appdata/b;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->WhatsNewPrompt:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 100
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->WhatsNewPromptDismiss:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 101
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03020a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment$1;-><init>(Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
